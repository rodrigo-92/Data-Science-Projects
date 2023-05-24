import pandas as pd

from flask import Flask, jsonify

from features import build_features
from models import predict_model

app = Flask(__name__)

@app.route('/predict', methods = ['POST'])
def predict():

    df = pd.read_csv('data/train.csv')
    df = df.set_index('uid')

    X = build_features.run(df)

    predictions = predict_model.run(X)

    result =  [{'uid': uid, 'princeRange': row['prediction']} for uid, row in predictions.iterrows()]

    return jsonify(result), 200

if __name__ == '__main__':
    app.run(host="localhost", port=1818, debug=True)