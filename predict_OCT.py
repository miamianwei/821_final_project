import tensorflow as tf
import tensorflow_addons as tfa
from tensorflow.keras.preprocessing.image import ImageDataGenerator, load_img
from keras.models import load_model
from PIL import Image
from keras.preprocessing import image
from keras.applications.vgg19 import preprocess_input
 

def process_image(image_input):
    """Process the input image and convert it into numpy array."""

    if not isinstance(image_input, str):
        raise ValueError("The input image_path is not a str.")
    img = image.load_img(image_input, target_size=(224, 224))
    img = preprocess_input(np.array(img))    
    img = img.reshape(1,224,224,3)
    return img
    
def predict(image_path, model_type):
    '''Predict class of input picture and return the probability.'''

    if not isinstance(image_path, str):
        raise ValueError("The input image_path is not a str.")
    if model_type not in ['vgg16', 'vgg19']:
        raise ValueError("model_type should be 'vgg16' or 'vgg19'.")
    if model_type == 'vgg16':
        model_input = load_model('/content/drive/MyDrive/vgg16_model/vgg16_model')
    if model_type == 'vgg19':
        model_input = load_model('/content/drive/MyDrive/vgg19_model/vgg19_model')
    img = process_image(image_path)
    model = model_input
    result = model.predict(img)
    result = result.tolist()[0]
    pred_prob = max(result)
    pred_index = result.index(max(result))
    outcome = ['CNV', 'DME', 'DRUSEN', 'NORMAL']
    pred_type = outcome[pred_index]
    return(pred_type,pred_prob)
