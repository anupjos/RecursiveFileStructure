## Solution to 3rd question

Why this solution is better than other ones available elsewhere?

Based on the research I did, there were solutions that used complicated logic to read and write into the database. One of the solution that I found had a logic to prefix the tab spaces with numbers which adds more complexity to parse through the file structure. It also adds extra lines of code to retrive the file structure as each prefixed number needs to be broken down to get the parent IDs. Another solution I found was adding the file path directly into the database column which is not the original requirement. 
My solution is simple and concise. It creates the database records using just one while loop which is easier to read, trace and maintain. The parent_id column helps in parsing through the file structure easily and hence the path can be obtained using one query. This solution also reduces the number of database calls to retrieve the paths for the search functionality.
