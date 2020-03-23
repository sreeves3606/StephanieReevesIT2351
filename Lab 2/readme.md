**#IT2351#**
**##Stephanie Reeves##**

##Topic##
A boutique wellness clinic

##Scope##
All of the major components of the business will be housed in the database and will employ the following security protocols:
  - Tight user privileges;
  - Database server will be separate from the business web server;
  - Strong data encryption.

##List of Fields##
##Customers##
CustomerID
Company Name
ContactName
ContactTitle
Address
City
Region
PostalCode
Country
Phone
Fax
Email

##Employees##
EmployeeID
LastName
FirstName
Title
TitleOfCountry
BirthDate
HireDate
Address
City
Region
PostalCode
Country
HomePhone
Extension
Photo
Notes

##OrderDetails##
ID
OrderID
ProductID
UnitPrice
Quantity
Discount

##Orders##
OrderID
CustomerID
EmployeeID
OrderDate
RequiredDate
ShipDate
ShipVia
Freight
ShipName
ShipAddress
ShipCity
ShipRegion
ShipPostalCode
ShipCountry

##Products##
ProductID
ProductName
SupplierID
CategoryID
QuantityPerUnit
UnitPrice
UnitsInStock
UnitsOnOrder
ReorderLevel
Discountinued

##Categories##
CategoryID
CategoryName
Description
Photo

##Shippers##
ShipperID
CompanyName
Phone

##Suppliers##
SupplierID
CompanyName
ContactName
ContactTitle
Address
City
Region
PostalCode
Country
Phone
Fax
HomePage

##TherapySessions##
TherapyID
TherapyName
PractionerID
CustomerID
Diagnosis
Session_Length
TherapyPackageCode

##Practitioners##
PractitionerID
TherapyID
LastName
FirstName
Address
City
Region
PostalCode
Phone
SpecialityID

##Marketing##
MarketingID
MarketingType
MarketingAmount
MarketingCompany
Address
City
Region
PostalCode
Country
Phone
Email
Fax




