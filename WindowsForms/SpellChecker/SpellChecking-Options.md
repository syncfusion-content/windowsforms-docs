---
layout: post
title: SpellChecking-Options
description: spellcheckingoptions
platform: WindowsForms
control: Editors Package
documentation: ug
---

# SpellChecking Options

SpellChecker allows customizing the way the controls look for the misspelled words in the input text with the following APIs. 

{% highlight c# %}



using Syncfusion.Text;



SpellChecker spellChecker = new SpellChecker();



spellChecker.ExcludeEmailAddress = true;

spellChecker.ExcludeFileNames = true;

spellChecker.ExcludeHtmlTags = true;

spellChecker.ExcludeInternetAddresses = true;

spellChecker.ExcludeRepeatedWords = true;

spellChecker.ExcludeSpecialSymbols = true;

spellChecker.ExcludeWordsInMixedCase = true;

spellChecker.ExcludeWordsInUpperCase = true;

spellChecker.ExcludeWordsWithNumbers = true;


{% endhighlight %}


{% highlight vbnet %}



Imports Syncfusion.Text



Private spellChecker As New SpellChecker()



spellChecker.ExcludeEmailAddress = True

spellChecker.ExcludeFileNames = True

spellChecker.ExcludeHtmlTags = True

spellChecker.ExcludeInternetAddresses = True

spellChecker.ExcludeRepeatedWords = True

spellChecker.ExcludeSpecialSymbols = True

spellChecker.ExcludeWordsInMixedCase = True

spellChecker.ExcludeWordsInUpperCase = True

spellChecker.ExcludeWordsWithNumbers = True

{% endhighlight %}

These options are accessible at runtime through the Spell Checker Options dialog; this can be invoked by the Options button available in the SpellChecker dialog.

### Custom Dictionary:

SpellChecker comes with the custom dictionary support, the spellchecking engine always look for the words in the custom dictionary list when a word does not exists in the spellcheckers dictionary.

Words can be added to the custom dictionary with the Add to dictionary button in the SpellChecker dialog. Custom Dictionary will be created when a word that does not exists in the spellchecker dictionary is about to be added, and will be placed in the common application data path for the application. 

Users can add their own custom dictionary by refereing to the dictionary file path in the Custom Dictionary Editor dialog.

Word list can be customized with the Custom Dictionary Editor dialog, and this can be invoked by the Custom Dictionary button in the SpellChecker dialog. Users can add, delete words from the dictionary.

### Use Case Scenarios

SpellChecker can be used for text processing applications and data entry forms where the input data to be spell error free.

Properties, Methods, and Events Tables for SpellChecker

#### Properties

Table 422 : Property/Properties Table

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
ExcludeRepeatedWords</td><td>
Gets or sets a value specifying whether to ignore repeated words during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
ExcludeWordsInMixedCase</td><td>
Gets or sets a value specifying whether to ignore words in mixed case during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
ExcludeWordsInUpperCase</td><td>
Gets or sets a value specifying whether to ignore words in upper case during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
ExcludeWordsWithNumbers</td><td>
Gets or sets a value specifying whether to ignore words with number during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
MaxSuggestions</td><td>
Gets or sets a value specifying the number of suggestions to be displayed in the suggestion list.</td><td>
</td><td>
Integer</td><td>
NA</td></tr>
<tr>
<td>
ExcludeSpecialSymbols</td><td>
Gets or sets a value specifying whether to ignore special symbols during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
ExcludeFileNames</td><td>
Gets or sets a value specifying whether to ignore file names during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
ExcludeInternetAddresses</td><td>
Gets or sets a value specifying whether to ignore internet address during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
DictionaryPath</td><td>
Gets or sets a value specifying the path of the dictionary.</td><td>
</td><td>
String</td><td>
NA</td></tr>
<tr>
<td>
CustomDictionaryPath</td><td>
Gets or sets a value specifying the path of the custom dictionary.</td><td>
</td><td>
String</td><td>
NA</td></tr>
<tr>
<td>
ExcludeEmailAddress</td><td>
Gets or sets a value specifying whether to ignore email address during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
ExcludeHtmlTags</td><td>
Gets or sets a value specifying whether to ignore html tags during spell check.</td><td>
</td><td>
Boolean (true / false)</td><td>
NA</td></tr>
<tr>
<td>
MisspelledWords</td><td>
Holds the list of misspelled words.</td><td>
</td><td>
ArrayList</td><td>
NA</td></tr>
<tr>
<td>
DictionaryStream</td><td>
Gets or sets the stream that contains the dictionary.</td><td>
</td><td>
Stream</td><td>
NA</td></tr>
</table>

Methods 

Table 423 : Method/s Table

<table>
<tr>
<th>
Method </th><th>
Description </th><th>
Parameters </th><th>
Type </th><th>
Return Type </th><th>
Reference links </th></tr>
<tr>
<td>
SpellCheck</td><td>
Checks the text of the IEditor instance for misspelled words with SpellCheckerDialog</td><td>
IEditor – Instance of an IEditor whose text is to be checked for misspelled words.</td><td>
</td><td>
void</td><td>
</td></tr>
<tr>
<td>
Suggest</td><td>
Generates the word list by deleting a single alphabet and interchanging the adjacent alphabets every time</td><td>
Source – The misspelled word to which it suggests the right words.</td><td>
</td><td>
ArrayList</td><td>
</td></tr>
<tr>
<td>
WriteToDictionary</td><td>
Writes the specified word to the dictionary.</td><td>
custDictPath -Specifies the path of the dictionary file.Word - Specifies the word to be added to the dictionary.</td><td>
</td><td>
void</td><td>
</td></tr>
</table>

Events

Table 424: Event/sTable

<table>
<tr>
<th>
Event </th><th>
Description </th><th>
Arguments </th><th>
Type </th><th>
Reference links </th></tr>
<tr>
<td>
Error</td><td>
Raised whenever exceptions occur while handling the dictionary files or streams. </td><td>
Sender – sender of the exceptionsex – the details of the exception occurred.</td><td>
NA</td><td>
</td></tr>
</table>

### Adding SpellChecker to a RichTextbox

Spellchecker can easily be associated with the controls of type TextBoxBase via the SpellEditorWrapper class. The following code snippet exhibits how spellchecker can be associated with RichTextBox.

{% highlight c# %}



using Syncfusion.Text;



SpellChecker spellChecker = new SpellChecker();



spellChecker.SpellCheck(new SpellEditorWrapper(this.richTextBox1));

{% endhighlight %}



{% highlight vbnet %}



Imports Syncfusion.Text



Private spellChecker As New SpellChecker()



spellChecker.SpellCheck(New SpellEditorWrapper(Me.richTextBox1))

{% endhighlight %}

#### Samples Link

A sample demonstrating the use of SpellChecker is available in the sample browser shipped with the Essential Studio under Tools Samples. Navigate to the following path to access the sample.

Essential Studio Samples > Tools Samples > Editors Package > Spell Checker Demo