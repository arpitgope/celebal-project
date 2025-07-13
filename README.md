#  File System Size Calculator

##  Project Summary
This SQL project calculates the total size of each folder in a file system, including all nested files and subfolders.

##  Table: FileSystem

| Column     | Description                            |
|------------|----------------------------------------|
| NodeID     | Unique ID for each node (file/folder) |
| NodeName   | Name of file or folder                |
| ParentID   | Folder it is inside (NULL = root)     |
| SizeBytes  | File size in bytes (NULL = folder)    |

##  SQL Logic
Uses a Recursive CTE in SQL Server to sum up all file sizes for each folder recursively.

##  Sample Output

| NodeID | NodeName     | sizeBytes |
|--------|--------------|-----------|
| 1      | Documents    | 1550      |
| 2      | Pictures     | 1450      |
| ...    | ...          | ...       |

##  Files in This Project
- `FileSystem_Schema.sql`: Creates the table
- `FileSystem_Data.sql`: Inserts sample data
- `FileSystem_Query.sql`: Recursive folder size query
- `Sample_Output.csv`: Final output
