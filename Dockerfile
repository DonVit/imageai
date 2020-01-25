# docker build -t ubuntu1604py36
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get -qq -y install curl
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get update && apt-get install -y software-properties-common vim 
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y build-essential python3.6 python3-pip python3.6-venv

# update pip
RUN python3.6 -m pip install --upgrade pip
RUN python3.6 -m pip install wheel

# install imageai
RUN pip3 install --upgrade tensorflow
RUN pip3 install opencv-python
RUN pip3 install keras
RUN pip3 install imageai --upgrade

# Download artifacts 

RUN wget https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/resnet50_weights_tf_dim_ordering_tf_kernels.h5
RUN mv resnet50_weights_tf_dim_ordering_tf_kernels.h5 ~

#Copy scripts and data files

COPY car.jpg /root
COPY imageprediction.py /root
COPY imageobjects.py /root