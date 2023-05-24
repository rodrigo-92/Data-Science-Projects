import pandas as pd
import joblib
from datetime import datetime

def run(X):
    model = joblib.load('models/rf_nestimators_50_maxdepth_12_minsamplessplit_15.bin')
    label_encoder = joblib.load('models/label_encoder.bin')
    
    y_preds = pd.DataFrame(model.predict(X), index=X.index, columns=['encoded_prediction'])
    y_preds['prediction'] = label_encoder.inverse_transform(y_preds.encoded_prediction)

    y_preds.drop(columns=['encoded_prediction'], inplace=True)

    return y_preds