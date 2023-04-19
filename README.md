# <ins>Project 4 Real Estate Regression</ins>

![image](https://user-images.githubusercontent.com/116304118/233195721-96264cdc-338f-4f96-bca5-274172b79ed1.png)


![image](https://user-images.githubusercontent.com/116105684/233199018-80ed6469-4550-45e4-b343-c4ad9c9fca17.png)




DATA SOURCES
https://www.kaggle.com/datasets/syuzai/perth-house-prices


Over view

We are looking to create a regression model to predict the price of houses based on given features.
This map shows the sale prices of houses. We could see that the houses are more expensive in certain areas.

![image](https://user-images.githubusercontent.com/116105684/233200524-1b848211-b32b-435f-8810-25e770217e1e.png)


EDA![image](https://user-images.githubusercontent.com/116105684/233201116-81ec493d-7f1a-432c-8ac5-0de8c6f89e0f.png)

These graph show the spread of the data  in our numerical columns.
We do experience a large spread of results in columns such as garages (max - 99).
We also experience a large spread in house prices, most common is around $480,000 and max is nearly $2,500,000
![image](https://user-images.githubusercontent.com/116105684/233201166-27815701-f267-4074-a93b-2cf016981284.png)



![image](https://user-images.githubusercontent.com/116105684/233201210-8478d3e9-fc18-4963-856b-34bd6441755e.png)



EDA![image](https://user-images.githubusercontent.com/116105684/233201358-da346ce3-956f-415a-af28-6b1cbcb802d0.png)

This Graph shows the correlation between the variables.
The highest correlated features with the price is floor area, nearest school rank, bathrooms, CBD distance
![image](https://user-images.githubusercontent.com/116105684/233201406-b3148335-9638-40f7-9bf6-6d5ac3749df1.png)


![image](https://user-images.githubusercontent.com/116105684/233201442-e3b5321d-302b-465e-9d6a-658c2d748c94.png)



EDA - Outliers![image](https://user-images.githubusercontent.com/116105684/233201476-caec9774-79d3-46b3-ade7-f3ad6652be9d.png)


We experience outliers in our dataset. We have data on a variety of houses with houses over $1 million.
We also observed extreme values in the garage category which we have dropped in the data cleaning process 
![image](https://user-images.githubusercontent.com/116105684/233201625-cf4d13fe-6359-405e-a7f7-721b24412ff5.png)



![image](https://user-images.githubusercontent.com/116105684/233201745-2eaee33f-c7e0-48f1-9726-7b18a17d1e3c.png)
![image](https://user-images.githubusercontent.com/116105684/233201802-94baa90e-05be-412f-954b-fdd2ad34a1bf.png)
![image](https://user-images.githubusercontent.com/116105684/233201828-60057a2f-572f-478a-b41d-49a939399616.png)






Data Cleaning![image](https://user-images.githubusercontent.com/116105684/233202165-5bbbb5a5-593c-4274-9b72-b55b0f0c3e7d.png)


As mentioned previously we have dropped the rows with houses with more than 9 garage units.
We have experience null values in the dataset in the garage, build year, and nearest school rank columns. In this approach we replaced the missing values with the mode so that we could keep the data.
We swapped the year built column with the age of the property
We had to change the column types for a few different columns 
We have extracted the date from date_sold and replaced it with month_sold and year_sold
![image](https://user-images.githubusercontent.com/116105684/233203697-86cfffcb-bddf-4af7-adb9-4040b01f0261.png)


![image](https://user-images.githubusercontent.com/116105684/233203730-941524fe-229d-4785-b053-0ede2128acc0.png)
![image](https://user-images.githubusercontent.com/116105684/233203755-751ea6b3-56f3-4954-8af3-4f7978cd0b94.png)


