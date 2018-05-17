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
	cv::Ptr<cv::cuda::HOG> gpu_hog = Algorithm::load<cv::cuda::HOG>(hog_file);
	cpu_hog.load(hog_file);

	ofstream output;
	output.open(output_file);

	vector<String> file_names;
	glob(directory, file_names);

	output << "Starting testing for directory " << directory << endl;
	cuda::GpuMat gpu_image;

	vector<cv::Mat> image_vec;
	vector<cuda::GpuMat> gpu_image_vec;
	int count_images = 0, detected_vehicles = 0;
	for (int i = 0; i < file_names.size(); i++)
	{
		Mat image = imread(file_names[i]);

		if (image.empty())
		{
			//continue
			continue;
		}

		Mat resized_img;
		resize(image, resized_img, Size(64, 64));
		Mat gray_image;
		cvtColor(resized_img, gray_image, COLOR_BGR2GRAY);

		vector<Point> detections;
		vector<Rect> multi_detections;
		vector<double> found_weights;
		if (use_gpu)
		{
			gpu_image.upload(gray_image);
			gpu_hog->detect(gpu_image, detections, &found_weights);
		}
		else
			cpu_hog.detect(gray_image, detections, found_weights);

		detected_vehicles += detections.size() == 0 ? 0 : 1;
		count_images++;
	}

	cout << "Detected " << detected_vehicles << " out of " << count_images << " processed." << endl;
	cout << "HIT RATE: " << (double)detected_vehicles / count_images << endl;

	output.close();
    return 0;
}

