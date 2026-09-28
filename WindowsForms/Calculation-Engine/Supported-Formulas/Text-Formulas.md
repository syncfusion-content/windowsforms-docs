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



**Parameters:**



* `number`: The numeric value to retrieve the character.



## CLEAN



The `Clean` function is used to remove the non-printable characters from the given text, represented by numbers 0 to 31 of the 7-bit ASCII code.



**Syntax:**



_CLEAN(Text)_



**Parameters:**



* `Text` (required): String or text from which to remove non-printable characters.



## CODE



The `Code` function converts the first character of a supplied text string into a numeric character set code.



**Syntax:**



_CODE(name)_ 



**Parameters:**



* `name`: The text for which you want the code of the first character. 



## CONCATENATE



`Concatenate` joins several text strings into one text string.



**Syntax:**



_CONCATENATE (text1, text2,...)_



**Parameters:**



* `text1, text2 ...`: Text items to be joined into a single text item. The text items can be text strings, numbers, or single-cell references.



## DBCS



The `DBCS` function converts half-width (single-byte) characters in a text string to full-width (double-byte) characters.



**Syntax:**



_DBCS(text)_



**Parameters:**



* `text`: The text string or a reference to a cell containing the text to be converted. If the specified text does not contain any half-width characters, the original text is returned unchanged.



**Returns:**



A text string in which all half-width characters have been converted to their corresponding full-width characters. If no half-width characters are present, the input text remains unchanged.



## DOLLAR



The `DOLLAR` function converts a number to text by using the CURRENCY format. The format used as $#,##0.00_);($#,##0.00).



**Syntax:**



_DOLLAR(number, decimal_places)_



**Parameters:**



* `number`: The number you want to convert to text.



* `decimal_places`: The number of digits in decimal places you want to display. The value is rounded accordingly.



## EXACT



The `Exact` function compares two values ignoring the styles and returns the Boolean value as **true** or **false**.



**Syntax:**



_EXACT(value1, value2)_



**Parameters:**



* `value1`: The first value you want to compare.



* `value2`: The second value you want to compare.



## FIND



The `Find` function finds one text string (text1) within another text string (text2) and returns the number of the starting position of text1, based on the number of bytes each character uses, from the first character of text2. 



**Syntax:**



_FIND(text1,text2, num)_ 



**Parameters:**



* `text1`: The text that is to be found.



* `text2`: The text that contains the found text.



* `num`: Specifies the character where to start the search.



**Remarks:**



* `#VALUE!`-occurs when text1 does not appear in text2 and when num is not greater than zero.



## FINDB



The `FindB` function finds one text string (text1) within another text string (text2) and returns the number of the starting position of text1 based on the number of bytes each character uses from the first character of text2. At present, it finds the position of string based on single-byte character set.


**Syntax:**



_FINDB(text1,text2, num)_ 



**Parameters:**



* `text1`: The text to be found.



* `text2`: The text that contains the found text.



* `num`: Specifies a character, from where the search to be started.



**Remarks:**



* `#VALUE!`-occurs when text1 does not appear in text2 and when num is not greater than zero.



## FIXED



The `Fixed` function rounds off to a specified number of decimal places and returns the value in text format.



**Syntax:**



_FIXED(number, decimal_places, no_commas)_



**Parameters:**



* `number`: The number you want to round.



* `decimal_places`: The number of decimal places you want to display in the result.



* `no_commas`: A logical value. This displays commas when it is set to `false` and does not display commas when it is set to `true`.



## LEFT



The `Left` function returns the first character or characters in a text string, based on the number of bytes you specify.



**Syntax:**



_LEFT(text, bytes)_ 



**Parameters:**



* `text`: A string that contains the characters that you want to return.



* `bytes`: Specify the number of characters



## LEN



The `Len` function returns the number



**Syntax:**



_LEN(name)_ 



**Parameters:**



* `name`: The text whose length you want to find. 



## LOWER



The `Lower` function converts all characters in the specified text string to lowercase. Characters in the string that are not letters are not changed.



**Syntax:**



_LOWER(text)_



**Parameters:**



* `text`: The string you want to convert to lowercase.



## MID



The `Mid` function returns a specific number of characters from a text string, starting at the position you specify.



**Syntax:**



_MID(text, startNum, numBytes)_ 



**Parameters:**



* `text`: A string that contains the characters that you want to return.



* `startNum`: The position of the first character that you want to extract in text.



* `numBytes`: Specifies the number of characters you want in bytes.



## NUMBERVALUE



The `NumberValue` function converts text to a number in a locale-independent way.



**Syntax:**



_NUMBERVALUE(text)_ 



**Parameters:**



* `text`: The text to be converted into a number.



**Remarks:**



* `#VALUE!` occurs when any of the argument is not valid.



## PROPER



The `Proper` function changes the first letter of text into a capital letter and following letters changes to lowercases.



**Syntax:**



_PROPER(text)_



**Parameters:**



* `text`: The string which you want to capitalize the first letter.



## REPLACE



The `Replace` function replaces a certain part of text with a different part of text based on the number of characters given.



**Syntax:**



_REPLACE(oldText, startNum, numChars, newText)_ 



**Parameters:**



* `oldText`: The text that needs to be replaced.



* `startNum`: The position of the character in oldText.



* `numChars`: The number of characters needs to be replaced.



* `newText`: The text that replaces the character in old text.



## REPT



The `Rept` function returns a supplied text string, repeated a specified number of times.



**Syntax:**



_REPT(string, number)_ 



**Parameters:**



* `string`: The text that you want to repeat.



* `num`: The number of times to repeat the text.



**Remarks:**



* Blank text-occurs when number is zero.



## RIGHT



The `Right` function returns the last character or characters in a string, based on the number.



**Syntax:**



_RIGHT(string, num)_ 



**Parameters:**



* `string`: Contains the characters you want to return. 



* `num`: Specifies the number of characters.



## SEARCH



The `Search` function finds one text string (find_text) within another text string (within_text), and returns the number of the starting position of find_text.



**Syntax:**



_SEARCH(findText,withinText, startNum )_ 



**Parameters:**



* `findText`: The text that you want to find.



* `withinText`: The text in which you want to search findText.



* `startNum`: The character number in withinText, where you want to start the search.



**Remark:**



* `#VALUE!` occurs when find Text is not found.



## SUBSTITUTE



It `substitutes` new_text for old_text in a text string. Use **Substitute** when you want to replace specific text in a text string; use **Replace** when you want to replace any text that occurs in a specific location in a text string.



**Syntax:**



_SUBSTITUTE(text, old_text, new_text, instance_num)_



**Parameters:**



* `Text`: The text or the reference to a cell containing text in which you want to substitute characters.



* `Old_text`: The text you want to replace.



* `New_text`: The text you want to replace old_text with.



* `Instance_num`: Specifies the occurrence of old_text you want to replace with the new_text. When you specify instance_num, only that instance of old_text is replaced. Otherwise, every occurrence of old_text in text is changed to new_text.



## T



The `T` function tests whether the given value is a text or not. When the given value is a text, then it returns the given text. Otherwise, the function returns as an empty text string.



**Syntax:**



_T( value )_



**Parameters:**



* `value` (required): A value to be checked. 



* When the value is not a number or logical value, then the function returns as an empty string.



## TEXT



The `Text` function converts the supplied value into text by using the user specified format.



**Syntax**



_TEXT(value, format_text)_



**Parameters:**



* `value`: A numeric value to convert to text.



* `format_text`: A format text to apply to the supplied value.



## TRIM



The `Trim` function returns a text value with the leading and trailing spaces removed. 



**Syntax:**



_TRIM( text )_



**Parameters:**



* `text`: The text value for which you want to remove the leading and the trailing spaces.



## UNICHAR



The `Unichar` function retrieves the Unicode character for a given numeric value.



**Syntax:**



_UNICHAR(num)_ 



**Parameters:**



* `num`: The Unicode number that represents the character.



**Remarks:**



* `#N/A`-occurs when data types are not valid.



* `#VALUE!`-occurs when num falls outside the allowable range, when number is zero.



## UNICODE



The `UNICODE` function calculates the number corresponding to the first character of the text.



**Syntax:**



_UNICODE(text)_ 



**Parameters:**



* `text`: The character for which you want the Unicode value.



**Remarks:**



* `#VALUE!`-occurs when data type is not valid.



## UPPER



The `Upper` function converts all characters in a text string to uppercase.



**Syntax:**



_UPPER(text )_



**Parameters:**



* `text`: The string you want to convert to uppercase.



## VALUE



The `Value` function computes the date or a string that contains the number, and converts it into number format.



**Syntax:**



_VALUE(range)_



**Parameters:**



* `range`: The string that contains the date or a number.



## TEXTJOIN



The `TEXTJOIN` function joins the text from multiple ranges and/or strings, and includes a delimiter you specify between each text value that will be combined. It allows you to supply a range of cells, and has a setting to ignore empty values.



**Syntax:**



_TEXTJOIN(delimiter, ignore_empty, text1, [text2], …)_



**Parameters:**



* `delimiter` (required): A separator between each text value in the resulting string. Most commonly, you would use a delimiter such as a comma or space character.



* `ignore_empty` (required): If it is `TRUE` ignores the empty values, and `FALSE` includes empty values in the result.



* `text1` (required): First text item to be joined.



* `text2, ...` (optional): Additional text items to be joined. There can be up to 252 strings that are joined together.



**Remarks:**



*  The result string exceeds cell limit (32767 characters), it returns the `#VALUE!` error message.



## CONCAT



The `CONCAT` function joins the text from multiple ranges and/or strings, but it doesn't provide delimiter or IgnoreEmpty arguments. 



**Syntax:**



_CONCAT(text1, [text2],…)_



**Parameters:**



* `text1` (required): A first text item to be joined. A string, or array of strings, such as a range of cells.



* `text2, ...` (optional): Additional text items to be joined. There can be upto 253 text arguments for the text items.



**Remarks:**



* If the result string exceeds cell limit (32767 characters), TEXTJOIN returns the `#VALUE!` error.



## LEFTB



The `LEFTB` function calculates the first character or characters in a text string, based on the number of bytes you specify.



**Syntax:**



_LEFTB(text, bytes)_ 



**Parameters:**



* `text`: A string that contains the characters that you want to return.



* `bytes`: Specify the number of characters



## RIGHTB



The `RIGHTB` function returns the last character or characters in a text string, based on the number of bytes.



**Syntax:**



_RIGHTB(string, num_bytes)_ 



**Parameters:**



* `string`: Contains the characters you want to return. 



* `num_bytes`: Specifies the number of characters based on the number of bytes.



## MIDB



The `MIDB` function returns a specific number of characters from a text string, starting at the position you specify, based on the number of bytes you specify.



**Syntax:**



_MIDB(text, startNum, numBytes)_ 



**Parameters:**



* `text`: A string that contains the characters that you want to return.



* `startNum`: The position of the first character that you want to extract in text.



* `numBytes`: Specifies the number of characters you want in bytes.



## LENB



The `LENB` function returns the number of bytes used to represent the characters in a text string.



**Syntax:**



_LENB(name)_ 



**Parameters:**



* `name`: The text whose length you want to find.



## REPLACEB



The `REPLACEB` function replaces part of a text string, based on the number of bytes you specify, with a different text string.


**Syntax:**



_REPLACEB(oldText, startNum, num_bytes, newText)_ 



**Parameters:**



* `oldText`: The text that needs to be replaced.



* `startNum`: The position of the character in oldText.



* `num_bytes`: The number of bytes in old_text that you want REPLACEB to replace with new_text.



* `newText`: The text that replaces the character in old text.



## ASC 



The `ASC ` function used to converts full-width (double-byte) characters to half-width (single-byte) characters.


**Syntax:**



_ASC(text)_ 



**Parameters:**



* `text`: The text or a reference to convert to single byte characters. 



## JIS  



The `JIS` function converts single byte characters into double byte characters in a text string.


**Syntax:**



_JIS(text)_ 



**Parameters:**



* `text`: The text or a reference that contains the text you want to change. If text does not contain any half-width English letters, text is not changed.



## SEARCHB



The `SEARCHB` function returns the position of a specified character or sub-string within a given text string.



**Syntax:**



SEARCHB(findText,withinText, startNum)_ 



**Parameters:**



* `findText`: The character or sub-string that you want to find.



* `withinText`: The text string that in which you want to search findText.



* `startNum`: Specifies the position in the within_text string, from which the search should begin.



Remark:



* The find text is not found it return `#VALUE!`  error message.



## UNIQUE



The `UNIQUE` function returns a list of unique values from a specified range or array.



**Syntax:**



_UNIQUE(array, [by_col], [exactly_once])_



**Parameters:**



* `array`: The range or array from which to return unique values.



* `by_col` (optional): If `TRUE`, compares columns for uniqueness; if `FALSE` or omitted, compares rows.



* `exactly_once` (optional): If `TRUE`, returns only values that appear exactly once; if `FALSE` or omitted, returns all distinct values.



**Remarks:**



* The result will spill into adjacent cells if it’s the final result of a formula.



* If [exactly_once] is set to `TRUE`, values that appear more than once are excluded from the result.



* If [by_col] is `TRUE`, the function evaluates unique columns instead of rows.



## TEXTAFTER



The `TEXTAFTER` function extracts the text that appears after a specified delimiter in a string.



**Syntax:**



_TEXTAFTER(text, delimiter, [instance_num], [match_mode], [match_end], [if_not_found])_



**Parameters:**



* `text`: The input text to search within.



* `delimiter`: The text or character after which you want to extract.



* `instance_num` (optional): The instance of the delimiter to search for. Defaults to 1 (first instance).



* `match_mode` (optional): Determines if the search is case-sensitive (0 for case-sensitive, 1 for case-insensitive).



* `match_end` (optional): If `TRUE`, treats the end of the text as a delimiter.



* `if_not_found` (optional): Value to return if the delimiter is not found. Defaults to `#N/A`.



**Remarks:**



* If the delimiter is not found, a `#N/A` error is returned, unless [if_not_found] is specified.



* If [instance_num] equal to 0 or greater than the length of text, a `#VALUE!` error returned.



* The [instance_num] argument allows for both positive and negative numbers. Positive values search from the start, and negative values search from the end.



* The function supports case-sensitive and case-insensitive search modes using the [match_mode] argument.



<<<<<<< HEAD
=======

>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
## TEXTBEFORE



The `TEXTBEFORE` function extracts the text that appears before a specified delimiter in a string.



**Syntax:**



_TEXTBEFORE(text, delimiter, [instance_num], [match_mode], [match_end], [if_not_found])_



**Parameters:**



* `text`: The input text to search within.



* `delimiter`: The text or character before which you want to extract.



* `instance_num` (optional): The instance of the delimiter to search for. Defaults to 1 (first instance).



* `match_mode` (optional): Case-sensitivity control (0 for case-sensitive, 1 for case-insensitive).



* `match_end` (optional):  If TRUE, treats the end of the text as a delimiter.



* `if_not_found` (optional): Value to return if the delimiter is not found. Defaults to #N/A.



**Remarks:**



* If the delimiter is not found, a #N/A error is returned, unless if_not_found is specified.



* if [instance_num] is equal to 0 or greater than the length of text, a `#VALUE!` error returned.



* Similar to `TEXTAFTER`, negative [instance_num] values search from the end of the string.



* The function supports both case-sensitive and case-insensitive search modes using the [match_mode] argument.



## VALUETOTEXT



The `VALUETOTEXT` function converts a value into a text format.



**Syntax:**



_VALUETOTEXT(value, [format])_



**Parameters:**



* `value`: The value to return to text.



* `format` (optional): Determines the format:



  * 0: Concise format (default).



  * 1: Strict format with escape characters for formulas.


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
**Remarks:**



* If an invalid format is provided, `#VALUE!` error is returned.



* The concise format is human-readable, while the strict format preserves data structure.



## ARRAYTOTEXT



The `ARRAYTOTEXT` function function converts an array into text.


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
**Syntax:**



_ARRAYTOTEXT(array, [format])_



**Parameters:**



* `array`: The array to convert to text.



* `format` (optional): Determines the output format:



  * 0: Concise format (default).



  * 1: Strict format with escape characters and row delimiters.



**Remarks:**



* The concise format displays the output within a single cell, while the strict format presents a more detailed array layout with escape characters.



* If the `format` argument is not 0 or 1, a `#VALUE!` error is returned.



## TOCOL



The `TOCOL` function transforms an array into a single column.



**Syntax:**



_TOCOL(array, [ignore], [scan_by_column])_



**Parameters:**



* `array`: The array to convert into a column.



* `ignore` (optional): Specifies which values to ignore:



  * 0: Keep all values (default).



  * 1: Ignore blanks.



  * 2: Ignore errors.



  * 3: Ignore blanks and errors.



* `scan_by_column` (optional): If `TRUE`, scans by column instead of by row.


**Remarks:**



* The function will return all values in a single column, even if the original array was multidimensional.



* If [scan_by_column] is set to `TRUE`, the function will scan the array by column; otherwise, it defaults to scanning by row.



* If an array contains non-integer values, the function returns a `#VALUE!` error.



## TOROW



The `TOROW` function transforms an array into a single row.



**Syntax:**



_TOROW(array, [ignore], [scan_by_column])_



**Parameters:**



* `array`: The array to convert into a row.



* `ignore` (optional): Specifies which values to ignore:



  * 0: Keep all values (default)



  * 1: Ignore blanks.



  * 2: Ignore errors.



  * 3: Ignore blanks and errors.



* `scan_by_column` (optional): If `TRUE`, scans by column.



**Remarks:**



* The function will return all values in a single row, even if the original array was multidimensional.



* If [scan_by_column] is set to `TRUE`, the function will scan the array by column; otherwise, it defaults to scanning by row.



* If an array contains non-integer values, the function returns a `#VALUE!` error.



## CHOOSECOLS



The `CHOOSECOLS` function returns specified columns from an array.



**Syntax:**



_CHOOSECOLS(array, col_num1, [col_num2], …)_



**Parameters:**



* `array`: The array containing columns to be selected.



* `col_num1`: The index of the first column to return.



* `col_num2` (optional): Additional columns to return.



**Remarks:**


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
* If any [col_num] is zero or exceeds the total number of columns, a `#VALUE!` error is returned.



* The function is useful for extracting only certain columns from a large dataset.


<<<<<<< HEAD

## CHOOSEROWS



The `CHOOSEROWS` function returns specified rows from an array.



**Syntax:**



_CHOOSEROWS(array, row_num1, [row_num2], …)_



**Parameters:**



* `array`: The array containing the rows to be selected.



* `row_num1`: The index of the first row to return.



* `row_num2` (optional): Additional rows to return.



**Remarks:**



=======
## CHOOSEROWS


The `CHOOSEROWS` function returns specified rows from an array.


**Syntax:**


_CHOOSEROWS(array, row_num1, [row_num2], …)_


**where:**


* array: The array containing the rows to be selected.


* row_num1: The index of the first row to return.


* [row_num2] (Optional): Additional rows to return.


**Remarks:**


>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
* A `#VALUE!` error occurs if any [row_num] exceeds the number of rows or is zero.



* The function is useful for extracting specific rows from a dataset.



## SEQUENCE



The `SEQUENCE` function generates a sequence of numbers in an array.



**Syntax:**



_SEQUENCE(rows, [columns], [start], [step])_



**Parameters:**



* `rows`: The number of rows for the sequence.



* `columns` (optional): The number of columns.



* `start` (optional): The starting number.



* `step` (optional): The increment for each number.



**Remarks:**



* Defaults to 1 for all omitted optional arguments. If no start or step values are specified, the sequence starts at 1 and increments by 1.



* The function spills the result into adjacent cells when it generates the array.



* `SEQUENCE` can create multi-dimensional arrays by specifying both rows and columns.



## TEXTSPLIT



The `TEXTSPLIT` function splits text into arrays based on delimiters.



**Syntax:**



_TEXTSPLIT(text, col_delimiter, [row_delimiter], [ignore_empty], [match_mode], [pad_with])_



**Parameters:**



* `text`: The input text to split.



* `col_delimiter`: The delimiter to split the text into columns.



* `row_delimiter` (optional): The delimiter to split the text into rows.



* `ignore_empty` (optional):  If `TRUE`, ignores consecutive delimiters. Defaults to `FALSE`.



* `match_mode` (optional): If 1, performs a case-insensitive match. Defaults to 0 (case-sensitive).



* `pad_with` (optional): The value to use for padding missing elements. Defaults to `#N/A`.



**Remarks:**



* If no [row_delimiter] is provided, the function will only split by columns. You can use multiple delimiters by specifying an array of delimiters.



* The [ignore_empty] option allows consecutive delimiters to be ignored, which is useful when parsing text that contains multiple delimiters.



* The [pad_with] argument is used to fill in empty cells when the result array is not rectangular.



## TAKE



The `TAKE` function returns a specified number of contiguous rows or columns from the start or end of an array.



**Syntax:**



_TAKE(array, rows, [columns])_



**Parameters:**



* `array`: The array from which to take rows or columns.



* `rows`: The number of rows to take. A negative value takes rows from the end of the array.



* `columns` (optional): The number of columns to take. A negative value takes columns from the end of the array.



**Remarks:**



* `TAKE` returns a `#CALC!` error if either rows or columns are set to 0, as this results in an empty array.



* If the specified array is too large, `TAKE` returns a `#NUM!` error.



* The function allows easy extraction of portions of data, especially for summarizing or splitting tables.



## DROP



The `DROP` function excludes a specified number of rows or columns from the start or end of an array. This function is useful for removing headers, footers, or sections of data in an array.



**Syntax:**



_DROP(array, rows, [columns])_



**Parameters:**



* `array`: The array from which to drop rows or columns.



* `rows`: The number of rows to drop. A negative value drops from the end of the array.



* `columns` (optional): The number of columns to drop. A negative value drops columns from the end.



**Remarks:**



* A `#CALC!` error is returned if rows or columns are set to 0, creating an empty array.



* If the array exceeds the allowed size limit, `DROP` returns a `#NUM!` error.



* The function helps to clean up datasets, such as removing unnecessary columns or rows before analysis.


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
## EXPAND



The `EXPAND` function expands or pads an array to specified row and column.



**Syntax:**



_EXPAND(array, rows, [columns], [pad_with])_



**Parameters:**



* `array`: The array to expand.



* `rows`: The number of rows in the expanded array.



* `columns` (optional): The number of columns in the expanded array.



* `pad_with` (optional): The value to pad with if the array is smaller than the target size. Defaults to `#N/A`.



**Remarks:**



* If the rows or columns argument is less than the original array's dimensions, `EXPAND` will return a `#VALUE!` error.



* Padded cells use the [pad_with] argument; if omitted, it defaults to `#N/A`.



* Useful for filling or aligning datasets to match specific table structures.



## WRAPROWS



The `WRAPROWS` function wraps a one-dimensional vector into rows after a specified number of elements to form a new array.


**Syntax:**



_WRAPROWS(vector, wrap_count, [pad_with])_



**Parameters:**



* `vector`: The row or column of values to wrap.



* `wrap_count`: The maximum number of elements in each row.



* `pad_with` (optional): The value used to fill in any remaining cells if the array cannot be evenly divided. Defaults to `#N/A`.



**Remarks:**



* If the [wrap_count] is greater than the length of the vector, the vector is returned in a single row.



* The function returns a `#VALUE!` error if the input is not a one-dimensional array.



* If [wrap_count] is less than 1, a `#NUM!` error occurs.



* Cells that cannot be filled are assigned `#N/A`, unless otherwise specified with [pad_with].


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
## WRAPCOLS



The `WRAPCOLS` function wraps a one-dimensional vector into columns after a specified number of elements to form a new array.



**Syntax:**



_WRAPCOLS(vector, wrap_count, [pad_with])_



**Parameters:**



* `vector`: The row or column of values to wrap.



* `wrap_count`: The maximum number of elements in each column.



* `pad_with` (optional): The value used to fill in any remaining cells if the array cannot be evenly divided. Defaults to `#N/A`.



**Remarks:**



* If [wrap_count] exceeds the length of the vector, the vector is returned in a single column.


<<<<<<< HEAD

* If the vector is not a one-dimensional array, a `#VALUE!` error is returned.



=======
* If the vector is not a one-dimensional array, a `#VALUE!` error is returned.


>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
* A `#NUM!` error occurs if [wrap_count] is less than 1.



* Empty cells in the new array are filled with `#N/A` unless specified otherwise.



## SORT



The `SORT` function sorts the contents of an array in either ascending or descending order.


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
**Syntax:**



_SORT(array, [sort_index], [sort_order], [by_col])_



**Parameters:**



* `array`: The array or range to sort.



* `sort_index` (optional): The index (row or column number) to sort by. Defaults to the first row/column.



* `sort_order` (optional):  1 for ascending (default), -1 for descending.



* `by_col` (optional): `FALSE` (default) to sort by rows, or `TRUE` to sort by columns.



**Remarks:**



* When [sort_index] or [sort_order] is omitted, Excel defaults to sorting the first row or column in ascending order.



* `SORT` automatically spills the result into adjacent cells, making it convenient for dynamic arrays.



* Use the `SORTBY` function when you need more flexible sorting based on multiple criteria.



## SORTBY



The `SORTBY` function sorts an array based on values in a separate corresponding array or range.



**Syntax:**



_SORTBY(array, by_array1, [sort_order1], [by_array2, sort_order2], …)_



**Parameters:**



* `array`: The array to sort.



* `by_array1`: The array or range to sort by.



* `sort_order1` (optional): 1 for ascending (default), -1 for descending.



* `by_array2`, `sort_order2` (optional): Additional arrays and their sort orders, if needed.



**Remarks:**



* The function allows sorting on multiple criteria.



* Results are returned in a dynamic array that spills into adjacent cells.



* If no sort order is specified, Excel defaults to ascending order.



* Unlike `SORT`, `SORTBY` enables sorting based on multiple, unrelated criteria or arrays.



## FILTER



The `FILTER` function returns an array of values filtered based on criteria you define.



**Syntax:**



_FILTER(array, include, [if_empty])_



**Parameters:**



* `array`: The array, or range to filter.



* `include`: A Boolean array (same size as array) that indicates which values to keep.



* `if_empty` (optional): The value to return if no results match the criteria. Defaults to a `#CALC!` error.



**Remarks:**



* The `FILTER` function automatically spills the results into adjacent cells.



* If no matches are found, and [if_empty] is not defined, Excel returns a `#CALC!` error.



* `FILTER` will return an error if the include array is not Boolean, or if it contains errors such as `#N/A` or `#VALUE!`.



## BAHTTEXT  



The function `BAHTTEXT` converts a number to Thai text and adds the suffix "Baht."  



**Syntax**  



_BAHTTEXT(number)_  



**Parameters:**  



* `number`: A number you want to convert to text. This can be:  



  * A numeric value  



  * A reference to a cell containing a number  



  * A formula that evaluates to a number  



**Remarks:**  



* The output of `BAHTTEXT` is in Thai text with "Baht" as the suffix.  



