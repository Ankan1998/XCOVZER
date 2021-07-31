import pandas as pd
import matplotlib.pyplot as plt

def visualization(log_path):

    df = pd.read_csv('log_path')

    plt.figure(figsize=(10,5))
    plt.plot(df['accuracy'],label="acc")
    plt.plot(df['val_accuracy'],label="val_acc")
    plt.legend()

    plt.figure(figsize=(10,5))
    plt.plot(df['loss'],label="loss")
    plt.plot(df['val_loss'],label="val_loss")
    plt.legend()

if __name__=="__main__":
    log_path = ''
    visualization(log_path)