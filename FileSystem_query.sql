WITH FileTree AS (
    -- Start with each node as the root of its own tree
    SELECT 
        NodeID AS RootID,
        NodeID AS CurrentID,
        SizeBytes
    FROM FileSystem

    UNION ALL

    -- Recursively get children
    SELECT
        ft.RootID,
        fs.NodeID,
        fs.SizeBytes
    FROM FileTree ft
    INNER JOIN FileSystem fs ON fs.ParentID = ft.CurrentID
)

-- Final output: sum SizeBytes for each Root folder
SELECT 
    fs.NodeID,
    fs.NodeName,
    SUM(CASE WHEN ft.SizeBytes IS NULL THEN 0 ELSE ft.SizeBytes END) AS sizeBytes
FROM FileTree ft
JOIN FileSystem fs ON ft.RootID = fs.NodeID
GROUP BY fs.NodeID, fs.NodeName
ORDER BY fs.NodeID;
