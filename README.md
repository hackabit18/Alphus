# Alphus
Detection of potholes using Image Processing, IR Sensor and ESP8266

PoHoDePre module consists of a infrared sensor, a flex sensor, a microcontroller and image processing using opencv. The module will be attached near the rear wheels of every four-wheeler vehicle. The infrared sensor shall keep sensing the distance between the road and the module. The data will be nearly constant except when the vehicle encounters with a pothole. In such case, there will be significant error in data in comparison to the average data when the car moves smoothly over plane road. The sensor data will be stored in database by means of the microcontroller. The flex sensor will detects potholes during divergence. Now for the time when the vehicle is moving straight, the data from infrared sensor will be taken and for every abnormal data indicating presence of potholes, the route will be searched in the map using ESP8266 and Geolocation API, and the location of the map will be stored in database to be conveyed to the municipality for checking and covering the potholes. Since many vehicles shall have the same module, the data maybe verified too. Image processing is also used to detect the filled potholes especially during rainy seasons.

This whole project is divided into three main parts namely:


1)IR Sensor and Flex Sensor

2)Image processing using OpenCV

3)ESP8266 and Location Tracking


