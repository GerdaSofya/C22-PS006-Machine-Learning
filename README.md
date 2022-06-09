# C22-PS006-Machine-Learning / BUSAHA

# Table of contents
* [General info](#general-info)
* [Prerequisites](#prerequisites)
* [Technologies version](#technologies-version)
* [Models](#models)
* [Contact](#contact)


# General info
This is the machine learning part of our project BUSAHA which stand for "Buka dan Buat Usaha", BUSAHA will help people to identify which business is suitable for them through machine learning. 
This app might be able to predict the most likely business idea to succeed by looking at multiple variables such as store location, market, fund, and other factors that the user needs to fill.

This project using [Neural Network](https://en.wikipedia.org/wiki/Neural_network) model using [Tensorflow](https://www.tensorflow.org/), so far we've achieve 90% of training accuracy and 100% validation accuracy. The dataset contains 130+ samples with 17 classes and 20+ features. For spliting data and convert string data into numbering per classes/category we are using [Pandas](https://pandas.pydata.org/) and we using l2 normalization using [Scikit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.normalize.html), also for the model we are using sequential model from [Keras](https://keras.io/api/models/sequential/) API. The model saved in h5 format and [TFLite](https://www.tensorflow.org/lite) format, in case you want to deploy ML model into devices you can use TFLite model.

# Prerequisites
Here are the technologies you should install if you are using Jupyter-notebook. If you're using Google Colab you don't need to install it just import the libraries
* Python : You can access this link to install [python](https://www.python.org/downloads/) and using [pip](https://pypi.org/project/pip/) for installing  packages/libraries 
* Tensorflow : 
  ```bash
  pip install tensorflow
* numPy : 
  ```bash
  pip install numpy
* Pandas : 
  ```bash
  pip install pandas
* Scikit - learn : 
  ```bash 
  pip install scikit-learn 
* Keras : 
  ```bash
  pip install keras
# Technologies version
* Python version : 3.6
* numPy version : 1.21.6
* Pandas version : 1.3.5
* Tensorflow version : 2.8.0
* Scikit - learn version : 1.0.2

# Models
* Neural Network 
* Random Forest Decision Tree
* K Nearest Neighbor
  
# Contact
For further information you can contact to :
- husain.ibn.hasan@gmail.com (Ahmad Rusyadi)
- danieladitya38@gmail.com (Daniel Aditya)
- reza.saifuddin51@gmail.com (Reza Saifuddin)
