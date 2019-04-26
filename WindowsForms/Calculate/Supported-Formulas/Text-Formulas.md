---
layout: post
title: Supported Formulas of Calculate for Syncfusion Essential windowsforms
description: supported formulas
platform: windowsforms
control: Calculate
documentation: ug
---

# TEXT FORMULAS



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



The `FindB` function finds one text string (text1) within another text string (text2) and returns the number of the starting position of text1 based on the number of bytes each character uses from the first character of text2.At present, it finds the position of string based on single-byte character set.


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