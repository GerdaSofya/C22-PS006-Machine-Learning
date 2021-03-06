# -*- coding: utf-8 -*-
"""Busaha-TensorFlow Decision Tree Model.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1gp41HWzRAWRsd9MXqoFs43GziJgX34xD

INSTALL TENSORFLOW-DECISION FOREST
"""

!pip install tensorflow_decision_forests -q
!pip install wurlitzer -q

"""IMPORT LIBRARIES NEEDED"""

import tensorflow_decision_forests as tfdf

import os
import numpy as np
import pandas as pd
import tensorflow as tf
import math

try:
  from wurlitzer import sys_pipes
except:
  from colabtools.googlelog import CaptureLog as sys_pipes

from IPython.core.magic import register_line_magic
from IPython.display import Javascript

"""DOWNLOAD DATASET"""

!gdown 1dz0_0AsxbyNTJUQGWX0ZjTLcPZMfEYS7
df = pd.read_csv('/content/Busaha_Dataset.csv')
df.head()

print(df.shape, df.info())

"""DROP UNNECESSARY COLUMNS"""

df = df.drop(columns=['Unnamed: 0','Modal','tingkat_persaingan','jumlah_pegawai','omset',
                      'target_pasar','lokasi','hewan_ternak','hewan_ternak_sub','lokasi_geografis',
                      'mengerti_hewan','luas_lahan','usaha_kuliner','tipe_usaha_kuliner','kemampuan_masak',
                      'barang_dropship','penyimpanan_barang','biaya_internet','sosial_media','barang_toserba',
                      'toko_toserba','tipe_toko','usaha_lain','tipe_usaha_lain'])

"""LABELING AND MAPPING CLASSES"""

label = "jenis_usaha"

classes = df[label].unique().tolist()
print(f"Label classes: {classes}")

df[label] = df[label].map(classes.index)

"""SPLIT THE DATASET INTO TRAINING AND TESTING"""

training_data = df.sample(frac=0.8, random_state=25)
testing_data = df.drop(training_data.index)

print(f"No. of training examples: {training_data.shape[0]}")
print(f"No. of testing examples: {testing_data.shape[0]}")

"""CONVERT INTO TENSORFLOW DATASET"""

train_ds = tfdf.keras.pd_dataframe_to_tf_dataset(training_data, label=label)
test_ds = tfdf.keras.pd_dataframe_to_tf_dataset(testing_data, label=label)

"""TRAINING THE RANDOMFOREST MODEL WITH GRADIENTBOOSTEDTREESMODEL"""

model = tfdf.keras.GradientBoostedTreesModel(num_trees=1000)
   
model.compile(metrics=["accuracy"])

model.fit(x=train_ds, validation_data=test_ds)

evaluation = model.evaluate(test_ds, return_dict=True)
print(evaluation)

for name, value in evaluation.items():
  print(f"{name}: {value:.4f}")

"""SAVE THE MODEL"""

model.save("/content/model")

"""LOAD MODEL"""

new_model = tf.keras.models.load_model('/content/model')

tfdf.model_plotter.plot_model_in_colab(new_model, tree_idx=0, max_depth=3)

"""IN TFDF FROM LOAD MODEL YOU MUST DECLARE AND CONVERT THE DATASET INTO TFDS

TESTING PREDICTION
"""

pred = new_model.predict(test_ds)
np.argmax(pred, axis=1)

df_ds=tfdf.keras.pd_dataframe_to_tf_dataset(df, label=label)

prediction = new_model.predict(df_ds)

armax = np.argmax(prediction, axis = 1)
print(armax)

np.testing.assert_allclose(
    model.predict(test_ds), new_model.predict(test_ds)
)

"""UNFORTUNATELY IN TFDF WE MUST TRAIN THE LOADED MODEL AGAIN TO PREDICT THE CLASSES IF WE USE NEW INPUT DATA """

new_model = tfdf.keras.GradientBoostedTreesModel()
new_model.fit(x = train_ds)

fitur = [25000000, 100000000, 1, 2, 50000000,0,1,1,1,0,0,0,0,0,0, 0,0,0,0,0,1]
dfx=pd.DataFrame (columns=["modal_minimum",
                          "modal_maximum", 
                          "tingkat_persaingan_idx", 
                          "pegawai_minimum", 
                          "omset_minimum",
                          "tp_b","tp_m","tp_a",
                          "lokasi_idx",
                          "hewan_ternak_idx",
                          "lokasi_geografis_idx",
                          "mengerti_hewan_idx",
                          "lahan_minimum",
                          "tipe_usaha_kuliner_idx",
                          "kemampuan_masak_idx",
                          "penyimpanan_barang_idx",
                          "internet_minimum",
                          "sosial_media_idx",
                          "toko_toserba_idx",
                          "tipe_toko_idx",
                          "tipe_usaha_lain_idx"])
dfx.loc[len(df)] = fitur
df_ds1=tfdf.keras.pd_dataframe_to_tf_dataset(dfx)
prediction = new_model.predict(df_ds1)
indextion = np.argsort((-prediction), axis = 1)[0,:3]
less_indextion = np.argsort((prediction), axis = 1)[0,:3]
top1, top2, top3 = indextion
less1, less2, less3 = less_indextion
indextion0 = np.argsort((-prediction), axis = 1)[0]
indextion1 = np.argmax(prediction, axis = 1)
indextion2 = np.argmin(prediction)
print(f"top 3 prediksi adalah : {indextion}")
print(f"keseluruhan prediksi adalah : {indextion0}")
print(f"prediksi paling mendekati adalah : {indextion1}")
print(f"prediksi paling tidak mendekati adalah : {indextion2}")
print(f"label top 3 prediksi adalah : {classes[top1]}, {classes[top2]}, {classes[top3]}")
print(f"label less 3 prediksi adalah : {classes[less1]}, {classes[less2]}, {classes[less3]}")

fitur = [100000, 25000000, 1, 2, 10000000,1,1,0,0,0,0,0,0,1,1, 0,0,0,0,0,0]
dfx=pd.DataFrame (columns=["modal_minimum",
                          "modal_maximum", 
                          "tingkat_persaingan_idx", 
                          "pegawai_minimum", 
                          "omset_minimum",
                          "tp_b","tp_m","tp_a",
                          "lokasi_idx",
                          "hewan_ternak_idx",
                          "lokasi_geografis_idx",
                          "mengerti_hewan_idx",
                          "lahan_minimum",
                          "tipe_usaha_kuliner_idx",
                          "kemampuan_masak_idx",
                          "penyimpanan_barang_idx",
                          "internet_minimum",
                          "sosial_media_idx",
                          "toko_toserba_idx",
                          "tipe_toko_idx",
                          "tipe_usaha_lain_idx"])
dfx.loc[len(df)] = fitur
df_ds1=tfdf.keras.pd_dataframe_to_tf_dataset(dfx)

prediction = new_model.predict(df_ds1)
indextion = np.argsort((-prediction), axis = 1)[0,:3]
top1, top2, top3 = indextion
indextion0 = np.argsort((-prediction), axis = 1)[0]
indextion1 = np.argmax(prediction, axis = 1)
indextion2 = np.argmin(prediction)
print(f"top 3 prediksi adalah : {indextion}")
print(f"keseluruhan prediksi adalah : {indextion0}")
print(f"prediksi paling mendekati adalah : {indextion1}")
print(f"prediksi paling tidak mendekati adalah : {indextion2}")
print(f"label top 3 prediksi adalah : {classes[top1]}, {classes[top2]}, {classes[top3]}")

!zip -r /content/TFDF_model.zip /content/model
from google.colab import files
files.download("/content/TFDF_model.zip")