CREATE PROCEDURE usp_InsertEmployee_v1
  @EmpID INT,
  @EmpName NVARCHAR(100)
AS
BEGIN
  INSERT INTO Employees (EmployeeID, EmployeeName)
  VALUES (@EmpID, @EmpName)
END
