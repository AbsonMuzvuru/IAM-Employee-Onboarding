</> Markdown

# IAM Employee Onboarding Workflow

## Project Overview

This project simulates a real-world Identity and Access Management (IAM) employee onboarding workflow using ServiceNow and Microsoft Active Directory.

The lab follows a new employee from the initial HR onboarding record through access request submission, IAM review, Active Directory account creation, group-based access assignment, verification, documentation, and ticket closure.

The project was designed to demonstrate hands-on experience with identity lifecycle management and common IAM analyst responsibilities rather than simply creating user accounts manually.

## Workflow

HR Intake → ServiceNow Request → IAM Review → Active Directory Provisioning → Group-Based Access → PowerShell Verification → Ticket Closure

### Key IAM Concepts Demonstrated

- Identity lifecycle management (Joiner process)
- Active Directory user provisioning
- ServiceNow request and fulfillment workflows
- Role/group-based access assignment
- Principle of least privilege
- Separation of duties between HR and IAM
- Identity and access verification
- PowerShell administration
- IAM ticket documentation and audit trail


</> Markdown

# IAM Employee Onboarding Workflow


## 1. HR Intake

The onboarding workflow begins with HR recording the new employee's
identity and employment information.

The employee in this scenario is Tafadzwa Moyo, a Financial Analyst
joining the Finance department.

![HR Intake](screenshots/01-hr-intake-tafadzwa.png)

</> Markdown

## 2. ServiceNow Onboarding Request
HR submitted a New Employee Onboarding request through the ServiceNow
Service Catalog.

The request included the employee's identity information, department,
job title, manager, requested access, and business justification.

![ServiceNow Onboarding Request](screenshots/02-servicenow-onboarding-request.png)

</> Markdown

## 3. IAM fulfillment Task

A Catalog Task was created and assigned to the Identity & Access
Management team for fulfillment.

The IAM Analyst reviewed the request before provisioning access.

![IAM Task Assignment](screenshots/06-iam-task-assigned.png)
![IAM Acknowledgement](screenshots/072-acknoledgement.png)

</> Markdown

## 4. Active Directory account creation

The employee account was created in the Finance organizational unit
using the approved identity information from the onboarding request.

Username: `tmoyo`

![Active Directory Account](screenshots/08-ad-account-created.png)

</> Markdown

## 5. Group-Based Access 

Standard Finance access was assigned through the `Finance-Users`
Active Directory security group.

No privileged administrative access was assigned.

![Finance Group Membership](screenshots/10-finance-group-membership.png)


## 6. Identity verification

PowerShell was used to verify the provisioned Active Directory account.

```powershell
Get-ADUser tmoyo -Properties EmployeeID,Department,Title,Enabled |
Select-Object SamAccountName,Name,EmployeeID,Department,Title,Enabled

</> Markdown

## 7. Ticket Closure

After provisioning and verification were completed, the IAM Analyst
documented the actions performed and moved the fulfillment task to
Closed Complete.

![Completed IAM Task](screenshots/15-sctask-closed-complete.png)

## Technologies Used

- ServiceNow PDI

- Windows Server

- Active Directory Domain Services

- Windows 11

- PowerShell

- Excel

- VirtualBox


## Employee Scenario


The lab provisions a new Finance employee:


- **Name:** Tafadzwa Moyo

- **Employee ID:** 1002

- **Department:** Finance

- **Job Title:** Financial Analyst

- **AD Username:** `tmoyo`

- **Security Group:** `Finance-Users`

- **Privileged Access:** None

