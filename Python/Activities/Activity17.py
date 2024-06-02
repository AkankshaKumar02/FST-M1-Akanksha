# Import pandas
import pandas

# Create a Dictionary that will hold our data
data = {
    "Usernames": ["admin", "Charles", "Deku"],
    "Passwords": ["password", "Charl13", "AllMight"]
}

# Create a DataFrame using that data
dataframe = pandas.DataFrame(data)

# Print the DataFrame
print(dataframe)

dataframe.to_csv("C:/Users/002YZN744/IdeaProjects/FST_Python/sample.csv", index=False)