import os
import uuid
import flask
import urllib
import numpy as np
from PIL import Image
import tensorflow as tf
from tensorflow.keras.models import load_model
from flask import Flask, render_template, request, send_file
from tensorflow.keras.preprocessing.image import load_img, img_to_array
from flask import Flask, render_template, request
from keras.models import load_model
from keras.preprocessing import image
import sqlite3

app = Flask(__name__)

class_names = ['Agaricus Bisporus', 'Aleuria Aurantia', 'Amanita Bisporigera', 'Amanita Fulva', 'Amanita Muscaria', 
	       'Boletus Edulis', 'Cortinarius Orellanus', 'Gyromitra Esculenta', 'Laetiporus Sulphureus', 
	       'Leccinum Scabrum', 'Morchella Esculenta', 'Omphalotus Olearius', 'Russula Mariae']

model = load_model('models\\custom_model.h5')

def predict_label(img_path):
    img = image.load_img(img_path, target_size=(180, 180))
    img_array = tf.keras.utils.img_to_array(img)
    img_array = tf.expand_dims(img_array, 0) 
    prediction = model.predict(img_array)
    class_index = np.argmax(prediction)
    predicted_class = class_names[class_index]
    return predicted_class


conn = sqlite3.connect('database\\mushroom_new.db', check_same_thread=False)
cursor = conn.cursor()

def get_from_db(mushroom_name):

	results = cursor.execute('select type, description from mushroom where name = "{}"'.format(mushroom_name))
	output = results.fetchone()
	edible_type, description = output

	if edible_type == 1:
		edible_status = "Edible"
	else:
		edible_status = "Non-edible"
	return edible_status  , description

	

@app.route("/", methods=['GET', 'POST'])
def main():
	return render_template("index.html")

@app.route("/submit", methods = ['GET', 'POST'])
def get_output():
	if request.method == 'POST':
		img = request.files['my_image']
		img_path = "static/" + img.filename	
		img.save(img_path)
		p = predict_label(img_path)
		edible_status, description = get_from_db(p)
		print(edible_status, description)
		
	return render_template("index.html", prediction = p, img_path = img_path, edible_status = edible_status,description=description)

if __name__ =='__main__':
	#app.debug = True
	app.run(debug = True, port=8090)