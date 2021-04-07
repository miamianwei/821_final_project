# BIOSTAT 821 final proposal 
*Huimin Wang, Mian Wei, & Yiyuan Yao*

We would like to use the Retinal OCT Images (optical coherence tomography) dataset from KAGGLE (https://www.kaggle.com/paultimothymooney/kermany2018) to do a medical image-processing library.

Retinal optical coherence tomography (OCT) is an imaging technique used to capture high-resolution cross sections of the retinas of living patients. This Kaggle dataset contains 84,495 X-Ray images labeled with 4 categories: NORMAL, CNV, DME, and DRUSEN. The dataset already been divided into train set, test set, and validation set. Some examples are shown below:

[Example of retinal OCT image](https://github.com/miamianwei/821_final_project/blob/main/example.png)

The tasks of this project include:
1. EDA (Yiyuan)
* Conduct exploratory data analysis. Analyze data set to summarize the main characteristics.
2. Data pre-processing (Huimin)
* Matplotlib, PyTorch, Numpy and Torchvision will be used to Pre-process the data. 
3. Creating classification mode 
* Load the pre-trained network(Mian)
* Use ReLU as the activation function and define a new untrained feedforward network as the classifier(Yiyuan)
* Use backpropagation to train the classifier layer and use the pre-trained network to acquire features(Huimin)
4. Model evaluation (Mian)
* Track the loss and accuracy of the validation set to determine the best hyperparameters.
5. Building predict function (Yiyuan & Huimin & Mian)
* create a predict function that can predict the label of an input image.
