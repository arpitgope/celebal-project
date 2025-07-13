CREATE TABLE FileSystem (
    NodeID INT PRIMARY KEY,
    NodeName VARCHAR(100),
    ParentID INT,
    SizeBytes INT
);
