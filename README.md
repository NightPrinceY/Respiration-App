# Respiration Rate App

This project is a Flask-based web application that processes uploaded video files to detect and calculate respiration rates. The application uses OpenCV for video processing and dlib for face detection.

## Features

- Upload video files for processing
- Detect faces in the video
- Calculate respiration rates based on detected facial movements
- Display results including frames per second (FPS), total number of frames, respiration times, time length, and respiration rate (RR)
and the peaks plot

## Requirements

- Flask==3.0.3
- opencv-python-headless==4.5.3.56
- dlib==19.24.4
- numpy
- scipy
- matplotlib

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/nightprincey/RespirationRateApp.git
    cd RespirationRateApp
    ```

2. Install the required packages:

    ```bash
    pip install -r requirements.txt
    ```

3. Download and install dlib:

    ```bash
    # On Ubuntu or Debian
    sudo apt-get install -y cmake build-essential libgl1-mesa-glx

    # Install dlib using pip
    pip install dlib
    ```

## Usage

1. Run the Flask application:

    ```bash
    flask run app.py
    ```

2. Open your web browser and go to `http://0.0.0.0:5000`.

3. Upload a video file and wait for the processing to complete.

4. The results will be displayed on the web page.

## Docker

You can also run this application using Docker. Follow the steps below:

1. Build the Docker image:

    ```bash
    docker build -t video-respiration-rate-detector .
    ```

2. Run the Docker container:

    ```bash
    docker run -p 5000:5000 video-respiration-rate-detector
    ```

3. Open your web browser and go to `http://0.0.0.0:5000`.


## File Structure

- `app.py`: The main Flask application file
- `templates/index.html`: The HTML file for the web interface
- `requirements.txt`: The Python dependencies required for the project
- `Dockerfile`: The Dockerfile for containerizing the application

## Endpoints

- `GET /`: The main page with the video upload form
- `POST /process_video`: Endpoint to handle the video file upload and process the video


## Acknowledgements

- [dlib](http://dlib.net/)
- [OpenCV](https://opencv.org/)
- [Flask](https://flask.palletsprojects.com/)
- [Docker Hub](https://hub.docker.com/)
- [scipy](https://scipy.org/)
- [Containers Tutorial](https://youtu.be/PrusdhS2lmo?si=pGJPuGcMvShj_RXe)


##  Interface of The app


The interface
![alt text](images\image3.png)

while Uploading

![alt text](<images\image5.png>)


The results

![alt text](<images\image1.png>)

PEAKS
![alt text](<images\image4.png>)


## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Contact

For any questions or inquiries, please contact [yahyaalnwsany39@gmail.com](mailto:yahyaalnwsany39@gmail.com).

- [Likedin](linkedin.com/in/yahya-alnwsany-8b8206238/)
- [Kaggle](https://www.kaggle.com/alnwsany)
