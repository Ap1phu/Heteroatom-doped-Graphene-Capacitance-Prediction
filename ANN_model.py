# -*- coding: utf-8 -*-
"""ANN model

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1CCUuaoaeRD2r7ZAeFmymX7HsnhpvbC_T

## Import Relevant Libraries
"""

import numpy as np
import pandas as pd
import tensorflow as tf
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import KFold
import seaborn as sns
from sklearn.metrics import r2_score,mean_squared_error

"""## Import Data"""

raw_csv_data_pd = pd.read_csv(".../Shuffled_raw_data.csv")
raw_csv_data = raw_csv_data_pd.to_numpy()
shuffled_inputs = raw_csv_data[:,0:-1]
shuffled_targets = raw_csv_data[:,-1]
print("The input data are in dimension",shuffled_inputs.shape)
print("The output data are in dimension",shuffled_targets.shape)

"""##Hold out test set (split train and test)

"""

samples_count = shuffled_inputs.shape[0]
train_samples_count = int(0.9 * samples_count)
train_inputs = shuffled_inputs[:train_samples_count]
train_targets = shuffled_targets[:train_samples_count]
test_inputs = shuffled_inputs[train_samples_count:]
test_targets = shuffled_targets[train_samples_count:]
print("The train_input data are in dimension",train_inputs.shape)
print("The test_input data are in dimension",test_inputs.shape)

"""##Scaler+PCA"""

def preprocess(train,validation,test):  #Include standardization and PCA
  scaler=StandardScaler()
  scaler.fit(train)
  scaled_train_inputs=scaler.transform(train)
  scaled_validation_inputs=scaler.transform(validation)
  scaled_test_inputs=scaler.transform(test)
  X,Y,Z = pca_scale(scaled_train_inputs,scaled_validation_inputs,scaled_test_inputs)
  return X,Y,Z

def pca_scale(train,validation,test):
  pca=PCA(n_components = 9)
  reduced_train_inputs=pca.fit_transform(train)
  reduced_validation_inputs=pca.transform(validation)
  reduced_test_inputs=pca.transform(test)
  return reduced_train_inputs,reduced_validation_inputs,reduced_test_inputs

"""##ANN+Cross Validation"""

def perform(train_val_acc,pred_train,pred_test):
  print("R-square on train is",train_val_acc[:,0])
  print("R-square on validation is",train_val_acc[:,1])
  print("RMSE on train is", (1-train_val_acc[:,0])*TSS[:,0])
  print("RMSE on validation is", (1-train_val_acc[:,1])*TSS[:,1])
  print("Average R-square on train is",np.mean(train_val_acc,axis=0)[0],"Average R-square on validation is",np.mean(train_val_acc,axis=0)[1])
  print("R-square on test set is",r2_score(test_targets,np.mean(pred_test,axis=1)))
  print("RMSE on test set is", mean_squared_error(test_targets,np.mean(pred_test,axis=1)))
  plt.scatter(np.squeeze(np.mean(pred_train,axis=1)),np.squeeze(train_targets),s=20)
  plt.scatter(np.squeeze(np.mean(pred_test,axis=1)),np.squeeze(test_targets),c='red',s=20)
  plt.plot(shuffled_targets,shuffled_targets,c='orange')
  plt.xlabel("Predicted value (F/g)", fontsize=18)
  plt.ylabel("Experimental value(F/g)", fontsize=18)
  plt.xlim([0,400])
  plt.ylim([-10,400])
  plt.show()

def PlotLC(Learning_curve):
  loss , val_loss = Learning_curve[:,0] , Learning_curve[:,1]
  indices=np.linspace(1,Learning_curve.shape[0],num=Learning_curve.shape[0])
  plt.plot(indices,loss,c='orange')
  plt.plot(indices,val_loss,c='purple')
  plt.xlabel("Iterations", fontsize=18)
  plt.ylabel("Loss", fontsize=18)
  plt.xlim([0,Learning_curve.shape[0]])
  plt.ylim([0,5000])
  plt.show()

def ANN(X_train,y_train,X_validation,y_validation,X_test,i,Learning_curve):
  #Model
  input_size = 9
  output_size = 1
  hidden_layer_size_1 = 30
  max_epochs = 300
  model = tf.keras.Sequential([
        tf.keras.layers.Dense(hidden_layer_size_1, activation='tanh',kernel_regularizer=tf.keras.regularizers.L2(0.01)), # 1st hidden layer
        tf.keras.layers.Dense(output_size, activation='relu',kernel_regularizer=tf.keras.regularizers.L2(0.01)) # output layer
    ])
  customized_optimizer = tf.keras.optimizers.Adam(learning_rate=0.1)
  model.compile(optimizer=customized_optimizer, loss='mse', metrics=['mean_squared_error'])
  history=model.fit(X_train, # train inputs
            y_train, # train targets
            epochs=max_epochs, # epochs that we will train for
            validation_data=(X_validation, y_validation), # validation data
            verbose = 0 # if want to make sure we get enough information about the training process, 2 is reporting everything
            )
    
  #Predict and Evaluate
  train_val_acc[i,:]=np.array([r2_score(y_train,model.predict(X_train)),r2_score(y_validation,model.predict(X_validation))])
  pred_train[:,i]=model.predict(np.insert(X_train,validation_index[0],X_validation,axis=0)).reshape(-1,)
  pred_test[:,i]=model.predict(X_test).reshape(-1,)

  #Save model
  #filepath = F".../ANN Model/Fold"+str(i)    
  #tf.keras.models.save_model(model,filepath)
  print("Training for fold",str(i+1)+"/10 is completed")
  
  #For Learning Curve
  if np.all(Learning_curve)==0:
    Learning_curve=np.ones((max_epochs,2,k)) #2 for train and val loss
  Learning_curve[:,0,i]=history.history['loss'] 
  Learning_curve[:,1,i]=history.history['val_loss']
  return Learning_curve

#Initiate some arrays
k , i = 10 , 0 
kf = KFold(n_splits=k)
pred_train , pred_test = np.zeros((train_inputs.shape[0],k)) , np.zeros((test_inputs.shape[0],k)) 
train_val_acc , TSS =np.zeros((k,2)) , np.zeros((k,2))

#Split,CV,Preprocess
for train_index, validation_index in kf.split(train_targets):
  X_train, X_validation = train_inputs[train_index], train_inputs[validation_index]
  y_train, y_validation = train_targets[train_index], train_targets[validation_index]
  X_train_prep, X_validation_prep, X_test_prep = preprocess(X_train, X_validation,test_inputs)
  TSS[i,0]=np.mean((y_train-np.mean(y_train))**2)
  TSS[i,1]=np.mean((y_validation-np.mean(y_validation))**2)

  #Model Here
  Learning_curve=ANN(X_train_prep,y_train,X_validation_prep,y_validation,X_test_prep,i,Learning_curve)
  i+=1

#Show Performance
perform(train_val_acc,pred_train,pred_test)
PlotLC(np.mean(Learning_curve,axis=2))