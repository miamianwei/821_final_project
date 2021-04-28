# predict_OCT: A library to predict OCT image
*Huimin Wang, Mian Wei, & Yiyuan Yao*
## About predict_OCT
Retinal optical coherence tomography (OCT) is an imaging technique used to capture high-resolution cross sections of the retinas of living patients. We used a Kaggle dataset (https://www.kaggle.com/paultimothymooney/kermany2018) that contains 84,495 X-Ray images labeled with 4 categories (NORMAL, CNV, DME, and DRUSEN) to train the models. A vgg16 and a vgg19 model were trained and saved. To use this library, please load the models and the predict.py file.

## How to Load Models
the vgg16_model and vgg19_model folders contain trained model using the OCT dataset. Download them and run the prediction function script in the root directory, then the vgg16 and vgg19 models will be loaded and ready to use. You can use them to do classification for the OCT images. 

### VGG_19 Model
In vgg_19.py file, we used the tensorflow keras functions to train the vgg19 model. Two additional convolutional layers and two dense layers were added to the standard vgg19 network for higher accuracy. After 10 epochs training, the accuracy in validation set reaches 0.9491, and the accuracy in test set reaches 0.9855. 

#### Values for VGG-19 based ConvNet  
![Values for VGG-19 based ConvNet.png](https://i.loli.net/2021/04/27/jHRJme538b7VvnI.png)
![Values for VGG-19 based ConvNet2.png](https://i.loli.net/2021/04/27/QquGolnYCtrhyzf.png)

#### VGG-19 model classification  
![heatmap.png](https://i.loli.net/2021/04/27/9FK72SMvcmPf5bs.png)


### VGG_16 Model
In vgg_16.py file, we used the tensorflow keras functions to train the vgg16 model. Two additional convolutional layers and two dense layers were added to the standard vgg16 network for higher accuracy. After 10 epochs training, the accuracy in validation set reaches 0.96, and the accuracy in test set reaches 0.98. 

#### Values for VGG-19 based ConvNet
![Values for VGG-16 based ConvNet.png](https://i.loli.net/2021/04/29/BOmRixDL5HF4n8k.png)
![Values for VGG-16 based ConvNet.png](https://i.loli.net/2021/04/29/gPSKHTs1bfkz7i4.png)

## How to Use Predict Function
### About predict_OCT.py
`predict_OCT.py` contains two functions: `process_image` and `predict`.

`precess_image(image_input)` processes the input image and convert it into numpy array. The input parameter `image_input` should be the file path of the input image.

`predict(image_path, model_type)` predicts the class of input picture and returns the probability. `image_path` should also be the file path of the input image, `model_type` should be either `'vgg16'` or `'vgg19'` since we provide these two types of models to predict the class of the OCT image.

### Example
```python
>>>from predict_OCT import predict
>>>predict("/content/drive/MyDrive/OCT2017/example.jpeg", 'vgg16')
'CNV', 0.98734
