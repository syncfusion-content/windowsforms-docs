---
layout: post
title: Date Time in Windows Forms Calculation Engine | Syncfusion
description: Learn about Date Time support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Date Time in Windows Forms Calculation Engine (Calculate)

## DATE



The `Date` function returns the sequential serial number that represents a particular date.



**Syntax:**



_DATE(year, month, day)_



**where:**



* year can be one to four digits. Year is interpreted based on 1900.



* When a year is between 0 (zero) and 1899 (inclusive), the value is added to 1900 to calculate the year. For example, Date (102, 11, 12) returns as November 12, 2002 (1900+102).



* When a year is between 1900 and 9999 (inclusive), the value is used as it is, for example, Date(2002,11,12) returns as November 12, 2002.



* month is a number representing the month of the year.



* day is a number representing the day of the month.



**Remarks:**



* Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and November 12, 2002 is serial number 37572 because it is 37572 days after January 1, 1900.

## DATEDIF

The `DATEDIF` function returns the number of days, months or years between two dates.


**Syntax:**

_DATEDIF(start_date,end_date,unit)_

**where:**

* start_date denotes a date that represents the first, or starting, date of the period. Dates may be entered as text strings within quotation marks (for example, "2001/1/30"), as serial numbers (for example, 36921, which represents January 30, 2001, if you're using the 1900 date system), or as the results of other formulas or functions (for example, DATEVALUE("2001/1/30")).

* end_date denotes a date that represents the last, or ending, date of the period.

* unit is the type of information that you want returned:

<table>
<tr>
<th>
<b>Unit</b></th><th>
<b>Returns</b></th></tr>
<tr>
<td>
Y</td><td>
The number of complete years in the period.</td></tr>
<tr>
<td>
M</td><td>
The number of complete months in the period.</td></tr>
<tr>
<td>
D</td><td>
The number of days in the period.</td></tr>
<tr>
<td>
MD</td><td>
The difference between the days in start_date and end_date. The months and years of the dates are ignored.</td></tr>
<tr>
<td>
YM</td><td>
The difference between the months in start_date and end_date. The days and years of the dates are ignored</td></tr>
<tr>
<td>
YD</td><td>
The difference between the days of start_date and end_date. The years of the dates are ignored.</td></tr>
</table>

**Remarks:**

* If the Start_date is greater than the End_date, the result will be #NUM!.

* Dates are stored as sequential serial numbers so they can be used in calculations. By default, December 31, 1899 is serial number 1, and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.

* The DATEDIF function is useful in formulas where you need to calculate an age.


## DATEValue



The `DateValue` function returns the serial number of the date represented by the date_text.



**Syntax:**



_DATEVALUE(date_text)_



**where:**



date_text is the text that represents a date as a formatted string. For example, 11/12/2002 or 12-Nov-2002 are text strings within quotation marks that represent dates. When the year portion of the date_text is omitted, DateValue uses the current year from your computer's built-in clock. The time information in the date_text is ignored.



**Remarks:**



* Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1, and November 12, 2002 is serial number 37572 because it is 37572 days after January 1, 1900.



* Most functions automatically convert date values to serial numbers.



## DAY



The `Day` function returns the day of a date represented by a serial number. The `Day` is given as an integer ranging from 1 to 31.



**Syntax:**



_DAY(serial_number)_



**where:**



serial_number is the date of the day you are trying to find. Dates should be entered by using the `Date` function or as results of other formulas or functions. For example, use Date(2002,4,23) for the 23rd day of April, 2002.



## DAYS360



The `Days360` function returns the number of days between two dates based on a 360-day year (twelve 30-day months) that is used in some accounting calculations.



**Syntax:**



_DAYS360(start_date, end_date, method)_



**where:**



* start_date and end_date are the two dates between which you want to know the number of days. When start_date occurs after end_date, `Days360` returns a negative number. Dates should be entered by using the **Date** function or as results of other formulas or functions.



* method is a logical value that specifies whether to use the U.S. or European method in the calculation. When method is:



* False or omitted-The calculation uses the U.S. (NASD) method. When the starting date is the 31st of a month, it becomes equal to the 30th of the same month. When the ending date is the 31st of a month and the starting date is earlier than the 30th of a month, the ending date becomes equal to the 1st of the next month, otherwise the ending date becomes equal to the 30th of the same month.



* True-The calculation uses the European method. Starting dates and ending dates that occur on the 31st of a month become equal to the 30th of the same month.



## DAYS



The `Days` function retrieves the number of days between two dates.



**Syntax:**



_DAYS(endDate, startDate)_



**where:**



endDate and startDate are the two dates between which you want to know the number of days.



## EDATE



The `EDate` function returns a date that is a specified number of months before or after a supplied start date. 



**Syntax:**



_EDATE( startDate, Months )_ 



**where:**



* startDate is the initial date from where to count the number of months. 



* Months is the number of months to add to (or subtract from) the startDate.



**Remarks:**



* `#VALUE!` occurs when the supplied startDate is not a valid date.



* `#VALUE!` occurs when the supplied Months argument is non-numeric.



## EOMONTH



The `EOMONTH` function returns the last day of the month that is a specified number of months before or after an initially supplied start date.  



**Syntax:**



_EOMONTH(startDate, Months)_ 



**where:**



* startDate is the initial date.



* Months is the number of months to add to (or subtract from) the startDate before returning the last day of the resulting month. 



**Remarks:**



* `#VALUE!` occurs when any of the supplied argument is not a numeric value. 



* `#NUM!` occurs when the supplied startDate is not a valid date.



* `#NUM!` occurs when the supplied startDate plus the value of the months argument is not a valid date.



## HOUR



The `Hour` function returns the hour of a time value. The hour is given as an integer, ranging from 0 (12:00 A.M.) to 23 (11:00 P.M.).



**Syntax:**



_HOUR(serial_number)_



**where:**



serial_number is the time that contains the hour you want to find. Times may be entered as text strings within quotation marks for example, "6:00 PM", as decimal numbers for example, 0.75, that represents 6:00 PM, or as results of other formulas or functions for example, TimeValue"6:00 PM".



## ISOWEEKNUM



For a given date, the `ISOWeekNum` function returns the ISO week number of that year.



**Syntax:**



_ISOWEEKNUM( DateTime)_ 



**where:**



DateTime is used for date and time calculation.



**Remarks:**



* `#NUM!` occurs when the date argument is not a valid number.



* `#VALUE!` occurs when the date argument is not a valid date type.



## MINUTE



The `Minute` function returns the minutes of a time value. The `Minute` is given as an integer ranging from 0 to 59.



**Syntax:**



_MINUTE(serial_number)_



**where:**



serial_number is the time that contains the minute you want to find. Times may be entered as text strings within quotation marks (for example, "6:00 PM"), as decimal numbers (for example, 0.75, that represents 6:00 PM), or as results of other formulas or functions (for example, TIMEVALUE ("6:00 PM")). 



**Remarks:**



* Time values are a portion of a date value represented by a decimal number (for example, 12:00 PM is represented as 0.5).



## MONTH



The `Month` function returns the month of a date represented by a serial number. The `Month` is given as an integer ranging from 1 (January) to 12 (December).



**Syntax:**



_MONTH(serial_number)_



**where:**



serial_number is the date of the month you are trying to find. Dates should be entered by using the `Date` function or as results of other formulas or functions. For example, use Date(2002,11,12) for the 12th day of November, 2002.



**Remarks:**



Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.



## NETWORKDAYS



The `NETWORKDAYS` function is used to calculate the number of whole work days between two given dates. This includes all weekdays from Monday to Friday, but excludes a supplied list of holidays.



**Syntax:**



_NETWORKDAYS( start_date, end_date, [holidays] )_



**where:**



* start_date: The start of the period to find the working days



* end_date: The end of the period to find the working days.



* &#91;holidays&#93;:  An optional argument, which specifies an array of dates that are not to be counted as working days.



**Remarks:**


• If any argument is not a valid date, NETWORKDAYS returns the `#VALUE!` error value.



## NETWORKDAYS.INTL



`NETWORKDAYS.INTL` calculates the number of whole work days between two supplied dates.



**Syntax:**



_NETWORKDAYS.INTL(startDate, endDate)_ 



**where:**



* startDate is the start of the period where days are counted.



* endDate is the end of the period where days are counted.



**Remarks:**



* `#VALUE!` occurs when the supplied startDate and endDate are not valid dates. 



## NOW



The `Now` function returns the serial number of the current date and time. 



**Syntax:**



_NOW( )_



**Remarks:**



* Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900



* Numbers to the right of the decimal point in the serial number represent the time; and numbers to the left represent the date. For example, the serial number .5 represents the time 12:00 noon.



## SECOND



Returns the seconds of a time value. The `Second` is given as an integer in the range 0 (zero) to 59.



**Syntax:**



_SECOND(serial_number)_



**where:**

serial_number is the time that contains the seconds you want to find.



**Remarks:**

Time values are a portion of a date value and are represented by a decimal number (for example, 12:00 PM is represented as 0.5 because it is half of a day).



## TIME



Returns the decimal number for a particular time. The decimal number returned by `Time` is a value ranging from 0 (zero) to 0.99999999, representing the times from 0:00:00 (12:00:00 A.M.) to 23:59:59 (11:59:59 P.M.).



**Syntax:**



_TIME(hour, minute, second)_



**where:**



* hour is a number from 0 (zero) to 23 representing the hour.



* minute is a number from 0 to 59 representing the minute.



* second is a number from 0 to 59 representing the second.



## TIMEValue



The `TimeValue` function returns the decimal number of the time represented by a text string. The decimal number is a value ranging from 0 (zero) to 0.99999999, representing the times from 0:00:00 (12:00:00 A.M.) to 23:59:59 (11:59:59 P.M.).



**Syntax:**



_TIMEVALUE(time_text)_



**where:**



* time_text is a text string that represents a time as a formatted string. For example, "6:45 PM" and "18:45" text strings within quotation marks that represent time.



**Remarks:**



Date information in time_text is ignored.



## TODAY



The `Today` function returns the serial number of the current date. The serial number is the number of days since Jan 1, 1900.



**Syntax:**



_TODAY( )_



**Remarks:**



Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.



## WEEKDAY



The `Weekday` function returns the day of the week corresponding to a date. The day is given as an integer, ranging from 1 (Sunday) to 7 (Saturday), by default.



**Syntax:**



_WEEKDAY(serial_number,return_type)_



**where:**



* serial_number is a sequential number that represents the date of the day you are trying to find. Dates should be entered by using the `Date` function or as results of other formulas or functions. For example, use Date (2008, 5, 23) for the 23rd day of May 2008.



* return_type is a number that determines the type of return value.



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



**Remarks:**



* Dates are stored as sequential serial numbers so that they can be used in calculations. By default, 



* January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.



## WEEKNUM



For a supplied a date, the `WEEKNUM` function returns an integer representing the week number (from 1 to 53) of the year. 



**Syntax:**



_WEEKNUM( serialNum, [returnType] )_ 



**where:**



* serialNum is the date that you want to return the week number for. 



* [returnType] is an optional argument that specifies which numbering system should be used and which weekday should be treated as the start of the week.



**Remarks:**



* `#VALUE!` occurs when the supplied serialNum cannot be recognized as a numeric value or a date. 



* `#NUM!` occurs when the supplied [returnType] argument is not one of the above listed permitted values. 



* `#NUM!` occurs when the supplied serialNum argument is numeric, but is out of range for the current date base. 



## WORKDAY.INTL



The `WORKDAY.INTL` function returns a date that is a supplied number of working days (excluding weekends and holidays) ahead of a given start date.



**Syntax:**



_WORKDAY.INTL (startDate, days, [weekend], [holidays])_ 



**where:**



* startDate is the initial date from which to count the number of workdays. 



* days are number of workdays to add onto startDate. 



* [weekend] is an optional argument that specifies the weekdays to be counted as weekends. 



* [holidays] is an optional argument that specifies an array of dates that are not to be counted as working days. 



**Remarks:**



* `#NUM!` occurs when the supplied startDate plus the supplied days argument results in an invalid date.



* `#NUM!` occurs when the supplied [weekend] argument is invalid (see above explanation of this argument).



* `#VALUE!` occurs when the supplied startDate or any of the value in the supplied [holidays] array is not valid dates.



* `#VALUE!` occurs when the supplied days argument is non-numeric.



## WORKDAY



The `Workday` function returns a date that is a supplied number of working days (excluding weekends and holidays) ahead of a given start date. 



**Syntax:**



_WORKDAY(startDate, Days, [holidays])_ 



**where:**



* startDate is the initial date from which to count the number of workdays. 



* Days are number of workdays to add onto startDate. 



* [holidays] is an optional argument, which specifies an array of dates that are not to be counted as working days. 



**Remarks:**



* `#NUM!` occurs when the supplied startDate plus the supplied days argument results in an invalid date. 



* `#VALUE!` occurs when the supplied startDate or any of the value in the supplied [holidays] array is not valid dates, when the supplied days argument is non-numeric.





## YEAR



The `Year` function returns the year corresponding to a date. The year is returned as an integer in the range 1900-9999.



**Syntax:**



_YEAR(serial_number)_



**where:** 



serial_number is the date of the year you want to find. Dates should be entered by using the DATE function or as results of other formulas or functions. For example, use DATE(2002,11,12) for the 12th day of November 2002.



**Remarks:**


Dates are stored as sequential serial numbers so that they can be used in calculations. By default, January 1, 1900 is serial number 1 and January 1, 2008 is serial number 39448 because it is 39,448 days after January 1, 1900.





## YEARFRAC



The `YEARFRAC` function Calculates the fraction of the year represented by the number of whole days between two dates.



**Syntax:**



_YEARFRAC(start_date, end_date, [basis])_



**where:** 



* start_date denotes a date that represents the start date.



* end_date  denotes a date that represents the end date.



* basis  denotes the type of day count basis to use.



**Remarks:**



* excel stores dates as sequential serial numbers so they can be used in calculations. By default, January 1, 1900 is serial number 1, and January 1, 2018 is serial number 43101 because it is 43,101 days after January 1, 1900.


* all arguments are truncated to integers.



* start_date or end_date are not valid dates, it returns the #VALUE! error value.



basis < 0 or if basis > 4, it returns the #NUM! error value.
