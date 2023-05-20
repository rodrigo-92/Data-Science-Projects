
## **Challenge**
**Create a machine-learning model that predicts the** **price range** of a property based on the information available. The data set contains 1000 rows (1 row for each property). After training, model was deployed into a REST API function.** This function was used to score new data points on demand. In this case, training data was used to test the function.
In this section you'll find:
- The notebook used to train and tune the model
- The function developed for scoring new data points

## **Data Structure**

We have 1,000 rows of data about properties. The fields we are using are:

- Uid - Property ID
- city - City where the property is located
- description - Free text description of the property
- homeType - Property type
- latitude - Latitude of the property’s location
- longitude - Longitude of the property’s location
- garageSpaces - number of garage spaces
- hasSpa - Boolean. True if the property has a spa
- yearBuilt - the year when the property was built
- numOfPatioAndPorchFeatures - number of porches and patios
- lotSizeSqFt - Lot Size in squared feet
- avgSchoolRating - average school district rating
- MedianStudentsPerTeacher - median students per teacher in the school district
- numOfBathrooms - number of bathrooms
- numOfBedrooms - number of bedrooms
- priceRange - property price range

### Acceptance Criteria

1. Code should be readable and easy to run
2. Include all other artifacts used for the challenge
3. Test the model and calculate accuracy metrics