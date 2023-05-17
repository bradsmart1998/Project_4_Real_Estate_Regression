# <ins>Real Estate Regression</ins>

![image](https://user-images.githubusercontent.com/116304118/233195721-96264cdc-338f-4f96-bca5-274172b79ed1.png)

## <ins>Contents</ins>

* [Data Source](#dataset-header)
* [Overview](#overview-header)
* [EDA Process](#eda-header)
* [Data Cleaning](#clean-header)
* [Data Storage](#storage-header)
* [Machine Learning Model](#machine-header)
* [Optimization of the Model](#opt-header)
* [Predicted vs Actuals](#pre-header)
* [What Could We Do Next Time](#next-header)
* [Team](#team-header)


### <a id="dataset-header"></a><ins>Data Source</ins>


We have downloaded data from kaggle. Click [here](https://www.kaggle.com/datasets/syuzai/perth-house-prices) to view the link. 


### <a id="overview-header"></a><ins>Overview</ins>

For our final project, we are looking to create a regression model to predict the price of houses based on given features. 

Tableau was used to create the following map, so we have a better understanding of how our data is distibuted. 
We could see that the houses are more expensive in certain areas, especially those that are near the beach. 

![image](https://user-images.githubusercontent.com/116105684/233200524-1b848211-b32b-435f-8810-25e770217e1e.png)

### <a id="eda-header"></a><ins>EDA Process</ins>

These graphs show the spread of the data in our numerical columns. We do experience a large spread of results in columns such as garages (max - 99).
We also experience a large spread in house prices. Most common prices are around $480,000 and max is nearly $2,500,000. 


![image](https://user-images.githubusercontent.com/116105684/233201210-8478d3e9-fc18-4963-856b-34bd6441755e.png)


The following graph shows the correlation between the variables. The highest correlated features with the price is floor area, nearest school rank, bathrooms, CBD distance.

![image](https://user-images.githubusercontent.com/116304118/233220159-c947124a-b020-49a9-9fb7-37b8d23fd1c7.png)


We did experience outliers in our dataset. We have data on a variety of houses with houses over $1 million. We also observed extreme values in the garage category which we have dropped in the data cleaning process.

![image](https://user-images.githubusercontent.com/116304118/233220375-e2f83147-adbf-4682-bc86-927dbddf9702.png)

![image](https://user-images.githubusercontent.com/116105684/233201802-94baa90e-05be-412f-954b-fdd2ad34a1bf.png)

![image](https://user-images.githubusercontent.com/116105684/233201828-60057a2f-572f-478a-b41d-49a939399616.png)

### <a id="clean-header"></a><ins>Data Cleaning</ins>

As mentioned previously, we have dropped the rows with houses that had more than 9 garage units. We have experienced null values in the dataset in the garage, build year, and nearest school rank columns. To overcome this issue, we replaced the missing values with the mode, so that we could keep most of the data.

We swapped the year built column with the age of the property. We also had to change the column types for a few different columns. In addition, 
we extracted the date from date_sold and replaced it with month_sold and year_sold. 


![image](https://user-images.githubusercontent.com/116105684/233203730-941524fe-229d-4785-b053-0ede2128acc0.png)
![image](https://user-images.githubusercontent.com/116105684/233203755-751ea6b3-56f3-4954-8af3-4f7978cd0b94.png)

Here is a quick snippet of our clean DataFrame. 

![image](https://user-images.githubusercontent.com/116105684/233204505-30b383f0-12b7-4609-bd3c-4943e353a7ad.png)


### <a id="storage-header"></a><ins>Data Storage</ins>

We loaded our data in our database using postgres and our database tool is PGadmin.

![image](https://user-images.githubusercontent.com/116105684/233204622-3efdd444-26bb-4dd6-9976-7e6886760f91.png)


### <a id="machine-header"></a><ins>Machine Learning Model</ins>

We started with a Linear regression model to predict the price of housing. As we had categorical data we used get dummies to convert to numerical data. The target variable is the price and the rest of the columns are the features. We used training data to train the model and then used the testing data to make predictions.

See final scores below:

![image](https://user-images.githubusercontent.com/116105684/233204847-c6670f48-b7bb-4273-a1e6-bb6b84db6730.png)


### <a id="opt-header"></a><ins>Optimization of the Model</ins>

To optimise the data we have dropped columns, and binned some of the categorical details. We have also tested 4 different models to find the best score. We found that random forest regression model was the best with the lowest RMSE score and highest r2 slides.

We also scaled the data using the standard scaler and tested the parameters to see the best combination.

The final optimised results for r2 = 0.84735

Here is an image of the results for all other regression models.

![image](https://user-images.githubusercontent.com/116105684/233204924-e2b2af58-5b49-4b47-a0f5-1c4973ded497.png)
![image](https://user-images.githubusercontent.com/116105684/233204940-7cb429d5-97ec-4ea5-b20e-9b02599c2560.png)
![image](https://user-images.githubusercontent.com/116105684/233204949-8a22e735-6804-4afe-9906-1d2cf4df6f3e.png)



### <a id="pre-header"></a><ins>Predicted vs Actuals</ins>

![image](https://user-images.githubusercontent.com/116105684/233205023-f834b153-a7b5-4827-8488-1537187451dc.png)


### <a id="next-header"></a><ins>What Would We Do Next Time</ins>

* Next time we would like to experiment with the columns, so that we can try and bring down the RMSE score. 
* We would also look into the variance inflation factors to find out which columns affect our scores.
* If we had more more time we would make machine learning models with different segments of data.
* We would also like to trail more parameters to improve the model.
* We had gathered more data using `Geoapify.com`. Data we collected was airports, restaurants, police stations and shopping malls. To view the csv file, please click [here](https://github.com/bradsmart1998/Project_4_Real_Estate_Regression/blob/main/Data/collected_data_api.csv)

### <a id="team-header"></a><ins>Team</ins>
* [Brad Smart](https://github.com/bradsmart1998?tab=repositories)
* [Hardip Jandu](https://github.com/HJandu)
* [Ahmed Abdullahi](https://github.com/Ahmedabdullahi1)

@18th April 2023
