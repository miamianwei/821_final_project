# 821_final_project

Find the data at this website: https://www.kaggle.com/paultimothymooney/kermany2018

###How to use this library:
1. the vgg16_model and vgg19_model folders are trained model using the OCT dataset. Download them and run the prediction function script in the root directory, then the vgg16 and vgg19 models will be loaded and ready to use. You can use them to do classification for the OCT images. 

##VGG_19 Model
In vgg_19.py file, we used the tensorflow keras functions to train the vgg19 model. Two additional convolutional layers and two dense layers were added to the standard vgg19 network for higher accuracy. After 10 epochs training, the accuracy in validation set reaches 0.9491, and the accuracy in test set reaches 0.9855. 

####Values for VGG-19 based ConvNet  
![Values for VGG-19 based ConvNet.png](https://i.loli.net/2021/04/27/jHRJme538b7VvnI.png)
![Values for VGG-19 based ConvNet2.png](https://i.loli.net/2021/04/27/QquGolnYCtrhyzf.png)

####VGG-19 model classification  
![heatmap.png](https://i.loli.net/2021/04/27/9FK72SMvcmPf5bs.png)


###VGG_16 Model
In vgg_16.py file, we used the tensorflow keras functions to train the vgg16 model. Two additional convolutional layers and two dense layers were added to the standard vgg16 network for higher accuracy. After 10 epochs training, the accuracy in validation set reaches 0.96, and the accuracy in test set reaches 0.98. 



##Prediction Function