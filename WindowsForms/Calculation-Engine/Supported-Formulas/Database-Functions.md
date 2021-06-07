---
layout: post
title: Database Functions in Windows Forms Calculation Engine | Syncfusion
description: Learn about Database Functions support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Database Functions in Windows Forms Calculation Engine (Calculate)



## DCOUNT



Returns the number of cells containing numbers in a field of a list or database that satisfy specified conditions



**Syntax:**



_DCOUNT(database, field, criteria)_



**where:**



* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.



* field  indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.



* criteria denotes the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as the argument includes at least one column label and at least one cell below the column label in which you specify a condition for the column.



## DCOUNTA


Returns the number of non-blank cells in a field of a list or database, that satisfy specified conditions.



**Syntax:**



_DCOUNTA(database, field, criteria)_



**where:**



* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.



* field  indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.



* criteria denotes the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as the argument includes at least one column label and at least one cell below the column label in which you specify a condition for the column.



## DAVERAGE



Calculates the average of values in a field of a list or database, that satisfy specified conditions.



**Syntax:**



_DAVERAGE(database, field, criteria)_



**where:**



* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.



* field  indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.



* criteria denotes the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as the argument includes at least one column label and at least one cell below the column label in which you specify a condition for the column.



## DGET



Returns a single value from a field of a list or database, that satisfy specified conditions.



**Syntax:**



_DGET(database, field, criteria)_



**where:**



* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.



* field  indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.



* criteria denotes the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as the argument includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

## DMAX

Returns the maximum value from a field of a list or database, that satisfy specified conditions

**Syntax:**

_DMAX(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.


## DMIN

Returns the minimum value from a field of a list or database, that satisfy specified conditions

**Syntax:**

_DMIN(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.

## DPRODUCT

Multiplies the values in the field(column) of records in a list or database that match the conditions you specify

**Syntax:**

_DPRODUCT(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.

## DSTDEVP

Calculates the standard deviation (based on an entire population) of values in a field of a list or database, that satisfy specified conditions

**Syntax:**

_DSTDEVP(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.

## DSTEV

Calculates the standard deviation (based on a sample of a population) of values in a field of a list or database, that satisfy specified conditions

**Syntax:**

_DSTDEV(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.

## DSUM

Adds the numbers in the field (column) of records in a list or database that match the conditions you specify

**Syntax:**

_DSUM(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.

## DVAR

Calculates the variance (based on a sample of a population) of values in a field of a list or database, that satisfy specified conditions.

**Syntax:**

_DVAR(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.



## DVARP

Calculates the variance (based on an entire population) of values in a field of a list or database, that satisfy specified conditions.

**Syntax:**

_DVARP(database, field, criteria)_

**Where:**

* database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.

* field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.

* criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.

**Remarks:**

* You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.

* Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.

* Make sure that the criteria range does not overlap the list.

* To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.




