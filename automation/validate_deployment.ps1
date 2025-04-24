# Simple validation script for post-deployment checks
$connectionString = "Server=tcp:your-db-server.database.windows.net;Initial Catalog=your-db;User ID=admin;Password=yourpassword;"
$query = "SELECT COUNT(*) AS RowCount FROM Employees"

Invoke-Sqlcmd -Query $query -ConnectionString $connectionString | Format-Table
