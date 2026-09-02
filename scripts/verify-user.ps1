$user = "tmoyo"

Write-Host "=== Active Directory User Verification ==="

Get-ADUser $user -Properties EmployeeID,Department,Title,Enabled |
Select-Object SamAccountName,Name,EmployeeID,Department,Title,Enabled

Write-Host "`n=== Group Membership Verification ==="

Get-ADPrincipalGroupMembership $user |
Select-Object Name