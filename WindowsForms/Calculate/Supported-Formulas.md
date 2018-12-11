---
layout: post
title: Supported Formulas | WindowsForms | Syncfusion
description: Formulas supported in Essential Calculate
platform: windowsforms
control: Calculate
documentation: ug
---

# Supported Formulas

This section shows the list of formulas supported in Essential Calculate library.

## Database Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th><th>
Syntax<br/><br/></th></tr>
<tr>
<td>
DCOUNT<br/><br/></td><td>
Returns the number of cells containing numbers in a field of a list or database that satisfy specified conditions<<br/><br/></td><td>
DCOUNT(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field  indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria denotes the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as the argument includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/></td></tr>
<tr>
<td>
DCOUNTA<br/><br/></td><td>
Returns the number of non-blank cells in a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DCOUNTA(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria  denotes the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/></td></tr>
<tr>
<td>
DAVERAGE<br/><br/></td><td>
Calculates the average of values in a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DAVERAGE(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column..<br/><br/></td></tr>
<tr>
<td>
DGET<br/><br/></td><td>
Returns a single value from a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DGET(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
If no record matches the criteria, DGET returns the #VALUE! error value.<br/><br/>
If more than one record matches the criteria, DGET returns the #NUM! error value.<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<tr>
<td>
DMAX<br/><br/></td><td>
Returns the maximum value from a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DMAX(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<tr>
<td>
DMIN<br/><br/></td><td>
Returns the minimum value from a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DMIN(database, field, criteria)
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<tr>
<td>
DSTDEVP<br/><br/></td><td>
Calculates the standard deviation (based on an entire population) of values in a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DSTDEVP(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<td>
DSTEV<br/><br/></td><td>
Calculates the standard deviation (based on a sample of a population) of values in a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DSTDEV(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<tr>
<td>
DVARP<br/><br/></td><td>
Calculates the variance (based on an entire population) of values in a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DVARP(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<td>
DVAR<br/><br/></td><td>
Calculates the variance (based on a sample of a population) of values in a field of a list or database, that satisfy specified conditions<br/><br/></td><td>
DVAR(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<tr>
<td>
DSUM<br/><br/></td><td>
Adds the numbers in the field (column) of records in a list or database that match the conditions you specify<br/><br/></td><td>
DSUM(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
<tr>
<td>
DPRODUCT<br/><br/></td><td>
Multiplies the values in the field(column) of records in a list or database that match the conditions you specify<br/><br/></td><td>
DPRODUCT(database, field, criteria)<br/><br/>
Where:<br/><br/>
Database denotes the  is the range of cells that makes up the list or database. A database is a list of related data in which rows of related information are records, and columns of data are fields. The first row of the list contains labels for each column.<br/><br/>
Field indicates which column is used in the function. Enter the column label enclosed between double quotation marks, such as "Age" or "Yield," or a number (without quotation marks) that represents the position of the column within the list: 1 for the first column, 2 for the second column, and so on.<br/><br/>
Criteria is the range of cells that contains the conditions that you specify. You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label in which you specify a condition for the column.<br/><br/>
Remarks:<br/><br/>
You can use any range for the criteria argument, as long as it includes at least one column label and at least one cell below the column label for specifying the condition.<br/><br/>
Although the criteria range can be located anywhere on the worksheet, do not place the criteria range below the list. If you add more information to the list, the new information is added to the first row below the list. If the row below the list is not blank, Microsoft Excel cannot add the new information.<br/><br/>
Make sure that the criteria range does not overlap the list.<br/><br/>
To perform an operation on an entire column in a database, enter a blank line below the column labels in the criteria range.<br/><br/></td></tr>
</table>

## Date and Time Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th><th>
Syntax<br/><br/></th></tr>
<tr>
<td>
DATE<br/><br/></td><td>
Returns a date, from a user-supplied year, month and day.<br/><br/></td><td>
DATE(year, month, day)<br/><br/>
Where:<br/><br/>
year can be one to four digits. Year is interpreted based on 1900.<br/><br/>
When a year is between 0 (zero) and 1899 (inclusive), the value is added to 1900 to calculate the year. For example, Date (102, 11, 12) returns as November 12, 2002 (1900+102).<br/><br/>
When a year is between 1900 and 9999 (inclusive), the value is used as it is, for example, Date(2002,11,12) returns as November 12, 2002.<br/><br/>
month is a number representing the month of the year.<br/><br/>
day is a number representing the day of the month.<br/><br/>
Remarks:<br/><br/>
Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and November 12, 2002 is serial number 37572 because it is 37572 days after January 1, 1900.<br/><br/></td></tr>
<tr>
<td>
DATEVALUE<br/><br/></td><td>
Converts a text string showing a date, to an integer that represents the date in Excel's date-time code.<br/><br/></td><td>
DATEVALUE(date_text)<br/><br/>
Where:<br/><br/>
date_text is the text that represents a date as a formatted string. For example, 11/12/2002 or 12-Nov-2002 are text strings within quotation marks that represent dates. When the year portion of the date_text is omitted, DateValue uses the current year from your computer's built-in clock. The time information in the date_text is ignored.<br/><br/>
Remarks:<br/><br/>
Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1, and November 12, 2002 is serial number 37572 because it is 37572 days after January 1, 1900.<br/><br/>
Most functions automatically convert date values to serial numbers.<br/><br/></td></tr>
<tr>
<td>
DAY<br/><br/></td><td>
Returns the day (of the month) from a user-supplied date.<br/><br/></td><td>
DAY(serial_number)<br/><br/>
Where:<br/><br/>
serial_number is the date of the day you are trying to find. Dates should be entered by using the `Date` function or as results of other formulas or functions. For example, use Date(2002,4,23) for the 23rd day of April, 2002.<br/><br/></td></tr>
<tr>
<td>
DAYS360<br/><br/></td><td>
Calculates the number of days between 2 dates, based on a 360-day year (12 x 30 months).<br/><br/></td><td>
DAYS360(start_date, end_date, method)<br/><br/>
Where:<br/><br/>
start_date and end_date are the two dates between which you want to know the number of days. When start_date occurs after end_date, `Days360` returns a negative number. Dates should be entered by using the **Date** function or as results of other formulas or functions.<br/><br/>
method is a logical value that specifies whether to use the U.S. or European method in the calculation. When method is:<br/><br/>
False or omitted-The calculation uses the U.S. (NASD) method. When the starting date is the 31st of a month, it becomes equal to the 30th of the same month. When the ending date is the 31st of a month and the starting date is earlier than the 30th of a month, the ending date becomes equal to the 1st of the next month, otherwise the ending date becomes equal to the 30th of the same month.<br/><br/>
True-The calculation uses the European method. Starting dates and ending dates that occur on the 31st of a month become equal to the 30th of the same month.<br/><br/></td></tr>
<tr>
<td>
HOUR<br/><br/></td><td>
Returns the hour part of a user-supplied time.<br/><br/></td><td>
HOUR(serial_number)<br/><br/>
Where:<br/><br/>
serial_number is the time that contains the hour you want to find. Times may be entered as text strings within quotation marks for example, "6:00 PM", as decimal numbers for example, 0.75, that represents 6:00 PM, or as results of other formulas or functions for example, TimeValue"6:00 PM".<br/><br/></td></tr>
<tr>
<td>
MINUTE<br/><br/></td><td>
Returns the minute part of a user-supplied time.<br/><br/></td><td>
MINUTE(serial_number)<br/><br/>
Where:<br/><br/>
serial_number is the time that contains the minute you want to find. Times may be entered as text strings within quotation marks (for example, "6:00 PM"), as decimal numbers (for example, 0.75, that represents 6:00 PM), or as results of other formulas or functions (for example, TIMEVALUE ("6:00 PM")).<br/><br/>
Remarks:<br/><br/>
Time values are a portion of a date value represented by a decimal number (for example, 12:00 PM is represented as 0.5).<br/><br/></td></tr>
<tr>
<td>
SECOND<br/><br/></td><td>
Returns the seconds part of a user-supplied time.<br/><br/></td><td>
SECOND(serial_number)<br/><br/>
Where:<br/><br/>
serial_number is the time that contains the seconds you want to find.<br/><br/>
Remarks:<br/><br/>
Time values are a portion of a date value and are represented by a decimal number (for example, 12:00 PM is represented as 0.5 because it is half of a day).<br/><br/></td></tr>
<tr>
<td>
MONTH<br/><br/></td><td>
Returns the month from a user-supplied date.<br/><br/></td><td>
MONTH(serial_number)<br/><br/>
Where:<br/><br/>
serial_number is the date of the month you are trying to find. Dates should be entered by using the `Date` function or as results of other formulas or functions. For example, use Date(2002,11,12) for the 12th day of November, 2002.<br/><br/>
Remarks:<br/><br/>
Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.<br/><br/></td></tr>
<tr>
<td>
NOW<br/><br/></td><td>
Returns the current date & time.<br/><br/></td><td>
NOW( )<br/><br/>
Remarks:<br/><br/>
Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900<br/><br/>
Numbers to the right of the decimal point in the serial number represent the time; and numbers to the left represent the date. For example, the serial number .5 represents the time 12:00 noon.<br/><br/></td></tr>
<tr>
<td>
TIME<br/><br/></td><td>
Returns a time, from a user-supplied hour, minute and second.<br/><br/></td><td>
TIME(hour, minute, second)<br/><br/>
Where:<br/><br/>
hour is a number from 0 (zero) to 23 representing the hour.<br/><br/>
minute is a number from 0 to 59 representing the minute.<br/><br/>
second is a number from 0 to 59 representing the second.<br/><br/></td></tr>
<tr>
<td>
TIMEVALUE<br/><br/></td><td>
Converts a text string showing a time, to a decimal that represents the time in Excel.<br/><br/></td><td>
TIMEVALUE(time_text)<br/><br/>
Where:<br/><br/>
time_text is a text string that represents a time as a formatted string. For example, "6:45 PM" and "18:45" text strings within quotation marks that represent time.<br/><br/>
Remarks:<br/><br/>
Date information in time_text is ignored.<br/><br/></td></tr>
<tr>
<td>
TODAY<br/><br/></td><td>
Returns today's date.<br/><br/></td><td>
TODAY( )<br/><br/>
Remarks:<br/><br/>
Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.<br/><br/></td></tr>
<tr>
<td>
WEEKDAY<br/><br/></td><td>
Returns an integer representing the day of the week for a supplied date.<br/><br/></td><td>
WEEKDAY(serial_number,return_type)<br/><br/>
Where:<br/><br/>
serial_number is a sequential number that represents the date of the day you are trying to find. Dates should be entered by using the `Date` function or as results of other formulas or functions. For example, use Date (2008, 5, 23) for the 23rd day of May 2008.<br/><br/>
return_type is a number that determines the type of return value.<br/><br/>
<table>

<tr>

<th>

<b>Return type  </b></th><th>

<b>Number returned</b></th></tr>

<tr>

<td>

1 or omitted       </td><td>

Numbers 1 (Sunday) through 7 (Saturday).</td></tr>

<tr>

<td>

2</td><td>

Numbers 1 (Monday) through 7 (Sunday).</td></tr>

<tr>

<td>

3</td><td>

Numbers 0 (Monday) through 6 (Sunday).</td></tr>

</table>

<br/><br/></td></tr>
<tr>
<td>
YEAR<br/><br/></td><td>
Returns the year from a user-supplied date.<br/><br/></td><td>
YEAR(serial_number)<br/><br/>
Where:<br/><br/>
serial_number is the date of the year you want to find. Dates should be entered by using the DATE function or as results of other formulas or functions. For example, use DATE(2002,11,12) for the 12th day of November 2002.<br/><br/>
Remarks:<br/><br/>
Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.<br/><br/></td></tr>
<tr>
<td>
DAYS<br/><br/></td><td>
Calculates the number of days between 2 dates.<br/><br/></td><td>
DAYS(endDate, startDate)<br/><br/>
Where:<br/><br/>
endDate and startDate are the two dates between which you want to know the number of days.<br/><br/></td></tr>
<tr>
<td>
EDATE<br/><br/></td><td>
Returns a date that is the specified number of months before or after an initial supplied start date.<br/><br/></td><td>
EDATE( startDate, Months )<br/><br/>
Where:<br/><br/>
startDate is the initial date from where to count the number of months.<br/><br/>
Months is the number of months to add to (or subtract from) the startDate.<br/><br/>
Remarks:<br/><br/>
`#VALUE!` occurs when the supplied startDate is not a valid date.<br/><br/>
`#VALUE!` occurs when the supplied Months argument is non-numeric.<br/><br/></td></tr>
<tr>
<td>
EOMONTH<br/><br/></td><td>
Returns a date that is the last day of the month which is a specified number of months before or after an initial supplied start date.<br/><br/></td><td>
EOMONTH(startDate, Months)<br/><br/>
Where:<br/><br/>
startDate is the initial date.<br/><br/>
Months is the number of months to add to (or subtract from) the startDate before returning the last day of the resulting month. <br/><br/>
Remarks:<br/><br/>
`#VALUE!` occurs when any of the supplied argument is not a numeric value. <br/><br/>
`#NUM!` occurs when the supplied startDate is not a valid date.<br/><br/>
`#NUM!` occurs when the supplied startDate plus the value of the months argument is not a valid date.<br/><br/></td></tr>
<tr>
<td>
ISOWEEKNUM<br/><br/></td><td>
Returns the ISO week number of the year for a given date.<br/><br/></td><td>
ISOWEEKNUM( DateTime)<br/><br/>
Where:<br/><br/>
DateTime is used for date and time calculation.<br/><br/>
Remarks:<br/><br/>
`#NUM!` occurs when the date argument is not a valid number.<br/><br/>
`#VALUE!` occurs when the date argument is not a valid date type.<br/><br/></td></tr>
<tr>
<td>
NETWORKDAYS.INTL<br/><br/></td><td>
Returns the number of whole network days (excluding weekends & holidays), between two supplied dates, using parameters to specify weekend days.<br/><br/></td><td>
NETWORKDAYS.INTL(startDate, endDate))<br/><br/>
Where:<br/><br/>
startDate is the start of the period where days are counted.<br/><br/>
endDate is the end of the period where days are counted.<br/><br/>
Remarks:<br/><br/>
`#VALUE!` occurs when the supplied startDate and endDate are not valid dates.<br/><br/></td></tr>
<tr>
<td>
WEEKNUM<br/><br/></td><td>
Returns an integer representing the week number (from 1 to 53) of the year from a user-supplied date.<br/><br/></td><td>
WEEKNUM( serialNum, [returnType] )<br/><br/>
Where:<br/><br/>
serialNum is the date that you want to return the week number for.<br/><br/>
[returnType] is an optional argument that specifies which numbering system should be used and which weekday should be treated as the start of the week.<br/><br/>
Remarks:<br/><br/>
`#VALUE!` occurs when the supplied serialNum cannot be recognized as a numeric value or a date.<br/><br/>
`#NUM!` occurs when the supplied [returnType] argument is not one of the above listed permitted values. <br/><br/>
`#NUM!` occurs when the supplied serialNum argument is numeric, but is out of range for the current date base.<br/><br/></td></tr>
<tr>
<td>
WORKDAY<br/><br/></td><td>
Returns a date that is a supplied number of working days (excluding weekends & holidays) ahead of a given start date.<br/><br/></td><td>
WORKDAY(startDate, Days, [holidays])<br/><br/>
Where:<br/><br/>
startDate is the initial date from which to count the number of workdays.<br/><br/>
Days are number of workdays to add onto startDate.<br/><br/>
[holidays] is an optional argument, which specifies an array of dates that are not to be counted as working days.<br/><br/>
Remarks:<br/><br/>
`#NUM!` occurs when the supplied startDate plus the supplied days argument results in an invalid date.<br/><br/>
`#VALUE!` occurs when the supplied startDate or any of the value in the supplied [holidays] array is not valid dates, when the supplied days argument is non-numeric.<br/><br/></td></tr>
<tr>
<td>
WORKDAY.INTL<br/><br/></td><td>
Returns a date that is a supplied number of working days (excluding weekends & holidays) ahead of a given start date, using supplied parameters to specify weekend days.<br/><br/></td><td>
WORKDAY.INTL (startDate, days, [weekend], [holidays])<br/><br/>
Where:<br/><br/>
startDate is the initial date from which to count the number of workdays. <br/><br/>
days are number of workdays to add onto startDate.<br/><br/>
[weekend] is an optional argument that specifies the weekdays to be counted as weekends.<br/><br/>
[holidays] is an optional argument that specifies an array of dates that are not to be counted as working days.<br/><br/>
Remarks:<br/><br/>
`#NUM!` occurs when the supplied startDate plus the supplied days argument results in an invalid date.<br/><br/>
`#NUM!` occurs when the supplied [weekend] argument is invalid (see above explanation of this argument).<br/><br/>
`#VALUE!` occurs when the supplied startDate or any of the value in the supplied [holidays] array is not valid dates.<br/><br/>
`#VALUE!` occurs when the supplied days argument is non-numeric.<br/><br/></td></tr>
<tr>
<td>
YEARFRAC<br/><br/></td><td>
Calculates the fraction of the year represented by the number of whole days between two dates.<br/><br/></td><td>
YEARFRAC(start_date, end_date, [basis])<br/><br/>
Where:<br/><br/>
Start_date denotes a date that represents the start date.<br/><br/>
End_date  denotes a date that represents the end date.<br/><br/>
Basis  denotes the type of day count basis to use.<br/><br/>
Remarks:<br/><br/>
excel stores dates as sequential serial numbers so they can be used in calculations. By default, January 1, 1900 is serial number 1, and January 1, 2018 is serial number 43101 because it is 43,101 days after January 1, 1900.<br/><br/>
all arguments are truncated to integers.<br/><br/>
start_date or end_date are not valid dates, it returns the #VALUE! error value.<br/><br/>
basis < 0 or if basis > 4, it returns the #NUM! error value.<br/><br/></td></tr>
</table>

## Engineering Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DEC2BIN<br/><br/></td><td>
Converts a decimal number to binary<br/><br/></td></tr>
<tr>
<td>
DCE2OCT<br/><br/></td><td>
Converts a binary number to octal<br/><br/></td></tr>
<tr>
<td>
DEC2HEX<br/><br/></td><td>
Converts a decimal number to hexadecimal<br/><br/></td></tr>
<tr>
<td>
BIN2DEC<br/><br/></td><td>
Converts a binary number to hexadecimal<br/><br/></td></tr>
<tr>
<td>
BIN2OCT<br/><br/></td><td>
Converts a binary number to octal<br/><br/></td></tr>
<tr>
<td>
BIN2HEX<br/><br/></td><td>
Converts a binary number to hexadecimal<br/><br/></td></tr>
<tr>
<td>
HEX2BIN<br/><br/></td><td>
Converts a hexadecimal number to binary<br/><br/></td></tr>
<tr>
<td>
HEX2DEC<br/><br/></td><td>
Converts a hexadecimal number to a decimal<br/><br/></td></tr>
<tr>
<td>
HEX2OCT<br/><br/></td><td>
Converts a hexadecimal number to octal<br/><br/></td></tr>
<tr>
<td>
OCT2BIN<br/><br/></td><td>
Converts octal number to binary<br/><br/></td></tr>
<tr>
<td>
OCT2DEC<br/><br/></td><td>
Converts octal number to a decimal<br/><br/></td></tr>
<tr>
<td>
OCT2HEX<br/><br/></td><td>
Converts octal number to hexadecimal<br/><br/></td></tr>
<tr>
<td>
IMABS<br/><br/></td><td>
Returns the absolute value (the modulus) of a complex number<br/><br/></td></tr>
<tr>
<td>
IMAGINARY<br/><br/></td><td>
Returns the imaginary coefficient of a complex number<br/><br/></td></tr>
<tr>
<td>
IMREAL<br/><br/></td><td>
Returns the real coefficient of a complex number<br/><br/></td></tr>
<tr>
<td>
COMPLEX<br/><br/></td><td>
Converts user-supplied real and imaginary coefficients into a complex number<br/><br/></td></tr>
<tr>
<td>
IMSUM<br/><br/></td><td>
Calculates the sum of two complex numbers<br/><br/></td></tr>
<tr>
<td>
IMSUB<br/><br/></td><td>
Subtracts two complex numbers<br/><br/></td></tr>
<tr>
<td>
IMPRODUCT<br/><br/></td><td>
Returns the product of up to 255 supplied complex numbers<br/><br/></td></tr>
<tr>
<td>
IMDIV<br/><br/></td><td>
Returns the quotient of two supplied complex numbers<br/><br/></td></tr>
<tr>
<td>
IMCONJUGATE<br/><br/></td><td>
Returns the complex conjugate of a complex number<br/><br/></td></tr>
<tr>
<td>
IMSQRT<br/><br/></td><td>
Returns the square root of a complex number<br/><br/></td></tr>
<tr>
<td>
IMARGUMENT<br/><br/></td><td>
Returns the argument Θ (an angle expressed in radians) of a complex number<br/><br/></td></tr>
<tr>
<td>
IMSIN<br/><br/></td><td>
Returns the sine of a complex number<br/><br/></td></tr>
<tr>
<td>
IMCSC<br/><br/></td><td>
Returns the cosecant of a complex number<br/><br/></td></tr>
<tr>
<td>
IMCOS<br/><br/></td><td>
Returns the cosine of a complex number<br/><br/></td></tr>
<tr>
<td>
IMSEC<br/><br/></td><td>
Returns the secant of a complex number<br/><br/></td></tr>
<tr>
<td>
IMTAN<br/><br/></td><td>
Returns the tangent of a complex number<br/><br/></td></tr>
<tr>
<td>
IMCOT<br/><br/></td><td>
Returns the cotangent of a complex number<br/><br/></td></tr>
<tr>
<td>
IMSINH<br/><br/></td><td>
Returns the hyperbolic sine of a complex number<br/><br/></td></tr>
<tr>
<td>
IMCSCH<br/><br/></td><td>
Returns the hyperbolic cosecant of a complex number<br/><br/></td></tr>
<tr>
<td>
IMCOSH<br/><br/></td><td>
Returns the hyperbolic cosine of a complex number<br/><br/></td></tr>
<tr>
<td>
IMSECH<br/><br/></td><td>
Returns the hyperbolic secant of a complex number <br/><br/></td></tr>
<tr>
<td>
IMLOG10<br/><br/></td><td>
Returns the base-10 logarithm of a complex number<br/><br/></td></tr>
<tr>
<td>
IMLOG2<br/><br/></td><td>
Returns the base-2 logarithm of a complex number<br/><br/></td></tr>
<tr>
<td>
IMLN<br/><br/></td><td>
Returns the natural logarithm of a complex number<br/><br/></td></tr>
<tr>
<td>
IMEXP<br/><br/></td><td>
Returns the exponential of a complex number<br/><br/></td></tr>
<tr>
<td>
IMPOWER<br/><br/></td><td>
Calculates a complex number raised to a supplied power<br/><br/></td></tr>
<tr>
<td>
GESTEP<br/><br/></td><td>
Tests whether a number is greater than a supplied threshold value<br/><br/></td></tr>
<tr>
<td>
DELTA<br/><br/></td><td>
Tests whether two supplied numbers are equal<br/><br/></td></tr>
<tr>
<td>
BITAND<br/><br/></td><td>
Returns a Bitwise 'And' of two numbers<br/><br/></td></tr>
<tr>
<td>
BITOR<br/><br/></td><td>
Returns a Bitwise 'Or' of two numbers<br/><br/></td></tr>
<tr>
<td>
BITXOR<br/><br/></td><td>
Returns a Bitwise 'Exclusive Or' of two numbers<br/><br/></td></tr>
<tr>
<td>
BITLSHIFT<br/><br/></td><td>
Returns a number shifted left by a specified number of bits <br/><br/></td></tr>
<tr>
<td>
BITRSHIFT<br/><br/></td><td>
Returns a number shifted right by a specified number of bits<br/><br/></td></tr>
<tr>
<td>
ERF<br/><br/></td><td>
Returns the error function integrated between two supplied limits<br/><br/></td></tr>
<tr>
<td>
ERF.PRECISE<br/><br/></td><td>
Returns the error function integrated between 0 and a supplied limit<br/><br/></td></tr>
<tr>
<td>
ERFC.PRECISE<br/><br/></td><td>
Returns the complementary error function integrated between a supplied lower limit and infinity<br/><br/></td></tr>
<tr>
<td>
BESSELI<br/><br/></td><td>
Calculates the modified Bessel function In(x)<br/><br/></td></tr>
<tr>
<td>
BESSELJ<br/><br/></td><td>
Calculates the Bessel function Jn(x)<br/><br/></td></tr>
<tr>
<td>
BESSELY<br/><br/></td><td>
Calculates the modified Bessel function Yn(x)<br/><br/></td></tr>
<tr>
<td>
BESSELK<br/><br/></td><td>
Calculates the modified Bessel function Kn(x)<br/><br/></td></tr>
<tr>
<td>
CONVERT<br/><br/></td><td>
Converts a number from one measurement system to another<br/><br/></td></tr>
</table>

## Financial Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DB<br/><br/></td><td>
Calculates the depreciation of an asset for a specified period, using the fixed-declining balance method<br/><br/></td></tr>
<tr>
<td>
DDB<br/><br/></td><td>
Calculates the depreciation of an asset for a specified period, using the double-declining balance method, or some other user-specified method<br/><br/></td></tr>
<tr>
<td>
FV<br/><br/></td><td>
Calculates the future value of an investment with periodic constant payments and a constant interest rate<br/><br/></td></tr>
<tr>
<td>
IPMT<br/><br/></td><td>
Calculates the interest payment for a given period of an investment, with periodic constant payments and a constant interest rate<br/><br/></td></tr>
<tr>
<td>
IRR<br/><br/></td><td>
Calculates the internal rate of return for a series of cash flows<br/><br/></td></tr>
<tr>
<td>
XIRR<br/><br/></td><td>
Calculates the internal rate of return for a schedule of cash flows<br/><br/></td></tr>
<tr>
<td>
ISPMT<br/><br/></td><td>
Returns the interest paid during a specified period of an investment<br/><br/></td></tr>
<tr>
<td>
MIRR<br/><br/></td><td>
Calculates the internal rate of return for a series of periodic cash flows, considering the cost of the investment and the interest on the reinvestment of cash<br/><br/></td></tr>
<tr>
<td>
NPER<br/><br/></td><td>
Returns the number of periods for an investment with periodic constant payments and a constant interest rate<br/><br/></td></tr>
<tr>
<td>
NPV<br/><br/></td><td>
Calculates the net present value of an investment, based on a supplied discount rate, and a series of future payments and income<br/><br/></td></tr>
<tr>
<td>
PMT<br/><br/></td><td>
Calculates the payments required to reduce a loan, from a supplied present value to a specified future value<br/><br/></td></tr>
<tr>
<td>
PPMT<br/><br/></td><td>
Calculates the payment on the principal for a given investment, with periodic constant payments and a constant interest rate<br/><br/></td></tr>
<tr>
<td>
PV<br/><br/></td><td>
Calculates the present value of an investment (i.e. the total amount that a series of future payments is worth now)<br/><br/></td></tr>
<tr>
<td>
RATE<br/><br/></td><td>
Calculates the interest rate required to pay off a specified amount of a loan, or reach a target amount on an investment over a given period<br/><br/></td></tr>
<tr>
<td>
SLN<br/><br/></td><td>
Returns the straight-line depreciation of an asset for one period<br/><br/></td></tr>
<tr>
<td>
SYD<br/><br/></td><td>
Returns the sum-of-years' digits depreciation of an asset for a specified period<br/><br/></td></tr>
<tr>
<td>
VDB<br/><br/></td><td>
Returns the depreciation of an asset for a specified period, (including partial periods), using the double-declining balance method or another user-specified method<br/><br/></td></tr>
<tr>
<td>
DOLLARDE<br/><br/></td><td>
Converts a dollar price expressed as a fraction, into a dollar price expressed as a decimal<br/><br/></td></tr>
<tr>
<td>
DOLLARFR<br/><br/></td><td>
Converts a dollar price expressed as a decimal, into a dollar price expressed as a fraction<br/><br/></td></tr>
<tr>
<td>
DURATION<br/><br/></td><td>
Calculates the Macaulay duration of a security with an assumed par value of $100<br/><br/></td></tr>
<tr>
<td>
RRI<br/><br/></td><td>
Calculates an equivalent interest rate for the growth of an investment<br/><br/></td></tr>
<tr>
<td>
FVSCHEDULE<br/><br/></td><td>
Calculates the future value of an initial principal, after applying a series of compound interest rates<br/><br/></td></tr>
<tr>
<td>
DISC<br/><br/></td><td>
Calculates the discount rate for a security<br/><br/></td></tr>
<tr>
<td>
INTRATE<br/><br/></td><td>
Calculates the interest rate for a fully invested security<br/><br/></td></tr>
<tr>
<td>
CUMIPMT<br/><br/></td><td>
Calculates the cumulative interest paid between two specified periods<br/><br/></td></tr>
<tr>
<td>
CUMPRINC<br/><br/></td><td>
Calculates the cumulative principal paid on a loan, between two specified periods<br/><br/></td></tr>
<tr>
<td>
RECEIVED<br/><br/></td><td>
Calculates the amount received at maturity for a fully invested Security<br/><br/></td></tr>
<tr>
<td>
EFFECT<br/><br/></td><td>
Returns the effective annual interest rate<br/><br/></td></tr>
<tr>
<td>
ACCRINTM<br/><br/></td><td>
Returns the accrued interest for a security that pays interest at maturity<br/><br/></td></tr>
</table>

## Information Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
ISERROR<br/><br/></td><td>
Checks whether the value is an error and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISNUMBER<br/><br/></td><td>
Checks whether the value is number and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISLOGICAL<br/><br/></td><td>
Checks whether a value is logical value(TRUE/FALSE) and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISNA<br/><br/></td><td>
Checks whether a value is #N/A and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISERR<br/><br/></td><td>
Checks whether the value is an error except #N/A and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISBLANK<br/><br/></td><td>
Checks whether the reference is to an empty cell and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISTEXT<br/><br/></td><td>
Checks whether the value is text and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISNONTEXT<br/><br/></td><td>
Checks whether the value is not text(blank cells are not text) and returns true or false<br/><br/></td></tr>
<tr>
<td>
ISEVEN<br/><br/></td><td>
Returns true if number is even<br/><br/></td></tr>
<tr>
<td>
LEN<br/><br/></td><td>
Returns the length of a supplied text string<br/><br/></td></tr>
<tr>
<td>
FIXED<br/><br/></td><td>
Rounds a supplied number to a specified number of decimal places, and then converts this into text<br/><br/></td></tr>
<tr>
<td>
ISODD<br/><br/></td><td>
Returns true if number is odd<br/><br/></td></tr>
<tr>
<td>
ERROR.TYPE<br/><br/></td><td>
Tests a supplied value and returns an integer relating to the supplied value's error type<br/><br/></td></tr>
<tr>
<td>
N<br/><br/></td><td>
Converts a non-number value to a number, a date to a serial number, the logical value TRUE to 1 and all other values to 0<br/><br/></td></tr>
<tr>
<td>
NA<br/><br/></td><td>
Returns the Excel #N/A error<br/><br/></td></tr>
<tr>
<td>
CELL<br/><br/></td><td>
Returns information about the contents, formatting or location of a given cell<br/><br/></td></tr>
<tr>
<td>
INFO<br/><br/></td><td>
Returns information about the the current operating environment<br/><br/></td></tr>
<tr>
<td>
TYPE<br/><br/></td><td>
Returns information about the data type of a supplied value<br/><br/></td></tr>
<tr>
<td>
ISFORMULA<br/><br/></td><td>
Tests if a supplied cell contains a formula and if so, returns TRUE; Otherwise, returns FALSE<br/><br/></td></tr>
</table>

## Logical Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th><th>
Syntax<br/><br/></th></tr>
<tr>
<td>
AND<br/><br/></td><td>
Tests a number of user-defined conditions and returns TRUE if ALL of the conditions evaluate to TRUE, orFALSE otherwise.<br/><br/></td><td>
AND(logical1, logical2, ...)<br/><br/>
Where:<br/><br/>
logical1, logical2 ... are multiple conditions to be tested for `true` or `false`.<br/><br/>
Remarks:<br/><br/>
The arguments must evaluate to logical values (True or False).<br/><br/>
When an argument does not evaluate to True or false, those values are ignored.<br/><br/>
There must be at least one value in the argument list.<br/><br/></td></tr>
<tr>
<td>
OR<br/><br/></td><td>
Tests a number of user-defined conditions and returns TRUE if ANY of the conditions evaluate to TRUE, orFALSE otherwise.<br/><br/></td><td>
OR(logical1, logical2, ...)<br/><br/>
Where:<br/><br/>
logical1, logical2 ... are conditions to test that can be either `True` or `False`.<br/><br/>
Remarks:<br/><br/>
The arguments must evaluate to logical values such as `True` or `False` or in arrays or references that contain logical values.<br/><br/></td></tr>
<tr>
<td>
IF<br/><br/></td><td>
Tests a user-defined condition and returns one result if the condition is TRUE, and another result if the condition is FALSE.<br/><br/></td><td>
IF(logical_test, value_if_true, value_if_false)<br/><br/>
Where:<br/><br/>
logical_test is any value or expression that can be evaluated to `True` or `False`.<br/><br/>
value_if_true is the value that is returned if a logical_test is `True`.<br/><br/>
value_if_false is the value that is returned if a logical_test is `False`.<br/><br/></td></tr>
<tr>
<td>
IFERROR<br/><br/></td><td>
Tests if an initial supplied value (or expression) returns an error, and if so, returns a supplied value; Otherwise the function returns the initial value.<br/><br/></td><td>
IFERROR (value, value_error)<br/><br/>
Where:<br/><br/>
`value` is the required to check the error.<br/><br/>
`value_error` is the required and returns when the value has an error.<br/><br/>
When the value_error is an empty cell, then the function takes the error value as empty string.  <br/><br/></td></tr>
<tr>
<td>
FALSE<br/><br/></td><td>
Simply returns the logical value FALSE.<br/><br/></td><td>
FALSE(stringvalue)<br/><br/>
Where:<br/><br/>
stringvalue is to provide an empty string.<br/><br/></td></tr>
<tr>
<td>
TRUE<br/><br/></td><td>
Simply returns the logical value TRUE.<br/><br/></td><td>
TRUE(stringvalue)<br/><br/>
Where:<br/><br/>
stringvalue is to provide an empty string.<br/><br/></td></tr>
<tr>
<td>
NOT<br/><br/></td><td>
Returns a logical value that is the opposite of a user supplied logical value or expression.<br/><br/></td><td>
NOT(logical)<br/><br/>
Where:<br/><br/>
logical is a value or expression that can be evaluated to `True` or `False`.<br/><br/></td></tr>
<tr>
<td>
IFNA<br/><br/></td><td>
Tests if an expression returns the #N/A error and if so, returns an alternative specified value; Otherwise the function returns the value of the supplied expression.<br/><br/></td><td>
IFNA (Formula_value, value_if_na)<br/><br/>
Where:<br/><br/>
`Formula_value`: This value is required and the argument that is checked for the #N/A error value.<br/><br/>
`value_if_na`: This value is required and the value returned when the formula evaluates to the #N/A error value.<br/><br/></td></tr>
<tr>
<td>
IFS<br/><br/></td><td>
Tests a number of supplied conditions and returns a result corresponding to the first condition that evaluates to TRUE.<br/><br/></td><td>
IFS( condition1, return1 [,condition2, return2] ... [,condition127, return127] )<br/><br/>
Where:<br/><br/>
condition1, condition2, ... condition127 denotes the condition that you want to test. There can be up to 127 conditions entered.<br/><br/>
return1, return2, ... return127 denotes the <br/><br/></td></tr>
<tr>
<td>
SWITCH<br/><br/></td><td>
Compares a number of supplied values to a supplied test expression and returns a result corresponding to the first value that matches the test expression.<br/><br/></td><td>
SWITCH ( expression, value1, result1, value2, result2, ... value_n, result_n [, default] )<br/><br/>
Where:<br/><br/>
value1, value2, ... value_n denotes a list of values that are compared to expression. The SWITCH function is looking for the first value that matches the expression.<br/><br/>
result1, result2, ... result_n denotes a list of results. The SWITCH function returns the corresponding result when a value matches expression.<br/><br/>
default is return if expression does not match any of the values (value1, value2, ... value_n).<br/><br/></td></tr>
<tr>
<td>
XOR<br/><br/></td><td>
Returns a logical Exclusive Or of all arguments.<br/><br/></td><td>
XOR (logical_value1, logical_value2…)<br/><br/>
Where:<br/><br/>
Logical_value1: This is a required value and can be either `true` or `false`, and can be logical values, arrays, or references.<br/><br/>
When the given arguments do not have the logical values, `XOR` returns the `#VALUE!` error value.<br/><br/></td></tr>
</table>

## Lookup & Reference Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
OFFSET<br/><br/></td><td>
Returns a reference to a range of cells that is a specified number of rows and columns from an initial supplied range<br/><br/></td></tr>
<tr>
<td>
LOOKUP<br/><br/></td><td>
Searches for a specific value in one data vector, and returns a value from the corresponding position of a second data vector<br/><br/></td></tr>
<tr>
<td>
HLOOKUP<br/><br/></td><td>
Looks up a supplied value in the first row of a table, and returns the corresponding value from another row<br/><br/></td></tr>
<tr>
<td>
VLOOKUP<br/><br/></td><td>
Looks up a supplied value in the first column of a table, and returns the corresponding value from another column<br/><br/></td></tr>
<tr>
<td>
MATCH<br/><br/></td><td>
Finds the relative position of a value in a supplied array<br/><br/></td></tr>
<tr>
<td>
CHOOSE<br/><br/></td><td>
Returns one of a list of values, depending on the value of a supplied index number<br/><br/></td></tr>
<tr>
<td>
COLUMN<br/><br/></td><td>
Returns the column number of a supplied range, or of the current cell<br/><br/></td></tr>
<tr>
<td>
ROW<br/><br/></td><td>
Returns the row number of a supplied range, or of the current cell<br/><br/></td></tr>
<tr>
<td>
INDIRECT<br/><br/></td><td>
Returns a cell or range reference that is represented by a supplied text string<br/><br/></td></tr>
<tr>
<td>
AREAS<br/><br/></td><td>
Returns the number of areas in a supplied range<br/><br/></td></tr>
<tr>
<td>
COLUMNS<br/><br/></td><td>
Returns the number of columns in a supplied range<br/><br/></td></tr>
<tr>
<td>
FORMULATEXT<br/><br/></td><td>
Returns a formula as a string<br/><br/></td></tr>
<tr>
<td>
HYPERLINK<br/><br/></td><td>
Creates a hyperlink to a document in a supplied location<br/><br/></td></tr>
<tr>
<td>
ADDRESS<br/><br/></td><td>
Returns a reference, in text format, for a supplied row and column number<br/><br/></td></tr>
<tr>
<td>
ROWS<br/><br/></td><td>
Returns the number of rows in a supplied range<br/><br/></td></tr>
<tr>
<td>
SHEET<br/><br/></td><td>
Returns the sheet number of the referenced sheet<br/><br/></td></tr>
<tr>
<td>
TRANSPOSE<br/><br/></td><td>
Performs a transpose transformation on a range of cells (i.e. transforms a horizontal range of cells into a vertical range and vice versa)<br/><br/></td></tr>
<tr>
<td>
SHEETS<br/><br/></td><td>
Returns the number of sheets in reference<br/><br/></td></tr>
</table>

## Math & Trigonometry functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
ABS<br/><br/></td><td>
Returns the absolute value of a number<br/><br/></td></tr>
<tr>
<td>
ACOS<br/><br/></td><td>
Returns the arccosine of a number<br/><br/></td></tr>
<tr>
<td>
ACOSH<br/><br/></td><td>
Returns the inverse hyperbolic cosine of a number<br/><br/></td></tr>
<tr>
<td>
ASIN<br/><br/></td><td>
Returns the arcsine of a number<br/><br/></td></tr>
<tr>
<td>
ASINH<br/><br/></td><td>
Returns the inverse hyperbolic sine of a number<br/><br/></td></tr>
<tr>
<td>
ATAN<br/><br/></td><td>
Returns the arctangent of a number<br/><br/></td></tr>
<tr>
<td>
ATAN2<br/><br/></td><td>
Returns the arctangent from x- and y-coordinates<br/><br/></td></tr>
<tr>
<td>
ATANH<br/><br/></td><td>
Returns the inverse hyperbolic tangent of a number<br/><br/></td></tr>
<tr>
<td>
SUM<br/><br/></td><td>
Adds its arguments<br/><br/></td></tr>
<tr>
<td>
PI<br/><br/></td><td>
Returns the value of pi<br/><br/></td></tr>
<tr>
<td>
POWER<br/><br/></td><td>
Returns the result of a number raised to a power<br/><br/></td></tr>
<tr>
<td>
POW<br/><br/></td><td>
Returns the result of a number raised to a power<br/><br/></td></tr>
<tr>
<td>
SUBTOTAL<br/><br/></td><td>
Returns a subtotal in a list or database<br/><br/></td></tr>
<tr>
<td>
COS<br/><br/></td><td>
Returns the cosine of a number<br/><br/></td></tr>
<tr>
<td>
SIN<br/><br/></td><td>
Returns the sine of the given angle<br/><br/></td></tr>
<tr>
<td>
COSH<br/><br/></td><td>
Returns the hyperbolic cosine of a number<br/><br/></td></tr>
<tr>
<td>
SINH<br/><br/></td><td>
Returns the hyperbolic sine of a number<br/><br/></td></tr>
<tr>
<td>
TANH<br/><br/></td><td>
Returns the hyperbolic tangent of a number<br/><br/></td></tr>
<tr>
<td>
TAN<br/><br/></td><td>
Returns the tangent of a number<br/><br/></td></tr>
<tr>
<td>
ACOT<br/><br/></td><td>
Returns the arc cotangent of a number, in radians in the range 0 to Pi<br/><br/></td></tr>
<tr>
<td>
ACOTH<br/><br/></td><td>
Returns the inverse hyperbolic cotangent of a number<br/><br/></td></tr>
<tr>
<td>
SIGN<br/><br/></td><td>
Returns the sign of a number<br/><br/></td></tr>
<tr>
<td>
SQRT<br/><br/></td><td>
Returns a positive square root<br/><br/></td></tr>
<tr>
<td>
ROUND<br/><br/></td><td>
Rounds a number to a specified number of digits<br/><br/></td></tr>
<tr>
<td>
LOG<br/><br/></td><td>
Returns the logarithm of a number to a specified base<br/><br/></td></tr>
<tr>
<td>
LOG10<br/><br/></td><td>
Returns the base-10 logarithm of a number<br/><br/></td></tr>
<tr>
<td>
EXP<br/><br/></td><td>
Returns e raised to the power of a given number<br/><br/></td></tr>
<tr>
<td>
CEILING<br/><br/></td><td>
Rounds a number to the nearest integer or to the nearest multiple of significance<br/><br/></td></tr>
<tr>
<td>
CEILING.MATH<br/><br/></td><td>
Returns the RoundUp of the given number to the given significance<br/><br/></td></tr>
<tr>
<td>
COLUMNS<br/><br/></td><td>
Returns the number of columns of the passed in cell reference<br/><br/></td></tr>
<tr>
<td>
FLOOR<br/><br/></td><td>
Rounds a number down, toward zero<br/><br/></td></tr>
<tr>
<td>
PRODUCT<br/><br/></td><td>
Multiplies its arguments<br/><br/></td></tr>
<tr>
<td>
MOD<br/><br/></td><td>
Returns the remainder from division<br/><br/></td></tr>
<tr>
<td>
TRUNC<br/><br/></td><td>
Truncates a number to an integer<br/><br/></td></tr>
<tr>
<td>
INT<br/><br/></td><td>
Rounds a number down to nearest integer<br/><br/></td></tr>
<tr>
<td>
ISEVEN<br/><br/></td><td>
Returns true if the number is even<br/><br/></td></tr>
<tr>
<td>
SUMPRODUCT<br/><br/></td><td>
Returns the sum of the products of corresponding array components<br/><br/></td></tr>
<tr>
<td>
EXP<br/><br/></td><td>
Returns e raised to the power of a given number<br/><br/></td></tr>
<tr>
<td>
INT<br/><br/></td><td>
Rounds a number down to the nearest integer<br/><br/></td></tr>
<tr>
<td>
RAND<br/><br/></td><td>
Returns an evenly distributed random number &gt;= 0 and &lt; 1<br/><br/></td></tr>
<tr>
<td>
COMBIN<br/><br/></td><td>
Returns the number of combinations for a given number of objects<br/><br/></td></tr>
<tr>
<td>
DEGREES<br/><br/></td><td>
Converts radians to degrees<br/><br/></td></tr>
<tr>
<td>
EVEN<br/><br/></td><td>
Rounds a number up to the nearest even integer<br/><br/></td></tr>
<tr>
<td>
FACT<br/><br/></td><td>
Returns the factorial of a number<br/><br/></td></tr>
<tr>
<td>
LN<br/><br/></td><td>
Returns the natural logarithm of a number<br/><br/></td></tr>
<tr>
<td>
ODD<br/><br/></td><td>
Rounds a number up to the nearest odd integer<br/><br/></td></tr>
<tr>
<td>
RADIANS<br/><br/></td><td>
Converts degrees to radians<br/><br/></td></tr>
<tr>
<td>
ROUNDDOWN<br/><br/></td><td>
Rounds a number down, toward zero<br/><br/></td></tr>
<tr>
<td>
ROUNDUP<br/><br/></td><td>
Rounds a number up, away from zero<br/><br/></td></tr>
<tr>
<td>
MROUND<br/><br/></td><td>
Returns a number rounded to the desired multiple<br/><br/></td></tr>
<tr>
<td>
MULTINOMIAL<br/><br/></td><td>
Returns the multinomial of a set of numbers<br/><br/></td></tr>
<tr>
<td>
QUOTIENT<br/><br/></td><td>
Returns the integer portion of a division<br/><br/></td></tr>
<tr>
<td>
FACTDOUBLE<br/><br/></td><td>
Returns the double factorial of a number<br/><br/></td></tr>
<tr>
<td>
GCD<br/><br/></td><td>
Returns the greatest common divisor<br/><br/></td></tr>
<tr>
<td>
LCM<br/><br/></td><td>
Returns the least common multiple<br/><br/></td></tr>
<tr>
<td>
SQRTPI<br/><br/></td><td>
Returns the square root of (number * pi)<br/><br/></td></tr>
<tr>
<td>
ROMAN<br/><br/></td><td>
Converts an Arabic numeral to Roman, as text<br/><br/></td></tr>
<tr>
<td>
SUMSQ<br/><br/></td><td>
Returns the sum of the squares of the arguments<br/><br/></td></tr>
<tr>
<td>
SUMX2MY2<br/><br/></td><td>
Returns the sum of the difference of squares of corresponding values in two arrays<br/><br/></td></tr>
<tr>
<td>
SUMX2PY2<br/><br/></td><td>
Returns the sum of the sum of squares of corresponding values in two arrays<br/><br/></td></tr>
<tr>
<td>
SUMXMY2<br/><br/></td><td>
Returns the sum of squares of differences of corresponding values in two arrays<br/><br/></td></tr>
<tr>
<td>
SUMIFS<br/><br/></td><td>
Adds the cells specified by a given set of conditions or criteria<br/><br/></td></tr>
<tr>
<td>
SEC<br/><br/></td><td>
Returns the secant of an angle<br/><br/></td></tr>
<tr>
<td>
SECH<br/><br/></td><td>
Returns the hyperbolic secant of an angle<br/><br/></td></tr>
<tr>
<td>
COT<br/><br/></td><td>
Returns the cotangent of an angle<br/><br/></td></tr>
<tr>
<td>
COTH<br/><br/></td><td>
Returns the hyperbolic cotangent of a number<br/><br/></td></tr>
<tr>
<td>
CSC<br/><br/></td><td>
Returns the cosecant of an angle<br/><br/></td></tr>
<tr>
<td>
CSCH<br/><br/></td><td>
Returns the hyperbolic cosecant of an angle<br/><br/></td></tr>
<tr>
<td>
TRUNCATE<br/><br/></td><td>
Truncates a number to an integer<br/><br/></td></tr>
<tr>
<td>
COMBINA<br/><br/></td><td>
Returns the number of combinations for a given number of objects<br/><br/></td></tr>
<tr>
<td>
BASE<br/><br/></td><td>
Converts number into text representation <br/><br/></td></tr>
<tr>
<td>
DECIMAL<br/><br/></td><td>
Converts text representation of a number in a given base into decimal number<br/><br/></td></tr>
<tr>
<td>
ARABIC<br/><br/></td><td>
Converts a roman numeral to Arabic<br/><br/></td></tr>
<tr>
<td>
CEILING.MATH<br/><br/></td><td>
Rounds a number to the nearest integer or to the nearest multiple of significance<br/><br/></td></tr>
<tr>
<td>
MDETERM<br/><br/></td><td>
Returns the matrix determinant of an array<br/><br/></td></tr>
<tr>
<td>
MMULT<br/><br/></td><td>
Returns the matrix product of two arrays<br/><br/></td></tr>
<tr>
<td>
MINVERSE<br/><br/></td><td>
Returns the matrix inverse of an array<br/><br/></td></tr>
<tr>
<td>
MUNIT<br/><br/></td><td>
Returns the unit matrix for the specified dimension<br/><br/></td></tr>
</table>

## Statistical functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
AVG<br/><br/></td><td>
Returns the average of its arguments<br/><br/></td></tr>
<tr>
<td>
AVERAGE<br/><br/></td><td>
Returns the average of its arguments<br/><br/></td></tr>
<tr>
<td>
MAX<br/><br/></td><td>
Returns the maximum value in a list of arguments<br/><br/></td></tr>
<tr>
<td>
MIN<br/><br/></td><td>
Returns the minimum value in a list of arguments<br/><br/></td></tr>
<tr>
<td>
MAXA<br/><br/></td><td>
Returns the maximum value in a list of arguments, including numbers, text, and logical values<br/><br/></td></tr>
<tr>
<td>
MINA<br/><br/></td><td>
Returns the smallest value in a list of arguments, including numbers, text, and logical values<br/><br/></td></tr>
<tr>
<td>
MEDIAN<br/><br/></td><td>
Returns the median of the given numbers<br/><br/></td></tr>
<tr>
<td>
CONFIDENCE.T<br/><br/></td><td>
Returns the confidence interval for a population mean<br/><br/></td></tr>
<tr>
<td>
SKEW.P<br/><br/></td><td>
Returns the skewness of a distribution<br/><br/></td></tr>
<tr>
<td>
COVARIANCE.P<br/><br/></td><td>
Returns population covariance, the average of the products deviation for each data point pair in two data sets.<br/><br/></td></tr>
<tr>
<td>
COVARIANCE.S<br/><br/></td><td>
Returns the sample covariance, the average of the products deviation for each data point pair in two data sets.<br/><br/></td></tr>
<tr>
<td>
PERCENTILE.EXC<br/><br/></td><td>
Returns the Kth percentile of the values in a range, where K is in the range 0….1 exclusive<br/><br/></td></tr>
<tr>
<td>
PERCENTILE.INC<br/><br/></td><td>
Returns the Kth percentile of the values in a range, where K is in the range 0….1 inclusive<br/><br/></td></tr>
<tr>
<td>
PERCENTRANK.EXC<br/><br/></td><td>
Returns the rank of value in dataset as a percentage of the data set as percentage (0….1, exclusive) of the dataset<br/><br/></td></tr>
<tr>
<td>
PERCENTRANK.INC<br/><br/></td><td>
Returns the rank of value in dataset as a percentage of the data set as percentage (0….1, inclusive) of the dataset<br/><br/></td></tr>
<tr>
<td>
STDEV.P<br/><br/></td><td>
Calculates standard deviation based on the entire population<br/><br/></td></tr>
<tr>
<td>
STDEV.S<br/><br/></td><td>
Estimates standard deviation based on a sample<br/><br/></td></tr>
<tr>
<td>
PERMUTATIONA<br/><br/></td><td>
Returns the number of permutations for a given number of objects<br/><br/></td></tr>
<tr>
<td>
NORM.DIST<br/><br/></td><td>
Returns the normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
NORM.INV<br/><br/></td><td>
Returns the inverse of the normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
NORM.S.DIST<br/><br/></td><td>
Returns the standard normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
NORM.S.INV<br/><br/></td><td>
Returns the inverse of the standard normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
WEIBULL.DIST<br/><br/></td><td>
Returns the Weibull distribution<br/><br/></td></tr>
<tr>
<td>
EXPON.DIST<br/><br/></td><td>
Returns the exponential distribution<br/><br/></td></tr>
<tr>
<td>
GAMMA.DIST<br/><br/></td><td>
Returns the gamma distribution<br/><br/></td></tr>
<tr>
<td>
GAMMA.INV<br/><br/></td><td>
Returns the inverse of the gamma cumulative distribution<br/><br/></td></tr>
<tr>
<td>
GAMMALN.PRECISE<br/><br/></td><td>
Returns the natural logarithm of the gamma function, Γ(x)<br/><br/></td></tr>
<tr>
<td>
T.INV<br/><br/></td><td>
Returns the left-tailed inverse of the Student’s t-distribution <br/><br/></td></tr>
<tr>
<td>
F.INV.RT<br/><br/></td><td>
Returns the inverse of the right-tailed F probability distribution for two data sets<br/><br/></td></tr>
<tr>
<td>
BINOM.INV<br/><br/></td><td>
Returns the smallest value for which the cumulative binomial distribution is greater than or equal to a criterion value<br/><br/></td></tr>
<tr>
<td>
HYPGEOM.DIST<br/><br/></td><td>
Returns the hypergeometric distribution<br/><br/></td></tr>
<tr>
<td>
LOGNORM.DIST<br/><br/></td><td>
Returns the cumulative log-normal distribution <br/><br/></td></tr>
<tr>
<td>
LOGNORM.INV<br/><br/></td><td>
Returns the inverse of the lognormal distribution<br/><br/></td></tr>
<tr>
<td>
CONFIDENCE.NORM<br/><br/></td><td>
Returns the confidence interval for a population mean, using a normal distribution<br/><br/></td></tr>
<tr>
<td>
CHISQ.DIST.RT<br/><br/></td><td>
Returns the right-tailed probability of the chi-squared distribution<br/><br/></td></tr>
<tr>
<td>
F.DIST<br/><br/></td><td>
Returns the F probability distribution<br/><br/></td></tr>
<tr>
<td>
F.DIST.RT<br/><br/></td><td>
Returns the right-tailed F probability distribution for two data sets<br/><br/></td></tr>
<tr>
<td>
CHISQ.TEST<br/><br/></td><td>
Returns the chi-squared statistical test for independence<br/><br/></td></tr>
<tr>
<td>
CHISQ.INV<br/><br/></td><td>
Returns the inverse of the left-tailed probability of the chi-squared distribution<br/><br/></td></tr>
<tr>
<td>
CHISQ.INV.RT<br/><br/></td><td>
Returns the inverse of the right-tailed probability of the chi-squared distribution<br/><br/></td></tr>
<tr>
<td>
BINOM.DIST<br/><br/></td><td>
Returns the individual term binomial distribution probability<br/><br/></td></tr>
<tr>
<td>
Z.TEST<br/><br/></td><td>
Returns the one-tailed probability value of a z-test<br/><br/></td></tr>
<tr>
<td>
RANK.AVG<br/><br/></td><td>
Returns the statistical rank of a given value, within a supplied array of values (if more than one value has same rank, the average rank is returned)<br/><br/></td></tr>
<tr>
<td>
RANK.EQ<br/><br/></td><td>
Returns the Mode (the most frequently occurring value) of a list of supplied numbers (if more than one value has same rank, the top rank of that set is returned)<br/><br/></td></tr>
<tr>
<td>
NEGBINOM.DIST<br/><br/></td><td>
Returns the negative binomial distribution<br/><br/></td></tr>
<tr>
<td>
POISSON.DIST<br/><br/></td><td>
Returns the Poisson distribution<br/><br/></td></tr>
<tr>
<td>
LOGNORMDIST<br/><br/></td><td>
Returns the cumulative log-normal distribution<br/><br/></td></tr>
<tr>
<td>
QUARTILE.EXC<br/><br/></td><td>
Returns the specified quartile of a set of supplied numbers, based on percentile value 0 - 1 (exclusive)<br/><br/></td></tr>
<tr>
<td>
QUARTILE.INC<br/><br/></td><td>
Returns the specified quartile of a set of supplied numbers, based on percentile value 0 - 1 (inclusive)<br/><br/></td></tr>
<tr>
<td>
AVEDEV<br/><br/></td><td>
Returns the average of the absolute deviations of data points from their mean<br/><br/></td></tr>
<tr>
<td>
AVERAGEA<br/><br/></td><td>
Returns the Average of a list of supplied numbers, counting text and the logical value FALSE as the value 0 and counting the logical value TRUE as the value 1<br/><br/></td></tr>
<tr>
<td>
GAMMALN<br/><br/></td><td>
Calculates the natural logarithm of the gamma function for a supplied value<br/><br/></td></tr>
<tr>
<td>
GAMMADIST<br/><br/></td><td>
Returns the gamma distribution<br/><br/></td></tr>
<tr>
<td>
GAMMAINV<br/><br/></td><td>
Returns the inverse gamma cumulative distribution<br/><br/></td></tr>
<tr>
<td>
GEOMEAN<br/><br/></td><td>
Returns the geometric mean of a set of supplied numbers<br/><br/></td></tr>
<tr>
<td>
HARMEAN<br/><br/></td><td>
Returns the harmonic mean of a set of supplied numbers<br/><br/></td></tr>
<tr>
<td>
HYPGEOMDIST<br/><br/></td><td>
Returns the hypergeometric distribution <br/><br/></td></tr>
<tr>
<td>
INTERCEPT<br/><br/></td><td>
Calculates the best fit regression line, through a supplied series of x- and y- values and returns the value at which this line intercepts the y-axis<br/><br/></td></tr>
<tr>
<td>
BINOMDIST<br/><br/></td><td>
Returns the individual term binomial distribution probability<br/><br/></td></tr>
<tr>
<td>
CHIDIST<br/><br/></td><td>
Returns the right-tailed probability of the chi-squared distribution<br/><br/></td></tr>
<tr>
<td>
CHIINV<br/><br/></td><td>
Returns the inverse of the right-tailed probability of the chi-squared distribution<br/><br/></td></tr>
<tr>
<td>
CHITEST<br/><br/></td><td>
Returns the chi-squared statistical test for independence<br/><br/></td></tr>
<tr>
<td>
NORMDIST<br/><br/></td><td>
Returns the normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
NORMINV<br/><br/></td><td>
Returns the inverse of the normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
NORMSINV<br/><br/></td><td>
Returns the inverse of the standard normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
NORMSDIST<br/><br/></td><td>
Returns the standard normal cumulative distribution<br/><br/></td></tr>
<tr>
<td>
CONFIDENCE<br/><br/></td><td>
Returns the confidence interval for a population mean, using a normal distribution <br/><br/></td></tr>
<tr>
<td>
CORREL<br/><br/></td><td>
Returns the correlation coefficient between two sets of values<br/><br/></td></tr>
<tr>
<td>
COUNT<br/><br/></td><td>
Returns the number of numerical values in a supplied set of cells or values<br/><br/></td></tr>
<tr>
<td>
COUNTA<br/><br/></td><td>
Returns the number of non-blanks in a supplied set of cells or values<br/><br/></td></tr>
<tr>
<td>
COUNTBLANK<br/><br/></td><td>
Returns the number of blank cells in a supplied range<br/><br/></td></tr>
<tr>
<td>
COUNTIF<br/><br/></td><td>
Returns the number of cells (of a supplied range), that satisfy a given criteria<br/><br/></td></tr>
<tr>
<td>
COVAR<br/><br/></td><td>
Returns population covariance (i.e. the average of the products of deviations for each pair within two supplied data sets)<br/><br/></td></tr>
<tr>
<td>
CRITBINOM<br/><br/></td><td>
Returns the smallest value for which the cumulative binomial distribution is greater than or equal to a criterion value<br/><br/></td></tr>
<tr>
<td>
DEVSQ<br/><br/></td><td>
Returns the sum of the squares of the deviations of a set of data points from their sample mean<br/><br/></td></tr>
<tr>
<td>
EXPONDIST<br/><br/></td><td>
Returns the exponential distribution<br/><br/></td></tr>
<tr>
<td>
FDIST<br/><br/></td><td>
Returns the F probability distribution (probability density or cumulative distribution function)<br/><br/></td></tr>
<tr>
<td>
FINV<br/><br/></td><td>
Returns the inverse of the right-tailed F probability distribution for two data sets<br/><br/></td></tr>
<tr>
<td>
FISHER<br/><br/></td><td>
Returns the Fisher transformation<br/><br/></td></tr>
<tr>
<td>
FISHERINV<br/><br/></td><td>
Returns the inverse of the Fisher transformation<br/><br/></td></tr>
<tr>
<td>
FORECAST<br/><br/></td><td>
Predicts a future point on a linear trend line fitted to a supplied set of x- and y- values<br/><br/></td></tr>
<tr>
<td>
KURT<br/><br/></td><td>
Returns the kurtosis of a data set<br/><br/></td></tr>
<tr>
<td>
LARGE<br/><br/></td><td>
Returns the Kth LARGEST value from a list of supplied numbers, for a given value K<br/><br/></td></tr>
<tr>
<td>
LOGNORMDIST<br/><br/></td><td>
Returns the cumulative log-normal distribution<br/><br/></td></tr>
<tr>
<td>
LOGINV<br/><br/></td><td>
Returns the inverse of the lognormal distribution<br/><br/></td></tr>
<tr>
<td>
MODE<br/><br/></td><td>
Returns the Mode (the most frequently occurring value) of a list of supplied numbers<br/><br/></td></tr>
<tr>
<td>
NEGBINOMDIST<br/><br/></td><td>
Returns the negative binomial distribution<br/><br/></td></tr>
<tr>
<td>
PEARSON<br/><br/></td><td>
Returns the Pearson product moment correlation coefficient<br/><br/></td></tr>
<tr>
<td>
PERCENTILE<br/><br/></td><td>
Returns the K'th percentile of values in a supplied range, where K is in the range 0 - 1 (inclusive)<br/><br/></td></tr>
<tr>
<td>
PERCENTILERANK<br/><br/></td><td>
Returns the rank of a value in a data set, as a percentage (0 - 1 inclusive)<br/><br/></td></tr>
<tr>
<td>
PERMUT<br/><br/></td><td>
Returns the number of permutations for a given number of objects<br/><br/></td></tr>
<tr>
<td>
POISSON<br/><br/></td><td>
Returns the Poisson distribution<br/><br/></td></tr>
<tr>
<td>
PROB<br/><br/></td><td>
Returns the probability that values in a supplied range are within given limits<br/><br/></td></tr>
<tr>
<td>
QUARTILE<br/><br/></td><td>
Returns the specified quartile of a set of supplied numbers, based on percentile value 0 - 1 (inclusive)<br/><br/></td></tr>
<tr>
<td>
RANQ<br/><br/></td><td>
Returns the Mode (the most frequently occurring value) of a list of supplied numbers (if more than one value has same rank, the top rank of that set is returned)<br/><br/></td></tr>
<tr>
<td>
RSQ<br/><br/></td><td>
Returns the square of the Pearson product moment correlation coefficient<br/><br/></td></tr>
<tr>
<td>
SKEW<br/><br/></td><td>
Returns the skewness of a distribution<br/><br/></td></tr>
<tr>
<td>
COUNTIFS<br/><br/></td><td>
Returns the number of cells (of a supplied range), that satisfy a set of given criteria<br/><br/></td></tr>
<tr>
<td>
AVERAGEIF<br/><br/></td><td>
Calculates the Average of the cells in a supplied range, that satisfy a given criteria<br/><br/></td></tr>
<tr>
<td>
AVERAGEIFS<br/><br/></td><td>
Calculates the Average of the cells in a supplied range, that satisfy multiple criteria<br/><br/></td></tr>
<tr>
<td>
MODE.SNGL<br/><br/></td><td>
Returns the Mode (the most frequently occurring value) of a list of supplied numbers <br/><br/></td></tr>
<tr>
<td>
MODE.MULT<br/><br/></td><td>
Returns a vertical array of the most frequently occurring values in an array or range of data <br/><br/></td></tr>
<tr>
<td>
SLOPE<br/><br/></td><td>
Returns the slope of the linear regression line through a supplied series of x- and y- values<br/><br/></td></tr>
<tr>
<td>
MAXIFS<br/><br/></td><td>
Returns the largest value from a subset of values in a list that are specified according to one or more criteria<br/><br/></td></tr>
<tr>
<td>
MINIFS<br/><br/></td><td>
Returns the smallest value from a subset of values in a list that are specified according to one or more criteria<br/><br/></td></tr>
<tr>
<td>
BETADIST<br/><br/></td><td>
Returns the cumulative beta probability density function<br/><br/></td></tr>
<tr>
<td>
SMALL<br/><br/></td><td>
Returns the Kth SMALLEST value from a list of supplied numbers, for a given value K<br/><br/></td></tr>
<tr>
<td>
STANDARDIZE<br/><br/></td><td>
Returns a normalized value<br/><br/></td></tr>
<tr>
<td>
STDEV<br/><br/></td><td>
Returns the standard deviation of a supplied set of values (which represent a sample of a population)<br/><br/></td></tr>
<tr>
<td>
STDEVA<br/><br/></td><td>
Returns the standard deviation of a supplied set of values (which represent a sample of a population), counting text and the logical value FALSE as the value 0 and counting the logical value TRUE as the value 1<br/><br/></td></tr>
<tr>
<td>
STDEVP<br/><br/></td><td>
Returns the standard deviation of a supplied set of values (which represent an entire population)<br/><br/></td></tr>
<tr>
<td>
STDEVPA<br/><br/></td><td>
Returns the standard deviation of a supplied set of values (which represent an entire population), counting text and the logical value FALSE as the value 0 and counting the logical value TRUE as the value 1<br/><br/></td></tr>
<tr>
<td>
STEYX<br/><br/></td><td>
Returns the standard error of the predicted y-value for each x in the regression line for a set of supplied x- and y- values<br/><br/></td></tr>
<tr>
<td>
GROWTH<br/><br/></td><td>
Returns numbers in a exponential growth trend, based on a set of supplied x- and y- values<br/><br/></td></tr>
<tr>
<td>
LOGEST<br/><br/></td><td>
Returns the parameters of an exponential trend for a supplied set of x- and y- values<br/><br/></td></tr>
<tr>
<td>
TRIMMEAN<br/><br/></td><td>
Returns the mean of the interior of a supplied set of values<br/><br/></td></tr>
<tr>
<td>
VAR<br/><br/></td><td>
Returns the variance of a supplied set of values (which represent a sample of a population)<br/><br/></td></tr>
<tr>
<td>
VARA<br/><br/></td><td>
Returns the variance of a supplied set of values (which represent a sample of a population), counting text and the logical value FALSE as the value 0 and counting the logical value TRUE as the value 1<br/><br/></td></tr>
<tr>
<td>
VARP<br/><br/></td><td>
Returns the variance of a supplied set of values (which represent an entire population)<br/><br/></td></tr>
<tr>
<td>
VARPA<br/><br/></td><td>
Returns the variance of a supplied set of values (which represent an entire population), counting text and the logical value FALSE as the value 0 and counting the logical value TRUE as the value 1<br/><br/></td></tr>
<tr>
<td>
WEIBULL<br/><br/></td><td>
Returns the Weibull distribution<br/><br/></td></tr>
<tr>
<td>
ZTEST<br/><br/></td><td>
Returns the one-tailed probability value of a z-test<br/><br/></td></tr>
</table>

## Text Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
LEFT<br/><br/></td><td>
Returns a specified number of characters from the start of a supplied text string<br/><br/></td></tr>
<tr>
<td>
BAHTTEXT<br/><br/></td><td>
Converts a number, plus the suffix "Baht" into Thai text<br/><br/></td></tr>
<tr>
<td>
EXACT<br/><br/></td><td>
Tests if two supplied text strings are exactly the same and if so, returns TRUE; Otherwise, returns FALSE. (case-sensitive)<br/><br/></td></tr>
<tr>
<td>
LEN<br/><br/></td><td>
Returns the length of a supplied text string<br/><br/></td></tr>
<tr>
<td>
TRUNC<br/><br/></td><td>
Truncates a number to an integer removing decimal part or fractional part <br/><br/></td></tr>
<tr>
<td>
MID<br/><br/></td><td>
Returns a specified number of characters from the middle of a supplied text string<br/><br/></td></tr>
<tr>
<td>
RIGHT<br/><br/></td><td>
Returns a specified number of characters from the end of a supplied text string<br/><br/></td></tr>
<tr>
<td>
VALUE<br/><br/></td><td>
Converts a text string into a numeric value<br/><br/></td></tr>
<tr>
<td>
DOLLAR<br/><br/></td><td>
Converts a supplied number into text, using a currency format<br/><br/></td></tr>
<tr>
<td>
FIXED<br/><br/></td><td>
Rounds a supplied number to a specified number of decimal places, and then converts this into text<br/><br/></td></tr>
<tr>
<td>
LOWER<br/><br/></td><td>
Converts all characters in a supplied text string to lower case<br/><br/></td></tr>
<tr>
<td>
UPPER<br/><br/></td><td>
Converts all characters in a supplied text string to upper case<br/><br/></td></tr>
<tr>
<td>
TEXT<br/><br/></td><td>
Converts a supplied value into text, using a user-specified format<br/><br/></td></tr>
<tr>
<td>
TEXTJOIN<br/><br/></td><td>
Joins together two or more text strings, separated by a delimiter<br/><br/></td></tr>
<tr>
<td>
TRIM<br/><br/></td><td>
Removes duplicate spaces, and spaces at the start and end of a text string<br/><br/></td></tr>
<tr>
<td>
CLEAN<br/><br/></td><td>
Removes all non-printable characters from a supplied text string<br/><br/></td></tr>
<tr>
<td>
CONCATENATE<br/><br/></td><td>
Joins together two or more text strings<br/><br/></td></tr>
<tr>
<td>
SUBSTITUTE<br/><br/></td><td>
Substitutes all occurrences of a search text string, within an original text string, with the supplied replacement text<br/><br/></td></tr>
<tr>
<td>
T<br/><br/></td><td>
Tests whether a supplied value is text and if so, returns the supplied text; If not, returns an empty text string.<br/><br/></td></tr>
<tr>
<td>
CODE<br/><br/></td><td>
Returns the numeric code for the first character of a supplied string<br/><br/></td></tr>
<tr>
<td>
FINDB<br/><br/></td><td>
Returns the position of a supplied character or text string from within a supplied text string (case-sensitive)<br/><br/></td></tr>
<tr>
<td>
LEFTB<br/><br/></td><td>
Returns a specified number of characters from the start of a supplied text string<br/><br/></td></tr>
<tr>
<td>
LENB<br/><br/></td><td>
Returns the length of a supplied text string<br/><br/></td></tr>
<tr>
<td>
MINB<br/><br/></td><td>
Returns the smallest value in a set of values. does not ignore logical text and values<br/><br/></td></tr>
<tr>
<td>
RIGHTB<br/><br/></td><td>
Returns a specified number of characters from the end of a supplied text string<br/><br/></td></tr>
<tr>
<td>
NUMBERVALUE<br/><br/></td><td>
Converts text to a number, in a locale-independent way<br/><br/></td></tr>
<tr>
<td>
PROPER<br/><br/></td><td>
Converts all characters in a supplied text string to proper case (i.e. letters that do not follow another letter are upper case and all other characters are lower case)<br/><br/></td></tr>
<tr>
<td>
CHAR<br/><br/></td><td>
Returns the character that corresponds to a supplied numeric value<br/><br/></td></tr>
<tr>
<td>
REPLACE<br/><br/></td><td>
Replaces all or part of a text string with another string (from a user supplied position)<br/><br/></td></tr>
<tr>
<td>
REPT<br/><br/></td><td>
Returns a string consisting of a supplied text string, repeated a specified number of times<br/><br/></td></tr>
<tr>
<td>
SEARCHB<br/><br/></td><td>
Returns the position of a supplied character or text string from within a supplied text string (non-case-sensitive)<br/><br/></td></tr>
<tr>
<td>
UNICHAR<br/><br/></td><td>
Returns the Unicode character that is referenced by the given numeric value<br/><br/></td></tr>
<tr>
<td>
UNICODE<br/><br/></td><td>
Returns the number (code point) corresponding to the first character of a supplied text string <br/><br/></td></tr>
</table>

## Web Functions

<table>
<tr>
<th>
Name<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
ENCODEURL<br/><br/></td><td>
Returns a URL-encoded string <br/><br/></td></tr>
<tr>
<td>
FILTERXML<br/><br/></td><td>
Returns data from XML content, using a specified XPath<br/><br/></td></tr>
<tr>
<td>
WEBSERVICE<br/><br/></td><td>
Returns data from a web service on the Internet or Intranet<br/><br/></td></tr>
</table>


