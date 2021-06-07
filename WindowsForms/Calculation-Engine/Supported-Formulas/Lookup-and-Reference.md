---
layout: post
title: Lookup and Reference in Windows Forms Calculation Engine | Syncfusion
description: Learn about Lookup and Reference support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Lookup and Reference in Windows Forms Calculation Engine (Calculate)



## ADDRESS

`Address` function returns the address of a cell in a worksheet when row and column numbers are given.

**Syntax:**

_ADDRESS(row_num, column_num, [abs_num], [a1], [sheet_text])_

**where:**

* row_num: A numeric value that specifies the row number.

* column_num: A numeric value that specifies the column number

* abs_num: This value is optional. A numeric value that specifies the type of reference to return.

* a1: A logical value that specifies the A1 or R1C1 reference style.

* sheet_text: A text value that specifies the name of the worksheet to be used as a external sheet reference.

## AREAS

The `Areas` function returns the number of areas that make up the reference. 

**Syntax:**

_AREAS(reference)_

**where:**

reference is an input argument. 

## CHOOSE

The `Choose` function returns the value from a range of values on a specific index.

**Syntax:**

_CHOOSE(index, valuearray)_

**where:**

* index specifies the index from where you want to retrieve the value.

* valuearray is the array of value from where you want to retrieve the value.

## COLUMN

The `Column` function returns the column index of the provided column in range.

**Syntax:**

_COLUMN(range)_

**where:**

range is to provide the column in range.

## COLUMNS

The `Columns` function returns the number of columns that are contained within the range. 

**Syntax:**

_COLUMNS(array)_ 

**where:**

array argument is the range of the number of columns. 

## FORMULATEXT

`FormulaText` function returns the formula as a string.

**Syntax:**

_FORMULATEXT (reference)_

**where:**

reference is the reference to a cell or range of cells.

**Remarks:**

* `#N/A` occurs when the reference argument is to another workbook that is not opened.

* `#N/A` occurs when the reference argument is to a range containing more than one cell.

* `#N/A` occurs when the cell used as the reference argument does not contain a formula.

* `#N/A` occurs when the formula in the cell is longer than 8192 characters.

* `#N/A` occurs when the formula cannot be displayed in the worksheet.

* `#N/A` occurs when an external workbook that contains the formula is not opened.

## HLOOKUP

Searches for a value in the top row of the array of values and then returns a value in the same column from a row you specify in the array. Use `HLookup` when your comparison values are located in a row across the top of a table of data and you want to look down a specified number of rows. Use `VLookup` when your comparison values are located in a column to the left of the data you want to find.

**Syntax:**

_HLOOKUP(lookup_value, table_array, row_index_num, range_lookup)_

**where:**

* `lookup_value` is the value to be found in the first row of the table. `Lookup_value` can be a value, reference, or text string.

* `table_array` is a table of information in which data is looked up. Use a reference to a range or a range name.

* `row_index_num` is the row number in `table_array` from which the matching value returns. A `row_index_num` of 1 returns the first row value in `table_array` , a **row_index_num** of 2 returns the second row value in **table_array**, and so on.

* `range_lookup` is a logical value that specifies whether you want `HLookup` to find an exact match or an approximate match. When `True` or omitted, an approximate match is returned. In other words, when an exact match is not found, the next largest value that is lesser than the `lookup_value` is returned. (This requires your lookup values to be sorted.) when `False`, `HLookup` finds an exact match

## HYPERLINK

The `Hyperlink` function creates a hyperlink to a document in a supplied location.

**Syntax:**

_HYPERLINK(linkLocation, friendlyName)_

**where:**

* linkLocation is the address of the file to link. 

* friendlyName is the text to display in the cell. 

## INDEX

The `Index` function returns the exact value from the provided row index and column index from a specific range.

**Syntax:**

_INDEX(range,row,col)_

**where:**

* range is a string to mention the specific range.

* row is the integer that indicates the specific row index.

* col is the integer that indicates the specific column index.

## INDIRECT

The `Indirect` function returns the reference as a string instead of providing the content or range within it.

**Syntax:**

_INDIRECT(content)_

**where:**

content is the string that provides the textual representation of the cell.

##   OFFSET

The `Offset` function returns a reference to a range that is offset a number of rows and columns from any given range or cell.

**Syntax:**

_OFFSET( range, rows, columns, height, width )_

**where:**

* range is the starting range from which you want to apply the offset.

* rows is the number of rows you want to apply as the offset to the range. This can be either a positive or negative number.

* columns is the number of columns you want to apply as the offset to the range. This can be either a positive or a negative number.

* height is the number of rows that you want the returned range to be.

* width is the number of columns that you want the returned range to be.

## LOOKUP

`Lookup` function returns a value either from one-row or one-column range, or from an array. `Lookup` function has two syntax forms: vector and array.

`Vector Form` The vector application page of `Lookup` looks in a one-row or one-column range for a value and then returns a value from the same position in a second one-row or one-column range.

**Syntax:**

_LOOKUP(lookup_value, lookup_vector, result_vector)_

* lookup_value 	searches in  the first vector. It can be a number, text, a logical value, or a name or reference that refers to a value.

* lookup_vector denotes the cell range which contains only one row/column. The values in lookup_vector can be text, numbers, or logical values.

* result_vector denotes the cell range that contains only one row or column. The result_vector argument must be the same size as lookup_vector. It has to be the same size.

**where:**

* `Array form` : The array application page of `Lookup` looks in the first row or column of an array for the specified value and then returns a value from the same position in the last row or column of the array.

**Syntax:**

_LOOKUP(lookup_value, array)_

**Remarks:**

* When the **Lookup** function cannot find the `lookup_value`, the function matches the largest value in `lookup_vector` that is less than or equal to `lookup_value`.

* When `lookup_value` is smaller than the smallest value in `lookup_vector`, `Lookup` returns the `#N/A` error value.


## TRANSPOSE


The `Transpose` function copies a horizontal range of cells into a vertical range and vice versa.

**Syntax:**

_TRANSPOSE(array)_

**where:**

array argument is a range of spreadsheet cells.

## VLOOKUP

Looks up a supplied value in the first column of a table, and returns the corresponding value from another column.

**Syntax:**

_VLOOKUP (value, table, col_index, [range_lookup])_

**where:**

* value - The value to look for in the first column of a table.

* table - The table from which to retrieve a value.

* col_index - The column in the table from which to retrieve a value.

* range_lookup- TRUE = approximate match (default). FALSE = exact match.

## MATCH

Finds the relative position of a value in a supplied array

**Syntax:**

_MATCH(lookup_value, lookup_array, [match_type])_

**where:**

* lookup_value denotes the value that you want to match in lookup_array. For example, when you look up someone's number in a telephone book, you are using the person's name as the lookup value, but the telephone number is the value you want.

* lookup_array denotes the range of cells being searched.

* match_type denotes the number -1, 0, or 1. The match_type argument specifies how Excel matches lookup_value with values in lookup_array. The default value for this argument is 1.

## ROW

Returns the row number of a supplied range, or of the current cell.

**Syntax:**

_ROW([reference])_

**where:**

* reference denotes the cell or range of cells for which you want the row number.

	* If reference is omitted, it is assumed to be the reference of the cell in which the ROW function appears.

	* If reference is a range of cells, and if ROW is entered as a vertical array, ROW returns the row numbers of reference as a vertical array.

	* Reference cannot refer to multiple areas.

## ROWS

Returns the number of rows in a supplied range.


**Syntax:**

_ROWS(array)_

**where:**

array denotes an array, an array formula, or a reference to a range of cells for which you want the number of rows.

## SHEET

Returns the sheet number of the referenced sheet.

**Syntax:**

_SHEET(value)_

**where:**

value is the name of a sheet or a reference for which you want the sheet number. If value is omitted, SHEET returns the number of the sheet that contains the function.

**Remarks:**

SHEET includes all worksheets (visible, hidden, or very hidden) in addition to all other sheet types (macro, chart, or dialog sheets).

## SHEETS

Returns the number of sheets in reference

**Syntax:**

_SHEETS(reference)_

**where:**

* reference is a reference for which you want to know the number of sheets it contains. If Reference is omitted, SHEETS returns the number of sheets in the workbook that contains the function.

**Remarks:**

* SHEETS includes all worksheets (visible, hidden, or very hidden) in addition to all other sheet types (macro, chart, or dialog sheets).

* If reference is not a valid value, SHEETS returns the #REF! error value.

* SHEETS is not available in the Object Model (OM) because the Object Model already includes similar functionality.

* If the value argument is a sheet name that is not valid, SHEET returns the #NA error value. For example =SHEET(“badSheetName”) will return the #NA error value.

* SHEET is not available in the Object Model (OM) because the Object Model already includes similar functionality.

* If the value argument is not a valid value, SHEET returns the #REF! error value. For example, =SHEET(Sheet1!#REF) will return the #REF! error value.

* If the value argument is a sheet name that is not valid, SHEET returns the #NA error value. For example =SHEET(“badSheetName”) will return the #NA error value.

* SHEET is not available in the Object Model (OM) because the Object Model already includes similar functionality.
