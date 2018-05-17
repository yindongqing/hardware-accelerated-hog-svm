#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{
	const char* keys =
	{
		"{help h|       | show help message}"
		"{dir   |       | path of directory containing images to test}"
		"{hog   |       | hog_descriptor used}"
		"{svm   |       | hog_descriptor used}"
		"{out   |out.txt| textfile to write to}"
		"{g     |false  | use gpu}"
	};

	CommandLineParser parser(argc, argv, keys);

	if (argc < 2 || parser.has("help") || parser.has("h") || !parser.has("dir") || !parser.has("hog") || !parser.has("out"))
	{
		//print help
		parser.printMessage();
		exit(0);
	}

	String directory = parser.get<String>("dir");
	String hog_file = parser.get<String>("hog");
	String output_file = parser.get<String>("out");
	bool use_gpu = parser.get<bool>("g");

	cv::HOGDescriptor cpu_hog;
	cv::Ptr<cv::cuda::HOG> gpu_hog = cv::cuda::HOG::create(Size(64,64), Size(16,16), Size(8,8), Size(8,8), 9);
	cpu_hog.load(hog_file);

	std::vector<float> svm_model;
	svm_model = cpu_hog.svmDetector;
	gpu_hog->setSVMDetector(svm_model);


	ofstream output;
	output.open(output_file);

	vector<String> file_names;
	glob(directory, file_names);

	output << "Starting testing for directory " << directory << endl;
	cuda::GpuMat gpu_image;
	int count_images = 0, detected_vehicles = 0;
	double seconds = 0;
	for (int i = 0; i < file_names.size(); i++)
	{
		Mat image = imread(file_names[i]);
		Mat gray_image;
		cvtColor(image, gray_image, COLOR_BGR2GRAY);

		if (image.empty())
		{
			//continue
			continue;
		}

		vector<Point> detections;
		vector<Rect> multi_detections;
		vector<double> found_weights;

		auto start = cv::getTickCount();
		if (use_gpu)
		{
			gpu_image.upload(gray_image);
			gpu_hog->setNumLevels(13);
			gpu_hog->setHitThreshold(0);
			gpu_hog->setWinStride(Size(8,8));
			gpu_hog->setScaleFactor(1.05);
			gpu_hog->setGroupThreshold(8);
			gpu_hog->detectMultiScale(gpu_image, multi_detections);
		}
		else
		{
			cpu_hog.nlevels = 13;
			cpu_hog.detectMultiScale(gray_image, multi_detections, 0, Size(8,8), Size(0,0), 1.05);
		}	
		auto end = cv::getTickCount();

		seconds += end - start;

		//output << "Processing " << file_names[i] << " : ";
		//output << detections.size() << " vehicles found." << endl;
		detected_vehicles += multi_detections.size();
		count_images++;
	}

	seconds /= cv::getTickFrequency();

	cout << "Detected " << detected_vehicles << " out of " << count_images << " images processed." << endl;
	cout << "AVG FPS: " << (double) count_images/seconds << endl;

	output.close();
	return 0;
}

