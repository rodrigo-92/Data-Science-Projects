import pandas as pd
import joblib
from datetime import datetime

def run(df):
    important_features = joblib.load('data/important_features.bin')
    df['yearOld'] = datetime.now().year - df['yearBuilt']
    return df[important_features].copy()