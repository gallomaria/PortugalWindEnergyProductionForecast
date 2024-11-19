# Portugal Wind Energy Production Forecast

## Table of Contents
1. [Introduction](#Introduction)
2. [The Data](#The-Data)
3. [The Models](#The-Models)
4. [Repository Structure](#Repository-Stucture)


## Introduction
The global energy landscape is complex and constantly evolving, includng the production, distribution, and use of energy resources. Energy is essential for industry, transportation, and daily life, with sources divided into renewable (inexhaustible) and non-renewable (finite) categories. Renewable sources like solar and wind have gained significant attention, but their production is affected by variable weather conditions, for this reason making accurate forecasting is crucial for optimal resource management. This study focuses on comparing different forecasting models to predict wind energy production in Portugal. By evaluating these models using meteorological data and installed energy capacity, the goal is to identify the most accurate approach for forecasting energy from wind sources.

## The Data
Hourly production data (2015–2022) were sourced from the [ENTSO-E Transparency Platform](https://transparency.entsoe.eu/) and aggregated into daily averages. To enhance predictive accuracy, the analysis includes meteorological variables (wind speed, sea level pressure and temperature) from nine Portuguese cities obtained from [Open-Meteo](https://open-meteo.com/) and annual installed capacity data from the [ENTSO-E Transparency Platform](https://transparency.entsoe.eu/) for wind plants. These elements capture key factors influencing energy production, providing a solid foundation for forecasting models.

## The Models
Model selected for the forecasting:
- SARIMA
- Prophet
- NeuralProphet
- RNN
- GRU
- LSTM

The models will be evaluated and compared using the following performance metrics: Mean Absolute Percentage Error (MAPE), Root Mean Squared Error (RMSE), and Mean Absolute Error (MAE).

## Repository Structure
The [Data folder](./data/) contains the raw data for energy production, installed capacity, and weather conditions. These raw datasets are processed using scripts located in the [data_preparation folder](./data_preparation/), which includes four distinct scripts: three dedicated to processing each data type individually and a fourth for assembling the final dataset structure.

## Prerequisites
