---
layout: post
title: Configuration-Settings
description: configuration settings
platform: WindowsForms
control: Edit
documentation: ug
---

# Configuration Settings

With careful design and implementation, Essential Edit is built to be flexible and easy-to-use. To configure Essential Edit for an application, only a configuration file is needed. The configuration settings contain sections that control various customizations such as rendering colors for keywords, token-based segments for comments, strings and more.

It comprises the following topics:

## Creating a Custom Language Configuration File

The following code snippet illustrates a sample XML-based configuration file.



[XML]



&lt;?xml version="1.0" encoding="utf-8" ?&gt;

&lt;ArrayOfConfigLanguage&gt;

  &lt;ConfigLanguage name="default_language"&gt;

    &lt;formats&gt;

      &lt;format name="Text" Font="Courier New, 10pt" FontColor="Black" /&gt;

      &lt;format name="SelectedText" Font="Courier New, 10pt" BackColor="Highlight" FontColor="HighlightText" /&gt;

    &lt;/formats&gt;

    &lt;extensions /&gt;

    &lt;lexems /&gt;

    &lt;splits /&gt;

  &lt;/ConfigLanguage&gt;

  &lt;ConfigLanguage name="C#"&gt;

    &lt;formats&gt;

      &lt;format name="Text" Font="Courier New, 10pt" FontColor="Black" /&gt;

      &lt;format name="SelectedText" Font="Courier New, 10pt" BackColor="Highlight" FontColor="HighlightText" /&gt;

      &lt;format name="Whitespace" Font="Courier New, 10pt" FontColor="Black" /&gt;

      &lt;format name="KeyWord" Font="Courier New, 10pt" FontColor="Blue" /&gt;

    &lt;/formats&gt;

    &lt;extensions&gt;

      <extension>cs</extension>

    &lt;/extensions&gt;

    &lt;lexems&gt;

      &lt;lexem BeginBlock="public" Type="KeyWord" /&gt;

    &lt;/lexems&gt;

    &lt;splits&gt;

      &lt;split&gt;+=&lt;/split&gt;

    &lt;/splits&gt;

  &lt;/ConfigLanguage&gt;

&lt;/ArrayOfConfigLanguage&gt;



From the code given above, the configuration file contains a set of language configurations. Every configuration file must have configuration for the language named default_language, which is used as a default configuration. 





Language Configuration (ConfigLanguage) Definition

Name of the language must be set using the name attribute of the ConfigLanguage tag. If language is case insensitive, you should set the CaseInsensitive attribute to 'True'.

Language configuration is divided into the following four sections:

* Extensions
* Splits
* Formats
* Lexems



* Extensions-Contains a list of extensions that are associated with this language. Every extension can be specified like the following:



<extension>cs</extension>



* Splits-Contains a list of expressions that must be treated as one word. By default, "=" and "+" are splitters; So each of them will be returned by the tokenizer as a single char. But if you want to specify some configuration for "+=", you should specify "+=" in the Splits section. To do this, just add the below string to the Splits section:



&lt;split&gt;+=&lt;/split&gt;



* Formats-Contains a list of definitions of the formats that can be used later in lexem configuration. Every format is specified by a tag &lt;format&gt;. Every format contains the attributes such as name, font, fore color, font color, back color, style, weight, underline and line color.
* Name-Specifies the name of the format. SelectedText is always used for selection (if fontcolor is not specified, selected text is drawn with its own color; only the background is changed).
* Font-String with XML representation of the font. Refer to the default configuration file for examples.
* Forecolor-Specifies the color of the rectangle that is drawn around the text. It is not drawn if fore color is not specified.
* FontColor-Specifies the color of the text.
* BackColor-Specifies the background color of the text.
* Style-Specifies the fill style of the background. Look at the HatchStyle enumeration members for the list of possible values.
* Weight-Weight of the underlining. Possible values: Thick, Bold, Double, and Double Bold.
* Underline-Underline style. Possible values: None, Solid, DashDot, and Wave.
* LineColor-Color of the underlining.



* Lexems-Contains rules for parsing text. In other words, rules for setting lexem format. There are two attributes to specify the format of the lexem: Type and FormatName. FormatName is used only if Type is 'Custom'. Type is used for standard predefined types of lexems, some of them have special meaning for controls (such as SelectedText). For a list of possible values. Refer to the definition of the FormatType enumeration.



The simplest case of lexem definition looks like the following:



[XML]



&lt;lexem BeginBlock="public" Type="KeyWord" /&gt;



It means that the word public will be drawn using the KeyWord format setting. For non-complex lexems, you can specify ContinueBlock and EndBlock attributes. 



* If you specify ContinueBlock, the parser will read words (tokens) and set the specified formatting for them until it encounters a ContinueBlock. 
* If you specify EndBlock, specified formatting will be set only if first token matches ContinueBlock and is followed by EndBlock. 



All matched text will be treated later as one word, and won't be broken into parts in WordWrap mode.

If you want to use regular expressions in [Begin / Continue / EndBlock], you should set IsBeginRegex/IsContinueRegex/IsEndRegex to 'True'.



Example



[XML]



&lt;lexem BeginBlock="$" EndBlock="^[0-9a-fA-F]+$" IsEndRegex="true" Type="Number" /&gt;



In Delphi file parsing, numbers in hexadecimal format like $54df54af will be treated as one word.



If the IsComplex attribute is set to 'True', and the token matches the BeginBlock of the lexem, then the lexem found is inserted into the stack. At the start, the stack contains only language, so the parser checks only for children of the &lt;lexems&gt; tag. Configuration for the token is always searched among sub-lexems of the last lexem in the stack. If the configuration is not found, a search is done among the sub-lexems of the second lexem in the stack, and so on. This feature can be disabled by setting the OnlyLocalSublexems attribute to 'True', and the token will be colored like the last lexem from the stack. If the configuration is still not found, the parser checks if it is the EndBlock of the last lexem in the stack, and if it matches, the token is formatted accordingly and the lexem is removed from the stack. If the token is the EndBlock,and the IsPseudoEnd attribute is set to 'True', the lexem is removed from the stack, but the search process for that token does not stop. Refer to the sample code below.



To parse a C# string, a typical lexem would be as shown below:



[XML]



&lt;lexem BeginBlock="&quot;" EndBlock="&quot;" Type="String" IsComplex="true" OnlyLocalSublexems="true"&gt;

&lt;SubLexems&gt;

&lt;lexem BeginBlock="\" EndBlock="&quot;" Type="String" /&gt;

&lt;/SubLexems&gt;

&lt;/lexem&gt;



To collapse complex lexems, set IsCollapsible to 'True'. CollapseName property specifies the text to be set instead of the collapsed construction. To make the C# string collapsible, you should use the following code:



[XML]



&lt;lexem BeginBlock="&quot;" EndBlock="&quot;" Type="String" IsComplex="true" OnlyLocalSublexems="true" IsCollapsable="true"  CollapseName="String"&gt;

&lt;SubLexems&gt;

&lt;lexem BeginBlock="\" EndBlock="&quot;" Type="String" /&gt;

&lt;/SubLexems&gt;

&lt;/lexem&gt;



Loading a Config File

To load a Config file to the Edit Control, use the following code snippet.



[C#]



this.editControl1.Configurator.Open(string fileName);



[C#]



Me.editControl1.Configurator.Open(String fileName)



See Also



Creating Configuration Settings Programmatically



## Creating Configuration Settings Programmatically

Edit Control offers rich set of APIs to create configuration settings in code. This provides greater flexibility so that users can dynamically modify configuration settings of the currently loaded configuration as per their requirements. The following procedure will walk you through the entire process of creating configuration settings programmatically.



1. A new configuration language can be added to the Edit Control by using the CreateLanguageConfiguration method. Once the new configuration language is created, apply it to the contents of the Edit Control by using the ApplyConfiguration method.



[C#]



// Create a new configuration language and apply the same to the contents of the Edit Control.

IConfigLanguage currentConfigLanguage = this.editControl1.Configurator.CreateLanguageConfiguration(newConfigLanguage);

this.editControl1.ApplyConfiguration(currentConfigLanguage);



[VB.NET]



' Create a new configuration language and apply the same to the contents of the Edit Control.

Dim currentConfigLanguage As IConfigLanguage = Me.editControl1.Configurator.CreateLanguageConfiguration(NewConfigLanguage)

Me.editControl1.ApplyConfiguration(currentConfigLanguage)



2. Create a custom format object by using the Language.Add method of the Edit Control and define its attributes.



[C#]



// Creating a custom format object.

ISnippetFormat formatMethod = this.editControl1.Language.Add("CodeBehind");



// Defining its attributes.

formatMethod.FontColor = Color.IndianRed;

formatMethod.Font = new Font("Garamond", 12);

formatMethod.BackColor = Color.Yellow;



[VB.NET]



' Creating a custom format object.

Dim formatMethod As ISnippetFormat = Me.EditControl1.Language.Add("CodeBehind")



' Defining its attributes.

formatMethod.FontColor = Color.IndianRed

formatMethod.Font = New Font("Garamond", 12)

formatMethod.BackColor = Color.Yellow



3. Create a ConfigLexem object that belongs to the above defined format and define its attributes.



[C#]



// Creating a ConfigLexem object that belongs to the above defined format.

ConfigLexem configLex = new ConfigLexem("&lt;%@", "%&gt;", FormatType.Custom, false);



// Defining its attributes.

configLex.IsBeginRegex = false;

configLex.IsEndRegex = false;

configLex.ContinueBlock = ".+";

configLex.IsContinueRegex = true;

configLex.FormatName = "CodeBehind";



[VB.NET]



// Creating a ConfigLexem object that belongs to the above defined format.

Dim configLex As ConfigLexem = New ConfigLexem("&lt;%", "%&gt;", FormatType.Custom, False)



' Defining its attributes.

configLex.IsBeginRegex = False

configLex.IsEndRegex = False

configLex.ContinueBlock = ".+"

configLex.IsContinueRegex = True

configLex.FormatName = "CodeBehind"



4. Add the ConfigLexem object to the Lexems collection of the current language.



[C#]



this.editControl1.Language.Lexems.Add(configLex);



[VB.NET]



Me.editControl1.Language.Lexems.Add(configLex)



5. Add the appropriate splits and extensions to the Language.Splits and Language.Extensions collections.



[C#]



// Adding the necessary split definitions to the current language's Splits collection.

this.editControl1.Language.Splits.Add("<%@");

this.editControl1.Language.Splits.Add("%>");



// Adding the necessary extension definitions to the current language's Extensions collection.

this.editControl1.Language.Extensions.Add("aspx");



[VB.NET]



' Adding the necessary split definitions to the current language's Splits collection.

Me.EditControl1.Language.Splits.Add("<%")

Me.EditControl1.Language.Splits.Add("%>")



' Adding the necessary extension definitions to the current language's Extensions collection.

Me.EditControl1.Language.Extensions.Add("aspx")



6. Invoke the ResetCaches method to apply these newly added configuration settings.



[C#]



// Reset the current configuration language cache to reflect these changes.

this.editControl1.Language.ResetCaches();



[VB.NET]



' Reset the current configuration language cache to reflect these changes.

Me.editControl1.Language.ResetCaches()



See Also



Creating a Custom Language Configuration File



