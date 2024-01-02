# Zomato Restaurants Exploratory Data Analysis

## Overview

Welcome to the Zomato Restaurants EDA project! This analysis explores the Zomato Restaurants dataset, uncovering insights into popular cuisines, customer ratings, price ranges, and more.

## Dataset Information

### Zomato Restaurants Dataset
The Zomato Restaurants dataset used in this analysis has been sourced from Kaggle. The dataset provides comprehensive information about various restaurants across different locations.

- **Source:** [Zomato Restaurants Dataset on Kaggle](https://www.kaggle.com/datasets/shrutimehta/zomato-restaurants-data)
  
Below is an overview of the key columns and their meanings:

1. **Restaurant ID:** Unique identifier for each restaurant.
2. **Restaurant Name:** The name of the restaurant.
3. **Country Code:** Code representing the country in which the restaurant is located.
4. **City:** The city where the restaurant is situated.
5. **Address:** The physical address of the restaurant.
6. **Locality:** The specific locality within the city.
7. **Locality Verbose:** A detailed description of the locality.
8. **Longitude and Latitude:** Geographic coordinates of the restaurant's location.
9. **Cuisines:** The types of cuisines offered by the restaurant.
10. **Average Cost for Two:** The average cost for a meal for two people.
11. **Currency:** The currency in which the cost is specified.
12. **Has Table Booking:** Indicates whether the restaurant offers table booking (Yes/No).
13. **Has Online Delivery:** Indicates whether the restaurant provides online delivery services (Yes/No).
14. **Is delivering now:** Indicates whether the restaurant is currently delivering orders (Yes/No).
15. **Switch to order menu:** A menu-switch feature (Yes/No).
16. **Price Range:** A numerical representation of the restaurant's price range.
17. **Aggregate Rating:** The overall rating given to the restaurant.
18. **Rating Color:** Color representation of the rating.
19. **Rating Text:** Descriptive text corresponding to the rating.
20. **Votes:** The number of votes cast by customers.

## Dependencies

This project relies on the following Python libraries. Make sure to install them before running the analysis scripts or Jupyter notebook.

- [pandas](https://pandas.pydata.org/): A powerful data manipulation and analysis library.
- [matplotlib](https://matplotlib.org/): A popular plotting library for creating visualizations.
- [seaborn](https://seaborn.pydata.org/): A statistical data visualization library based on matplotlib.

## Types of Charts Used

This project utilizes various types of charts for effective data visualization:

1. **Countplot:**
   - Visualizing the distribution of categorical data, such as counts of unique values.

2. **Scatterplot:**
   - Displaying the relationship between two continuous variables, revealing patterns or trends.

3. **Pie Chart:**
   - Illustrating the proportion of different categories in a dataset.

4. **Histogram:**
   - Showing the distribution of a single variable, highlighting frequency or density.

5. **Barplot:**
   - Comparing the values of different categories, typically used with categorical data.

## Features

Explore the features of this Zomato Restaurants EDA project that provide valuable insights into the dataset:

1. **Popular Cuisines:**
   - Identify the most sought-after cuisines among restaurants, guiding menu planning and marketing efforts. Predominant cuisines include North Indian, Chinese, and Fast Food.

2. **Table Booking and Online Delivery Services:**
   - Explore the limited adoption of table booking and online delivery services. Opportunities exist to enhance these services, potentially gaining a competitive edge in the market.

3. **Average Rating Distribution:**
   - Analyze the distribution of restaurant ratings, revealing two distinct groups and emphasizing the impact of lower-rated establishments on overall customer satisfaction.

4. **Affordability Range:**
   - Investigate the relationship between restaurant prices and the number of establishments. Identify the importance of offering affordable dining options to attract a wider customer base.

5. **Identification of High-End Restaurants:**
   - Discover the top 10 most expensive restaurants based on the 'Average Cost for Two.' Gain insights into the premium dining landscape for strategic decision-making.

6. **Distribution of Ratings:**
   - Explore the distribution of customer ratings, highlighting a generally positive sentiment but with a higher volume of ratings for lower-rated restaurants. Addressing quality improvement in these establishments is crucial.

7. **Effect of Average Cost on Ratings:**
   - Investigate the lack of a clear correlation between the average cost for two and restaurant ratings. Challenge preconceived notions and recognize the importance of factors beyond pricing in customer experience.

8. **Premium Dining Destinations:**
   - Identify the top 10 cities with the most expensive dining experiences. Guide strategic expansion efforts to focus on these cities and cater to specific market demands.

9. **Price Range and Popularity:**
   - Explore the positive correlation between price range and restaurant popularity, as indicated by customer votes. Understand customer behavior and preferences for better strategic decision-making.

