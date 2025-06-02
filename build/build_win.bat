@echo off
echo Hello %USERNAME%
echo This script will set up the logohunter environment:
echo  - downloading pretrained YOLOv3 weights...

REM Di chuyển đến src\keras_yolo3
cd /d "%~dp0..\src\keras_yolo3"

echo Downloading yolo_weights_logos.h5 into src\keras_yolo3
curl -O https://logohunters3.s3-us-west-2.amazonaws.com/yolo_weights_logos.h5

REM Quay lại src
cd ..

echo Downloading inception_logo_features_200_trunc2.hdf5 into src\
curl -O https://logohunters3.s3-us-west-2.amazonaws.com/inception_logo_features_200_trunc2.hdf5

echo Downloading vgg16_logo_features_128.hdf5 into src\
curl -O https://logohunters3.s3-us-west-2.amazonaws.com/vgg16_logo_features_128.hdf5

echo Done!
pause
