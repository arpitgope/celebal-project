INSERT INTO FileSystem (NodeID, NodeName, ParentID, SizeBytes) VALUES
(1, 'Documents', NULL, NULL),
(2, 'Pictures', NULL, NULL),
(3, 'File1.txt', 1, 500),
(4, 'Folder1', 1, NULL),
(5, 'Image.jpg', 2, 1200),
(6, 'Subfolder1', 4, NULL),
(7, 'File2.txt', 4, 750),
(8, 'File3.txt', 6, 300),
(9, 'Folder2', 2, NULL),
(10, 'File4.txt', 9, 250);
