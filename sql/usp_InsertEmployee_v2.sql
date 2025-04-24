CREATE PROCEDURE usp_InsertEmployee_v2
  @EmpID INT,
  @EmpName NVARCHAR(100),
  @CreatedBy NVARCHAR(100)
AS
BEGIN
  INSERT INTO Employees (EmployeeID, EmployeeName, CreatedBy, CreatedDate)
  VALUES (@EmpID, @EmpName, @CreatedBy, GETDATE())
END
