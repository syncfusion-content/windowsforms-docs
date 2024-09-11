---
layout: post
title: Text Formulas in WinForms Calculation Engine | Syncfusion
description: Learn about Text Formulas support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Text Formulas in WinForms Calculation Engine (Calculate)



## CHAR



The `Char` function returns the character whose number code is defined in the parameter.



**Syntax:**



_CHAR(number)_



**where:**



* number is the numeric value to retrieve the character.



## CLEAN



The `Clean` function is used to remove the non-printable characters from the given text, represented by numbers 0 to 31 of the 7-bit ASCII code.



**Syntax:**



_CLEAN(Text)_



**where:**



* Text: Required. String or text from which to remove non-printable characters.



## CODE



The `Code` function converts the first character of a supplied text string into a numeric character set code.



**Syntax:**



_CODE(name)_ 



**where:**



* name is the text for which you want the code of the first character. 



## CONCATENATE



`Concatenate` joins several text strings into one text string.



**Syntax:**



_CONCATENATE (text1, text2,...)_



**where:**



* text1, text2 ... are text items to be joined into a single text item. The text items can be text strings, numbers, or single-cell references.



## DOLLAR



The `DOLLAR` function converts a number to text by using the CURRENCY format. The format used as $#,##0.00_);($#,##0.00).



**Syntax:**



_DOLLAR(number, decimal_places)_



**where:**



* number is the number you want to convert to text.



* decimal_places is the number of digits in decimal places you want to display. The value is rounded accordingly.



## EXACT



The `Exact` function compares two values ignoring the styles and returns the Boolean value as **true** or **false**.



**Syntax:**



_EXACT(value1, value2)_



**where:**



* value1 is the first value you want to compare.



* value2 is the second value you want to compare.



## FIND



The `Find` function finds one text string (text1) within another text string (text2) and returns the number of the starting position of text1, based on the number of bytes each character uses, from the first character of text2. 



**Syntax:**



_FIND(text1,text2, num)_ 



**where:**



* text1 is the text that is to be found.



* text2 is the text that contains the found text.



* num specifies the character where to start the search.



**Remarks:**



* `#VALUE!`-occurs when text1 does not appear in text2 and when num is not greater than zero.



## FINDB



The `FindB` function finds one text string (text1) within another text string (text2) and returns the number of the starting position of text1 based on the number of bytes each character uses from the first character of text2. At present, it finds the position of string based on single-byte character set.


**Syntax:**



_FINDB(text1,text2, num)_ 



**where:**



* text1 is the text to be found.



* text2 is the text that contains the found text.



* num specifies a character, from where the search to be started.



**Remarks:**



* `#VALUE!`-occurs when text1 does not appear in text2 and when num is not greater than zero.



## FIXED



The `Fixed` function rounds off to a specified number of decimal places and returns the value in text format.



**Syntax:**



_FIXED(number, decimal_places, no_commas)_



**where:**



* number is the number you want to round.



* decimal_places is the number of decimal places you want to display in the result.



* no_commas is a logical value. This displays commas when it is set to `false` and does not display commas when it is set to `true`.



## LEFT



The `Left` function returns the first character or characters in a text string, based on the number of bytes you specify.



**Syntax:**



_LEFT(text, bytes)_ 



**where:**



* text is a string that contains the characters that you want to return.



* bytes specify the number of characters



## LEN



The `Len` function returns the number



**Syntax:**



_LEN(name)_ 



**where:**



* name is the text whose length you want to find. 



## LOWER



The `Lower` function converts all characters in the specified text string to lowercase. Characters in the string that are not letters are not changed.



**Syntax:**



_LOWER(text)_



**where:**



* text is the string you want to convert to lowercase.



## MID



The `Mid` function returns a specific number of characters from a text string, starting at the position you specify.



**Syntax:**



_MID(text, startNum, numBytes)_ 



**where:**



* text is a string that contains the characters that you want to return.



* startNum is the position of the first character that you want to extract in text.



* numBytes specifies the number of characters you want in bytes.



## NUMBERVALUE



The `NumberValue` function converts text to a number in a locale-independent way.



**Syntax:**



_NUMBERVALUE(text)_ 



**where:**



* text is the text to be converted into a number.



**Remarks:**



* `#VALUE!` occurs when any of the argument is not valid.



## PROPER



The `Proper` function changes the first letter of text into a capital letter and following letters changes to lowercases.



**Syntax:**



_PROPER(text)_



**where:**



* text is the string which you want to capitalize the first letter.



## REPLACE



The `Replace` function replaces a certain part of text with a different part of text based on the number of characters given.



**Syntax:**



_REPLACE(oldText, startNum, numChars, newText)_ 



**where:**



* oldText is the text that needs to be replaced.



* startNum is the position of the character in oldText.



* numChars is the number of characters needs to be replaced.



* newText is the text that replaces the character in old text.



## REPT



The `Rept` function returns a supplied text string, repeated a specified number of times.



**Syntax:**



_REPT(string, number)_ 



**where:**



* string is the text that you want to repeat.



* num is the number of times to repeat the text.



**Remarks:**



* Blank text-occurs when number is zero.



## RIGHT



The `Right` function returns the last character or characters in a string, based on the number.



**Syntax:**



_RIGHT(string, num)_ 



**where:**



* string contains the characters you want to return. 



* num specifies the number of characters.



## SEARCH



The `Search` function finds one text string (find_text) within another text string (within_text), and returns the number of the starting position of find_text.



**Syntax:**



_SEARCH(findText,withinText, startNum )_ 



**where:**



* findText is the text that you want to find.



* withinText is the text in which you want to search findText.



* startNum is the character number in withinText, where you want to start the search.



Remark:



* `#VALUE!` occurs when find Text is not found.



## SUBSTITUTE



It `substitutes` new_text for old_text in a text string. Use **Substitute** when you want to replace specific text in a text string; use **Replace** when you want to replace any text that occurs in a specific location in a text string.



**Syntax:**



_SUBSTITUTE(text, old_text, new_text, instance_num)_



**where:**



* Text is the text or the reference to a cell containing text in which you want to substitute characters.



* Old_text is the text you want to replace.



* New_text is the text you want to replace old_text with.



* Instance_num specifies the occurrence of old_text you want to replace with the new_text. When you specify instance_num, only that instance of old_text is replaced. Otherwise, every occurrence of old_text in text is changed to new_text.



## T



The `T` function tests whether the given value is a text or not. When the given value is a text, then it returns the given text. Otherwise, the function returns as an empty text string.



**Syntax:**



_T( value )_



**where:**



* value is a required value to be checked. 



* When the value is not a number or logical value, then the function returns as an empty string.



## TEXT



The `Text` function converts the supplied value into text by using the user specified format.



**Syntax**



_TEXT(value, format_text)_



**where:**



* value is a numeric value to convert to text.



* format_text is a format text to apply to the supplied value.



## TRIM



The `Trim` function returns a text value with the leading and trailing spaces removed. 



**Syntax:**



_TRIM( text )_



**where:**



* text is the text value for which you want to remove the leading and the trailing spaces.



## UNICHAR



The `Unichar` function retrieves the Unicode character for a given numeric value.



**Syntax:**



_UNICHAR(num)_ 



**where:**



* num is the Unicode number that represents the character.



**Remarks:**



* `#N/A`-occurs when data types are not valid.



* `#VALUE!`-occurs when num falls outside the allowable range, when number is zero.



## UNICODE



The `UNICODE` function calculates the number corresponding to the first character of the text.



**Syntax:**



_UNICODE(text)_ 



**where:**



* text is the character for which you want the Unicode value.



**Remarks:**



* `#VALUE!`-occurs when data type is not valid.



## UPPER



The `Upper` function converts all characters in a text string to uppercase.



**Syntax:**



_UPPER(text )_



**where:**



* text is the string you want to convert to uppercase.



## VALUE



The `Value` function computes the date or a string that contains the number, and converts it into number format.



**Syntax:**



_VALUE(range)_



**where:**



* range is the string that contains the date or a number.



## TEXTJOIN



The `TEXTJOIN` function joins the text from multiple ranges and/or strings, and includes a delimiter you specify between each text value that will be combined. It allows you to supply a range of cells, and has a setting to ignore empty values.



**Syntax:**



_TEXTJOIN(delimiter, ignore_empty, text1, [text2], …)_



**where:**



* delimiter (required): A separator between each text value in the resulting string. Most commonly, you would use a delimiter such as a comma or space character.



* ignore_empty (required): If it is `TRUE` ignores the empty values, and `FALSE` includes empty values in the result.



* text1 (required) :First text item to be joined.



* [text2, ...] (optional): Additional text items to be joined. There can be up to 252 strings that are joined together.



**Remarks:**



*  The result string exceeds cell limit (32767 characters), it returns the `#VALUE!` error message.



## CONCAT



The `CONCAT` function joins the text from multiple ranges and/or strings, but it doesn't provide delimiter or IgnoreEmpty arguments. 



**Syntax:**



_CONCAT(text1, [text2],…)_



**where:**



* text1 (required): It is a first text item to be joined. A string, or array of strings, such as a range of cells.



* [text2, ...] (optional): Additional text items to be joined. There can be upto 253 text arguments for the text items.



**Remarks:**



* If the result string exceeds cell limit (32767 characters), TEXTJOIN returns the `#VALUE!` error.



## LEFTB



The `LEFTB` function calculates the first character or characters in a text string, based on the number of bytes you specify.



**Syntax:**



_LEFTB(text, bytes)_ 



**where:**



* text is a string that contains the characters that you want to return.



* bytes specify the number of characters



## RIGHTB



The `RIGHTB` function returns the last character or characters in a text string, based on the number of bytes.



**Syntax:**



_RIGHTB(string, num_bytes)_ 



**where:**



* string contains the characters you want to return. 



* num_bytes specifies the number of characters based on the number of bytes.



## MIDB



The `MIDB` function returns a specific number of characters from a text string, starting at the position you specify, based on the number of bytes you specify.



**Syntax:**



_MIDB(text, startNum, numBytes)_ 



**where:**



* text is a string that contains the characters that you want to return.



* startNum is the position of the first character that you want to extract in text.



* numBytes specifies the number of characters you want in bytes.



## LENB



The `LENB` function returns the number of bytes used to represent the characters in a text string.



**Syntax:**



_LENB(name)_ 



**where:**



* name is the text whose length you want to find.



## REPLACEB



The `REPLACEB` function replaces part of a text string, based on the number of bytes you specify, with a different text string.


**Syntax:**



_REPLACEB(oldText, startNum, num_bytes, newText)_ 



**where:**



* oldText is the text that needs to be replaced.



* startNum is the position of the character in oldText.



* num_bytes is the number of bytes in old_text that you want REPLACEB to replace with new_text.



* newText is the text that replaces the character in old text.



## ASC 



The `ASC ` function used to converts full-width (double-byte) characters to half-width (single-byte) characters.


**Syntax:**



_ASC(text)_ 



**where:**



* The text or a reference to convert to single byte characters. 



## JIS  



The `JIS` function converts single byte characters into double byte characters in a text string.


**Syntax:**



_JIS(text)_ 



**where:**



* The text or a reference that contains the text you want to change. If text does not contain any half-width English letters, text is not changed.



## SEARCHB



The `SEARCHB` function returns the position of a specified character or sub-string within a given text string.



**Syntax:**



SEARCHB(findText,withinText, startNum)_ 



**where:**



* findText  is the the character or sub-string that you want to find.



* withinText is the text string that in which you want to search findText.



* startNum is specifies the position in the within_text string, from which the search should begin.



Remark:



* The find text is not found it return `#VALUE!`  error message.



## UNIQUE



The `UNIQUE` function returns a list of unique values from a list or range.



**Syntax:**



_UNIQUE(array, [by_col], [exactly_once])_



**where:**



* array: The range or array from which to return unique rows or columns.



* [by_col] (Optional): A logical value indicating how to compare. 



    * If `TRUE`- compares columns against each other and returns unique columns.



    * If `FALSE` (or omitted) - compares rows against each other and returns unique rows.



* [exactly_once] (Optional): A logical value that will return rows or columns that occur exactly once in the range or array.



    * If `TRUE`- returns all distinct rows or columns that occur exactly once.
    
    
    
    * If `FALSE` (or omitted) - returns all distinct rows or columns.



**Remarks:**



* An array can be thought of as a row or column of values, or a combination of rows and columns of values.



* The `UNIQUE` function returns an array that will spill into the appropriate number of cells if it's the final result of a formula.



## TEXTAFTER



The `TEXTAFTER` function returns text that occurs after a given character or string. It is the opposite of the `TEXTBEFORE` function.



**Syntax:**



_TEXTAFTER(text, delimiter, [instance_num], [match_mode], [match_end], [if_not_found])_



**where:**



* text: The text you are searching within. Wildcard characters are not allowed.



* delimiter: The text that marks the point after which you want to extract.



* [instance_num] (Optional): The instance of the delimiter after which you want to extract the text. By default, instance_num = 1. A negative number starts searching text from the end.



* [match_mode] (Optional): Determines whether the text search is case-sensitive. The default is case-sensitive. 



    * If 0 - Case-sensitive.



    * If 1 - Case-insensitive.



* [match_end]: Optional. Treats the end of the text as a delimiter. By default, the text is an exact match. 



    * If 0 - Don't match the delimiter against the end of the text.



    * If 1 - Match the delimiter against the end of the text.



* [if_not_found] (Optional): The value returned if no match is found. By default, `#N/A` is returned.



**Remarks:**



* When searching with an empty delimiter value, `TEXTAFTER` matches immediately. It returns the entire text when searching from the front (if instance_num is positive) and empty text when searching from the end (if instance_num is negative).



* `TEXTAFTER` returns a `#N/A` error if the delimiter isn't contained in text.



* `TEXTAFTER` returns a `#VALUE!` error if instance_num = 0 or if instance_num is greater than the length of text.



* `TEXTAFTER` returns a `#N/A` error if instance_num is greater than the number of occurrences of the delimiter.




## TEXTBEFORE



The `TEXTBEFORE` function returns text that occurs before a given character or string. It is the opposite of the `TEXTAFTER` function.



**Syntax:**



_TEXTBEFORE(text, delimiter, [instance_num], [match_mode], [match_end], [if_not_found])_



**where:**



* text: The text you are searching within. Wildcard characters are not allowed. If text is an empty string, `TEXTBEFORE` returns empty text.



* delimiter: The text that marks the point before which you want to extract.



* [instance_num] (Optional): The instance of the delimiter after which you want to extract the text. By default, instance_num = 1. A negative number starts searching text from the end.



* [match_mode] (Optional): Determines whether the text search is case-sensitive. The default is case-sensitive. If 0 - Case-sensitive, if 1 - Case-insensitive.



* [match_end] (Optional): Treats the end of the text as a delimiter. By default, the text is an exact match. 



    * If 0 - Don't match the delimiter against the end of the text.



    * If 1 - Match the delimiter against the end of the text.



* [if_not_found] (Optional): The value returned if no match is found. By default, #N/A is returned.



**Remarks:**



* When searching with an empty delimiter value, `TEXTBEFORE` matches immediately. It returns empty text when searching from the front (if instance_num is positive) and the entire text when searching from the end (if instance_num is negative).



* `TEXTBEFORE` returns a `#VALUE!` error if instance_num = 0 or if instance_num is greater than the length of text.



* `TEXTBEFORE` returns a `#N/A` error if the delimiter isn’t contained in text.



* `TEXTBEFORE` returns a `#N/A` error if instance_num is greater than the number of occurrences of the delimiter in text.



## VALUETOTEXT



The `VALUETOTEXT` function returns text from any specified value. It passes text values unchanged and converts non-text values to text.



**Syntax:**



_VALUETOTEXT(value, [format])_



**where:**



* value: The value to return as text.



* [format] (Optional): The format of the returned data. It can be one of two values:



  * 0: Default. Concise format that is easy to read. The text returned will be the same as the text rendered in a cell that has general formatting applied.



  * 1: Strict format that includes escape characters and row delimiters. Generates a string that can be parsed when entered into the formula bar. Encapsulates returned strings in quotes except for Booleans, Numbers, and Errors.



**Remarks:**



* If `format` is anything other than 0 or 1, `VALUETOTEXT` returns the `#VALUE!` error value.




## ARRAYTOTEXT



The `ARRAYTOTEXT` function returns an array of text values from any specified range. It passes text values unchanged and converts non-text values to text.



**Syntax:**



_ARRAYTOTEXT(array, [format])_



**where:**



* array: The array to return as text.



* [format] (Optional): The format of the returned data. It can be one of two values:



  * 0: Default. Concise format that is easy to read. The text returned will be the same as the text rendered in a cell that has general formatting applied.



  * 1: Strict format that includes escape characters and row delimiters. Generates a string that can be parsed when entered into the formula bar. Encapsulates returned strings in quotes except for Booleans, Numbers, and Errors.



**Remarks:**



* The concise format returns a list of values inside one cell, whereas the strict format returns an array of the same size and shape as the input.



* If `format` is anything other than 0 or 1, `ARRAYTOTEXT` returns the `#VALUE!` error value.



## TOCOL



The `TOCOL` function returns the array in a single column.



**Syntax:**



_TOCOL(array, [ignore], [scan_by_column])_



**where:**



* array: The array or reference to return as a column.



* [ignore] (Optional): Whether to ignore certain types of values. By default, no values are ignored. Specify one of the following:



  * 0: Keep all values (default)



  * 1: Ignore blanks



  * 2: Ignore errors



  * 3: Ignore blanks and errors



* [scan_by_column] (Optional): Scan the array by column. By default, the array is scanned by row. Scanning determines whether the values are ordered by row or by column.



**Remarks:**



* If scan_by_column is omitted or `FALSE`, the array is scanned by row; If `TRUE`, the array is scanned by column.



* `TOCOL` returns a `#VALUE!` error when an array constant contains one or more numbers that are not a whole number.



* `TOCOL` returns a `#NUM!` error when the array is too large.



## TOROW



The `TOROW` function returns the array in a single row.



**Syntax:**



_TOROW(array, [ignore], [scan_by_column])_



**where:**



* array: The array or reference to return as a row.



* [ignore] (Optional): Whether to ignore certain types of values. By default, no values are ignored. Specify one of the following:



  * 0: Keep all values (default)



  * 1: Ignore blanks



  * 2: Ignore errors



  * 3: Ignore blanks and errors



* [scan_by_column] (Optional): Scan the array by column. By default, the array is scanned by row. Scanning determines whether the values are ordered by row or by column.



**Remarks:**



* If scan_by_column is omitted or `FALSE`, the array is scanned by row; If `TRUE`, the array is scanned by column.



* `TOROW` returns a `#VALUE!` error when an array constant contains one or more numbers that are not a whole number.



* `TOROW` returns a `#NUM!` error when the array is too large.



## CHOOSECOLS



The `CHOOSECOLS` function returns the specified columns from an array.



**Syntax:**



_CHOOSECOLS(array, col_num1, [col_num2], …)_



**where:**



* array: The array containing the columns to be returned in the new array.



* col_num1: The first column to be returned.



* [col_num2] (Optional): Additional columns to be returned.



**Remarks:**


* `CHOOSECOLS` returns a `#VALUE!` error if the absolute value of any of the col_num arguments is zero or exceeds the number of columns in the array.



## CHOOSEROWS


The `CHOOSEROWS` function returns the specified rows from an array.


**Syntax:**


_CHOOSEROWS(array, row_num1, [row_num2], …)_


**where:**


* array: The array containing the rows to be returned in the new array.


* row_num1: The first row number to be returned.


* [row_num2] (Optional): Additional row numbers to be returned.


**Remarks:**


`CHOOSEROWS` returns a `#VALUE!` error if the absolute value of any of the row_num arguments is zero or exceeds the number of rows in the array.



## SEQUENCE



The `SEQUENCE` function allows you to generate a list of sequential numbers in an array, such as 1, 2, 3, 4.



**Syntax:**



_SEQUENCE(rows, [columns], [start], [step])_



**where:**



* rows: The number of rows to return. Required.



* [columns] (Optional): The number of columns to return.



* [start] (Optional): The first number in the sequence.



* [step] (Optional): The amount to increment each subsequent value in the array.


**Remarks:**



* Any missing optional arguments will default to 1. If you omit the rows argument, you must provide at least one other argument.



* An array can be thought of as a row of values, a column of values, or a combination of rows and columns of values. In the example above, the array for our SEQUENCE formula is range C1:G4.



* The `SEQUENCE` function will return an array, which will spill if it's the final result of a formula.



## TEXTSPLIT



The `TEXTSPLIT` function splits text strings by using column and row delimiters.



**Syntax:**



_TEXTSPLIT(text, col_delimiter, [row_delimiter], [ignore_empty], [match_mode], [pad_with])_



**where:**



* text: The text you want to split.



* col_delimiter: The text that marks the point where to spill the text across columns.



* [row_delimiter] (Optional): The text that marks the point where to spill the text down rows.



* [ignore_empty] (Optional): Specify `TRUE` to ignore consecutive delimiters. Defaults to `FALSE`, which creates an empty cell.



* [match_mode] (Optional): Specify 1 to perform a case-insensitive match. Defaults to 0, which does a case-sensitive match.



* [pad_with] (Optional): The value with which to pad the result. The default is `#N/A`.



**Remarks:**



* If there is more than one delimiter, then an array constant must be used. For example, to split by both a comma and a period, use _TEXTSPLIT(A1,{",","."})_.



## TAKE



The `TAKE` function returns a specified number of contiguous rows or columns from the start or end of an array.



**Syntax:**



_TAKE(array, rows, [columns])_



**where:**



* array: The array from which to take rows or columns.



* rows: The number of rows to take. A negative value takes from the end of the array.



* [columns] (Optional): The number of columns to take. A negative value takes from the end of the array.



**Remarks:**



* `TAKE` returns a `#CALC!` error to indicate an empty array when either rows or columns is 0.



* `TAKE` returns a `#NUM!` error when the array is too large.



## DROP



The `DROP` function excludes a specified number of rows or columns from the start or end of an array. You might find this function useful to remove headers and footers in an Excel report to return only the data.



**Syntax:**



_DROP(array, rows, [columns])_



**where:**



* array: The array from which to drop rows or columns.



* rows: The number of rows to drop. A negative value drops from the end of the array.



* [columns] (Optional): The number of columns to exclude. A negative value drops from the end of the array.



**Remarks:**



* `DROP` returns a `#CALC!` error to indicate an empty array when rows or columns is 0.



* `DROP` returns a `#NUM!` error when the array is too large.



## EXPAND



The `EXPAND` function expands or pads an array to specified row and column dimensions.



**Syntax:**



_EXPAND(array, rows, [columns], [pad_with])_



**where:**



* array: The array to expand.



* rows: The number of rows in the expanded array. If missing, rows will not be expanded.



* [columns] (Optional): The number of columns in the expanded array. If missing, columns will not be expanded.



* [pad_with] (Optional): The value with which to pad. The default is `#N/A`.



**Remarks:**



* If rows isn’t provided or is empty, the default value is the number of rows in the array argument.



* If columns isn’t provided or is empty, the default value is the number of columns in the array argument.



* `EXPAND` returns a `#VALUE!` error when the rows or columns argument is less than the rows or columns in the array argument.



* `EXPAND` returns a `#N/A!` error in padded cells if pad_with is not provided.



* `EXPAND` returns a `#NUM!` error when the array is too large.



## WRAPROWS



The `WRAPROWS` function wraps the provided row or column of values by rows after a specified number of elements to form a new array.


**Syntax:**



_WRAPROWS(vector, wrap_count, [pad_with])_



**where:**



* vector: The vector or reference to wrap.



* wrap_count: The maximum number of values for each row.



* [pad_with] (Optional): The value with which to pad. The default is `#N/A`.



**Remarks:**



* The elements of the vector are placed into a 2-dimensional array by row. Each row has wrap_count elements. The row is padded with pad_with if there are insufficient elements to fill it.



* If wrap_count is greater than or equal to the number of elements in vector, then the vector is simply returned in a single row.



* `WRAPROWS` returns a `#VALUE!` error when vector is not a one-dimensional array.


* `WRAPROWS` returns a `#NUM!` error when wrap_count is less than 1.


* `WRAPROWS` returns a `#N/A!` error for each cell in the return array that has no results.



## WRAPCOLS



The `WRAPCOLS` function wraps the provided row or column of values by columns after a specified number of elements to form a new array.



**Syntax:**



_WRAPCOLS(vector, wrap_count, [pad_with])_



**where:**



* vector: The vector or reference to wrap.



* wrap_count: The maximum number of values for each column.



* [pad_with] (Optional): The value with which to pad. The default is `#N/A`.



**Remarks:**



* The elements of the vector are placed into a 2-dimensional array by column. Each column has wrap_count elements. The column is padded with pad_with if there are insufficient elements to fill it.



* If wrap_count is greater than or equal to the number of elements in vector, then the vector is simply returned in a single column.



* `WRAPCOLS` returns a `#VALUE!` error when vector is not a one-dimensional array.



* `WRAPCOLS` returns a `#NUM!` error when wrap_count is less than 1.



* `WRAPCOLS` returns a `#N/A!` error for each cell in the return array that has no results.



## SORT



The `SORT` function sorts the contents of a range or array.



**Syntax:**



_SORT(array, [sort_index], [sort_order], [by_col])_



**where:**



* array: The range or array to sort. Required.



* [sort_index] (Optional): A number indicating the row or column to sort by.



* [sort_order] (Optional): A number indicating the desired sort order; 1 for ascending order (default), -1 for descending order.



* [by_col] (Optional): A logical value indicating the desired sort direction; `FALSE` to sort by row (default), `TRUE` to sort by column.



**Remarks:**



* When sort_index is not provided, row1/col1 will be presumed.



* When sort_order is not provided, ascending order will be presumed.



* By default, `SORT` will sort by row, and will only sort by column when by_col is `TRUE`. When by_col is `FALSE` or missing, `SORT will sort by row.



* The `SORT` function is provided to sort data in an array. If you want to sort data in the grid, it's better to use the `SORTBY` function, as it is more flexible.



* An array can be thought of as a row of values, a column of values, or a combination of rows and columns of values.



* The `SORT` function will return an array, which will spill if it's the final result of a formula. 



## SORTBY



The `SORTBY` function sorts the contents of a range or array based on the values in a corresponding range or array.



**Syntax:**



_SORTBY(array, by_array1, [sort_order1], [by_array2, sort_order2], …)_



**where:**



* array: The array or range to sort.



* by_array1: The array or range to sort on.



* [sort_order1] (Optional): The order to use for sorting. 1 for ascending, -1 for descending. Default is ascending.



* [by_array2] (Optional): The array or range to sort on.



* [sort_order2] (Optional): The order to use for sorting. 1 for ascending, -1 for descending. Default is ascending.



**Remarks:**



* An array can be thought of as a row of values, a column of values, or a combination of rows and columns of values.



* The `SORTBY` function will return an array, which will spill if it's the final result of a formula. 



## FILTER



The `FILTER` function allows you to filter a range of data based on criteria you define.



**Syntax:**



_FILTER(array, include, [if_empty])_



**where:**



* array: The array, or range to filter.



* include: A Boolean array whose height or width is the same as the array.



* [if_empty] (Optional): The value to return if all values in the included array are empty (filter returns nothing).



**Remarks:**



* An array can be thought of as a row of values, a column of values, or a combination of rows and columns of values.



* The `FILTER` function will return an array, which will spill if it's the final result of a formula.



* If your dataset has the potential of returning an empty value, then use the 3rd argument (`[if_empty]`). Otherwise, a `#CALC!` error will result, as Excel does not currently support empty arrays.



* If any value of the include argument is an error (`#N/A`, `#VALUE`, etc.) or cannot be converted to a Boolean, the `FILTER` function will return an error.