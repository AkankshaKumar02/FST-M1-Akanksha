# Import pandas
import pandas as pd

# Read the CSV file and store it into a DataFrame
dataframe = pd.read_csv("C:/Users/002YZN744/IdeaProjects/FST_Python/sample.csv")

# Print the full data
print("Full Data: ")
print(dataframe)

# Print the values in the Usernames column only
print("Usernames:")
print(dataframe["Usernames"])

# Print the username and password of the second row
print("Username: ", dataframe["Usernames"][1], " | ", "Password: ", dataframe["Passwords"][1])

#Sort the Usernames column in ascending order
print(dataframe.sort_values('Usernames'))

#Sort the Passwords column in descending order
print(dataframe.sort_values('Passwords', ascending=False))