# ImageAI - Image Processing Sample

This is based on articale from [here](https://imageai.readthedocs.io/en/latest/index.html)

# Environment Setup

Follow steps [here](https://docs.docker.com/get-started/) and setup docker.
Make sure the following command runs `docker --version`
Make sure Docker Desktop runs

## Build Docker machine

From command line run `docker build -t nplmachine .`

## Run Docker machine

On windows run `docker run -it nlpmachine`

## Once you get ubnutu promt run script below to predict objects in image.jpg provided

`cd ~ && python3.6 ~/imageprediction.py`

The output should be like:

```sh
sports_car  :  77.59091258049011
racer  :  13.657523691654205
car_wheel  :  3.805534914135933
grille  :  2.41490937769413
convertible  :  1.820904202759266
beach_wagon  :  0.32742235343903303
passenger_car  :  0.15052934177219868
pickup  :  0.1211930881254375
limousine  :  0.0254535028943792
cab  :  0.024387426674365997
```