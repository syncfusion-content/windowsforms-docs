---
layout: post
title: Syntax Highlighting 
description: syntax highlighting
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Syntax Highlighting 

Provides built-in syntax highlighting support for popular languages like SQL, Delphi or Pascal, HTML, VB.NET, XML, Java, VBScript, JScript, PowerShell and C#.

## Configure built in language

Syntax highlighting of built-in languages can be applied using enumerator named [KnownLanguages](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.html) and function named [ApplyConfiguration](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ApplyConfiguration.html).   

**CSharp** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for C# as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.CSharp);

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for C# as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.CSharp)

{% endhighlight %}

{% endtabs %}


`LoadFile` function in EditControl helps to loads the content of any desired file into the EditControl, instead of typing the code in it.

{% tabs %}

{% highlight C# %}

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\FileName.cs");

{% endhighlight %}


{% highlight VB %}

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\FileName.cs")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img3.png)

**Delphi** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for Delphi as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.Delphi);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\DelphiSource.pas");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for Delphi as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.Delphi)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\DelphiSource.pas")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img4.png)

**XML** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for XML as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.XML);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\XMLSource.xml");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for XML as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.XML)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\XMLSource.xml")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img5.png)

**HTML** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for HTML as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.HTML);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\HTMLSource.html");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for HTML as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.HTML)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\HTMLSource.html")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img6.png)

**VB.NET** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for VB.NET as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.VBNET);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\VBSource.vb");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for VB.NET as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.VBNET)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\VBSource.vb")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img7.png)

**SQL** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for SQL as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.SQL);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\SQLSource.sql");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for SQL as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.SQL)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\SQLSource.sql")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img8.png)

**Java** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for Java as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.Java);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\JavaSource.Java");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for Java as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.Java)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\JavaSource.Java")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img9.png)

**VBScript** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for VBScript as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.VBScript);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\VBScriptSource.vb");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for VBScript as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.VBScript)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\VBScriptSource.vb")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img10.png)

**JScript** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for JScript as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.JScript);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\JScriptSource.js");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for JScript as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.JScript)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\JScriptSource.js")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img11.png)

**PowerShell** 

{% tabs %}

{% highlight C# %}

// Considering configuration settings for PowerShell as an example. Using the KnownLanguages enumerator.

this.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.PowerShell);

// Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\PowerShell.ps1");

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for PowerShell as an example. Using the KnownLanguages enumerator.

Me.editControl1.ApplyConfiguration(Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.PowerShell)

` Loading the files into EditControl by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\PowerShell.ps1")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img12.png)

N> Refer to the following sample link that demonstrates the `SyntaxHighlighting` functionalities of EditControl.
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\\Windows\Edit.Windows\Samples\Syntax Highlighting\Syntax Coloring

## Customize built in language settings

EditControl provides support to customize the built in language configuration settings. The following code example demonstrates C# language customization:

### Initialize the configuration language.

In EditControl, languages need to be configured in XML file named Config.xml. 

Name of the language must be set using the name attribute of the `ConfigLanguage` tag attribute. When the language is case insensitive, you should set the `CaseInsensitive` attribute to `true`.

{% highlight xaml %}

<ConfigLanguage name="C#">

    <formats>
    </formats>
    
    <extensions>
    </extensions>
    
    <lexems>
    </lexems>
    
    <splits>
    </splits>
  
</ConfigLanguage>

{% endhighlight %}

### Format 

It contains a list of definitions of the formats that can be used later in lexem configuration. Every format contains the attributes such as name, font,foreground color, font color, background color, style, weight, underline and line color.

{% highlight xaml %}

  <formats>
      <format name="Text" Font="Consolas, 12pt"/>
  </formats>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img23.png)

### Font Color

Font color of any format in the specified language can be customized using `FontColor` property of Format tag. 

{% highlight xaml %}

  <ConfigLanguage name="C#">
    <formats>
      <format name="Text" Font="Consolas, 10pt" FontColor="Red" />
    </formats>
  </ConfigLanguage>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img15.png)


### Lexem

Lexem contains rules for parsing the text. `Type` and `FormatName` attributes of lexems helps to specify the format of the lexem. 

* **Type** - Used for Standard predefined types of the lexems. 
* **FormatName** - It is used only when the type is Custom.

{% highlight xaml %}

   <lexem BeginBlock="public" Type="KeyWord" />
   <lexem BeginBlock="class" Type="KeyWord" />
   <lexem BeginBlock="+" Type="Operator" />
   <lexem BeginBlock="-" Type="Operator" />

{% endhighlight %}

#### SubLexems

Sublexems that must be skipped if they are found after BeginBlock string before EndBlock string. 

{% highlight xaml %}

  <SubLexems>
     <lexem BeginBlock="\" EndBlock="&quot;" Type="String" />
  </SubLexems>

{% endhighlight %}

#### Collapsible region

Collapsible region can be customized by adding the desired lexem with attributes such as `IsCollapsable` and `CollapseName`, as given below. 

{% highlight xaml %}

<lexems>

     <lexem BeginBlock="{" EndBlock="}" Type="KeyWord" IsComplex="true" IsCollapsable="true" Indent="true" DropContextPrompt="true" CollapseName="{...}">
        <SubLexems>
          <lexem BeginBlock="\n" IsBeginRegex="true" />
        </SubLexems>
     </lexem>

</lexems>

{% endhighlight %}

The above code example works only when [ShowOutliningCollapsers](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowOutliningCollapsers.html) property in EditControl is `true`.

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img30.png)

### Keyword 

Custom keywords can be added or existing keywords can be customized in built-in languages. 

{% highlight xaml %}

  <formats>
      <format name="KeyWord" Font="Consolas, 10pt" FontColor="Green" />
  </formats>
  <lexems>
    <lexem BeginBlock="int" Type="KeyWord" />
    <lexem BeginBlock="using" Type="KeyWord" />
  </lexems>
 
{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img28.png)

### Operator

Custom operators can be added or existing operators can be customized in built-in languages by using `Lexem` configuration. 

{% highlight xaml %}

 <formats>
      <format name="Operator" Font="Consolas, 10pt" FontColor="Brown" />
  </formats>
 <lexems>
   <lexem BeginBlock="++" Type="Operator" />
   <lexem BeginBlock="+" Type="Operator" />
 </lexems>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img29.png)
 
### Regex

A regular expression is a pattern that could be matched against any input text. 

For example, if you like to customize the strings that ends with !, this can be achieved by using the regex property of `IsBeginRegex` and `IsEndRegex` as `true` based on the expression given in the lexem.

{% highlight xaml %}

  <formats>
    <format name="String" Font="Courier New, 13pt, style=Bold" FontColor="Brown" />
  </formats>

  <lexems>
    <lexem BeginBlock="[A-z\s]+\!" IsBeginRegex="true"  Type="String"/>
  </lexems>
 
  // we have to mention the same Regex expression in the Split tag.  

	<splits>
      <split IsRegex="true">[A-z\s]+\!</split>	 
	</splits>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img32.png)

#### Error words highlighting

Error lexems can be added to the language by declaring a format names Error and it can be highlighted using underlines. Below code is an example of declaring "#endregion" as error if #region is not BeginBlock, priority values assigned to order the interrupt.

{% highlight xaml %}

<formats>
  <format name="Error" Font="Courier New, 10pt" FontColor="Black" underline="Wave" LineColor="Red" />
</formats>

<lexems>
<lexem BeginBlock="pubblic" Type="Error" Priority="-10" />
<lexem BeginBlock="#else" Type="Error" Priority="-10" />
</lexems>

 <splits>
      <split>#else</split>	 
  </splits> 

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img16.png)

### Splits

Splits helps to configure two different words as a single. For example, consider # and region that can be treated as single word by using `Split` configuration.

{% highlight xaml %}

<formats>
  <format name="KeyWord" Font="Courier New, 14pt" FontColor="Orange" />
</formats>

<lexems>
   <lexem BeginBlock="#region" Type="KeyWord" />
   <lexem BeginBlock="#endregion" Type="KeyWord" />
</lexems>

<splits>
  <split>#region</split>
  <split>#endregion</split>
</splits>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img31.png)

### Auto replace triggers

`AutoReplaceTriggers` attribute helps to auto corrects the incorrect spelling of lexems.

The following code demonstrates auto corrects int and the, if they misspelled as itn and teh respectively.

{% highlight xaml %}

<ConfigLanguage name="C#" TriggersActivators=".">

<AutoReplaceTriggers>

   <AutoReplaceTrigger From="teh" To="the" />
	 <AutoReplaceTrigger From="itn" To="int" />

</AutoReplaceTriggers>

 </ConfigLanguage>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img41.png)

N> To enable this feature, we must set the `TriggersActivators` property of ConfigLanguage tag attribute.

### File extension

Extensions contain a list of extensions that are associated with that particular language.

{% highlight xaml %}
<extensions>
	<extension>csi</extension>
</extensions>
{% endhighlight %}

### Apply custom configuration in EditControl

The following code examples help you to configure the configuration file in the EditControl.

{% tabs %}

{% highlight C# %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

// Plug-in an external configuration file.

this.editControl1.Configurator.Open(configFile);

// Apply the configuration defined in the configuration file.

this.editControl1.ApplyConfiguration("C#");

{% endhighlight %}


{% highlight VB %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

' Plug-in an external configuration file.

Me.editControl1.Configurator.Open(configFile)

' Apply the configuration defined in the configuration file.

Me.editControl1.ApplyConfiguration("C#")

{% endhighlight %}

{% endtabs %}

## Custom language using XML

EditControl provides supports for custom language configuration. You can plug-in an external configuration file that defines a custom language to the EditControl by using the [Configurator.Open](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~Configurator.html) and [ApplyConfiguration](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ApplyConfiguration.html) functions in EditControl.

### Initialize the configuration language.

In EditControl, languages need to be configured in XML file named Config.xml. 

Name of the language must be set using the name attribute of the `ConfigLanguage` tag attribute. When the language is case insensitive, you should set the `CaseInsensitive` attribute to `true`.

The following code example demonstrates the same.

{% highlight xaml %}

<ConfigLanguage name="C++">

    <formats>
    </formats>
    
    <extensions>
    </extensions>
    
    <lexems>
    </lexems>
    
    <splits>
    </splits>
  
</ConfigLanguage>

{% endhighlight %}

### Format 

It contains a list of definitions of the formats that can be used later in lexem configuration. Every format is specified by a tag <format>.

{% highlight xaml %}

<formats>
      <format name="Text" Font="Consolas, 12pt"/>
</formats>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img24.png)

### Font Color

Font color of any format in the specified language can be customized using `FontColor` property of Format tag. 

{% highlight xaml %}

<formats>
  <format name="Text" Font="Courier New, 10pt style=Bold"  FontColor="Red" />
</formats>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img33.png)

### Lexem

Lexem contains rules for parsing the text. `Type` and `FormatName` attributes of lexems helps to specify the format of the lexem. 

* **Type** - Used for Standard predefined types of the lexems. 
* **FormatName** - It is used only when the type is Custom.

{% highlight xaml %}

<lexems>
  <!--Adds the Keywords in the lexem-->.
  <lexem BeginBlock="int" Type="KeyWord" />
  <lexem BeginBlock="while" Type="KeyWord" />
  <!--Adds the operator in the Lexem-->.
   <lexem BeginBlock="&lt;" Type="Operator" />
   <lexem BeginBlock="&gt;" Type="Operator" />
</lexems>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img34.png)

#### SubLexems

Sublexems that must be skipped if they are found after BeginBlock string before EndBlock string. 

{% highlight xaml %}

  <SubLexems>
     <lexem BeginBlock="\" EndBlock="&quot;" Type="String" />
  </SubLexems>

{% endhighlight %}

#### Collapsible region

Collapsible region can be customized by adding the desired lexem with attributes such as `IsCollapsable` and `CollapseName`, as given below.

{% highlight xaml %}

<lexems>

     <lexem BeginBlock="{" EndBlock="}" Type="KeyWord" IsComplex="true" IsCollapsable="true" Indent="true" DropContextPrompt="true" CollapseName="{...}">
        <SubLexems>
          <lexem BeginBlock="\n" IsBeginRegex="true" />
        </SubLexems>
      </lexem>

</lexems>

{% endhighlight %}

The above code example works only when [ShowOutliningCollapsers](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowOutliningCollapsers.html) property in EditControl is `true`.

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img39.png)


### Keyword 

Custom keywords can be added or existing keywords can be customized in built-in languages by using `Lexem` configuration. 

{% highlight xaml %}

  <formats>
      <format name="KeyWord" Font="Consolas, 10pt" FontColor="White" />
  </formats>
  <lexems>
    <lexem BeginBlock="int" Type="KeyWord" />
    <lexem BeginBlock="using" Type="KeyWord" />
  </lexems>
 
{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img36.png)

### Operator

Custom operators can be added or existing operators can be customized in built-in languages. 

{% highlight xaml %}

 <formats>
      <format name="Operator" Font="Consolas, 10pt" FontColor="Brown" />
  </formats>
 <lexems>
   <lexem BeginBlock="&lt;" Type="Operator" />
   <lexem BeginBlock="&gt;" Type="Operator" />
 </lexem>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img35.png)
 
### Regex

A regular expression is a pattern that could be matched against any input text. 

For example, if you like to customize the strings that ends with !, this can be achieved by using the regex property of `IsBeginRegex` and `IsEndRegex` as true based on the expression given in the lexem.

{% highlight xaml %}

  <formats>
    <format name="String" Font="Courier New, 13pt, style=Bold" FontColor="Brown" />
  </formats>

  <lexems>
    <lexem BeginBlock="[A-z\s]+\!" IsBeginRegex="true"  Type="String"/>
  </lexems>
 
  // we have to mention the same Regex expression in the Split tag.  

	<splits>
      <split IsRegex="true">[A-z\s]+\!</split>	 
	</splits>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img37.png)

#### Error words highlighting

Error lexems can be added to the language by declaring a format names Error and it can be highlighted using underlines.

{% highlight xaml %}

<formats>
  <format name="Error" Font="Courier New, 10pt" FontColor="Black" underline="Wave" LineColor="Red" />
</formats>

<lexems>
<lexem BeginBlock="#endregion" Type="Error" Priority="-10" />
<lexem BeginBlock="#endif" Type="Error" Priority="-10" />
<lexem BeginBlock="#else" Type="Error" Priority="-10" />
</lexems>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img40.png)

### Splits

Splits helps to configure two different words as a single. For example, consider # and include that can be treated as single word by using `Split` configuration.

{% highlight xaml %}

<formats>
  <format name="KeyWord" Font="Courier New, 14pt" FontColor="Orange" />
</formats>

<lexems>
   <lexem BeginBlock="#include" Type="KeyWord" />
</lexems>

<splits>
  <split>#include</split>
</splits>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img38.png)

### Auto replace triggers

`AutoReplaceTriggers` attribute helps to auto corrects the incorrect spelling of lexems.

The following code demonstrates auto corrects int and the, if they misspelled as itn and teh respectively.

{% highlight xaml %}

<ConfigLanguage name="C#" TriggersActivators=".">

 <AutoReplaceTriggers>
			<AutoReplaceTrigger From="teh" To="the" />
			<AutoReplaceTrigger From="itn" To="int" />
 </AutoReplaceTriggers>

 </ConfigLanguage>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img42.png)

N> To enable this feature, we must set the `TriggersActivators` property of ConfigLanguage tag attribute.

### File extension

Extensions contain a list of extensions that are associated with that particular language.

{% highlight xaml %}

 <extensions>
    <extension>cpp</extension>
  </extensions>

{% endhighlight %}

### Multiple language configuration

EditControl supports multiple language configuration, which helps to configure one or more language in single language configuration.

The following code example illustrates HTML with JScript language configuration.

{% highlight xaml %}

 <ConfigLanguage name="HTML (Light)" CaseInsensitive="true" Known="HTML" StartComment="&lt;!--" EndComment="--&gt;">
  <formats>
      <format name="Text" Font="Courier New, 10pt" FontColor="Black" />
      <format name="TagName" Font="Courier New, 10pt" FontColor="Green" />
      <format name="AttributeName" Font="Courier New, 10pt" FontColor="Red" />
      <format name="KeyWord" Font="Courier New, 10pt" FontColor="Blue" />
      <format name="Operator" Font="Courier New, 10pt" FontColor="Blue" />
    </formats>

    <extensions>
      <extension>html</extension>
      <extension>htm</extension>
    </extensions>

    <!--JavaScript and HTML-->
    <lexems>
      <lexem BeginBlock="&lt;" Type="Operator" />
      <lexem BeginBlock="&gt;" Type="Operator" />
      <lexem BeginBlock="if" Type="KeyWord" />
      <lexem BeginBlock="var" Type="KeyWord" />
      <lexem BeginBlock="escape" Type="KeyWord" />
      <lexem BeginBlock="head" Type="AttributeName" />
      <lexem BeginBlock="body" Type="AttributeName" />
      <lexem BeginBlock="meta" Type="AttributeName" />
      <lexem BeginBlock="title" Type="AttributeName" />
      <lexem BeginBlock="HTML" Type="AttributeName" />
      <lexem BeginBlock="PUBLIC" Type="AttributeName" />
      <lexem BeginBlock="script" EndBlock="(&gt;)|(/&gt;)" IsEndRegex="true" IsPseudoEnd="true" IsComplex="true" Type="Custom" FormatName="TagName"/>
    </lexems>

</ConfigLanguage>

{% endhighlight %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img25.png)

N> Refer to the following sample link that demonstrates the Custom language configuration in EditControl.
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\\Windows\Edit.Windows\Samples\Syntax Highlighting\Syntax Coloring

### Apply custom configuration in EditControl

{% tabs %}

{% highlight C# %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

// Plug-in an external configuration file.

this.editControl1.Configurator.Open(configFile);

// Apply the configuration defined in the configuration file.

this.editControl1.ApplyConfiguration("C++");

{% endhighlight %}


{% highlight VB %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

' Plug-in an external configuration file.

Me.editControl1.Configurator.Open(configFile)

' Apply the configuration defined in the configuration file.

Me.editControl1.ApplyConfiguration("C++")

{% endhighlight %}

{% endtabs %}

N> Refer to the following sample link that demonstrates the Custom language configuration in EditControl.
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\\Windows\Edit.Windows\Samples\Syntax Highlighting\Custom Config

## Configure custom language using code

EditControl also offers extensive support to create configuration settings programmatically. This provides greater flexibility so that users can dynamically modify configuration settings of the currently loaded configuration as per their requirements. The following procedure will walk you through the entire process of creating configuration settings programmatically.

### Add new configuration language to EditControl

A new configuration language can be added to the EditControl by using the [CreateLanguageConfiguration](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Implementation.Config.Config~CreateLanguageConfiguration.html) function of [Config](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Implementation.Config.Config.html) class. Once the new configuration language is created, apply it to the contents of EditControl by using the [ApplyConfiguration](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ApplyConfiguration.html) function.

{% tabs %}

{% highlight C# %}

// Create a new configuration language and apply the same to the contents of the EditControl.

IConfigLanguage currentConfigLanguage = this.editControl1.Configurator.CreateLanguageConfiguration("New");

this.editControl1.ApplyConfiguration(currentConfigLanguage);

{% endhighlight %}


{% highlight VB %}

' Create a new configuration language and apply the same to the contents of the EditControl.

Dim currentConfigLanguage As IConfigLanguage = Me.editControl1.Configurator.CreateLanguageConfiguration("New")

Me.editControl1.ApplyConfiguration(currentConfigLanguage)

{% endhighlight %}

{% endtabs %}

### Format configuration

Create a custom format object by using the [Language.Add](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IFormatManager~Add.html) function in EditControl and define its attributes.

{% tabs %}

{% highlight C# %}

// Creating a custom format object.

ISnippetFormat formatMethod = this.editControl1.Language.Add("CodeBehind");

// Defining its attributes.

formatMethod.Font = new Font("Garamond", 12);

formatMethod.BackColor = Color.Yellow;

{% endhighlight %}


{% highlight VB %}

' Creating a custom format object.

Dim formatMethod As ISnippetFormat = Me.EditControl1.Language.Add("CodeBehind")

' Defining its attributes.

formatMethod.Font = New Font("Garamond", 12)

formatMethod.BackColor = Color.Yellow

{% endhighlight %}

{% endtabs %}

### Font configuration

Font color of newly created format in the specified language can be customized by using its [FontColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.ISnippetFormat~FontColor.html) property of [ISnippetFormat](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.ISnippetFormat.html) interface.

{% tabs %}

{% highlight C# %}

 formatMethod.Font = new Font("Garamond", 17);

 formatMethod.FontColor = Color.Red;

{% endhighlight %}


{% highlight VB %}

formatMethod.Font = new Font("Garamond", 17)

 formatMethod.FontColor = Color.Red

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img17.png)

### Lexem configuration

Create a [ConfigLexem](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Implementation.Config.ConfigLexem.html) object that belongs to the above defined format and define its attributes. Add the ConfigLexem object to the Lexems collection of the current language.

{% tabs %}

{% highlight C# %}

ConfigLexem stuff = new ConfigLexem("stuff", "", FormatType.Custom, false);

stuff.FormatName = "CodeBehind";

this.editControl1.Language.Lexems.Add(stuff);

{% endhighlight %}


{% highlight VB %}

Dim stuff As ConfigLexem  = new ConfigLexem("stuff", "", FormatType.Custom, False)

stuff.FormatName = "CodeBehind"

Me.editControl1.Language.Lexems.Add(stuff)

{% endhighlight %}

{% endtabs %}

### Keywords configuration

Create a custom format object named `keyword` by using the [Language.Add](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IFormatManager~Add.html) function in EditControl.

{% tabs %}

{% highlight C# %}

ISnippetFormat keyword = this.editControl1.Language.Add("keyword");

keyword.FontColor = Color.Blue;

keyword.Font = new Font("Garamond", 12);

 ConfigLexem car = new ConfigLexem("car", "", FormatType.Custom, false);
            
car.FormatName = "keyword";

 this.editControl1.Language.Lexems.Add(car);

 ConfigLexem cdr = new ConfigLexem("cdr", "", FormatType.Custom, false);

cdr.FormatName = "keyword";

this.editControl1.Language.Lexems.Add(cdr);

ConfigLexem cons = new ConfigLexem("cons", "", FormatType.Custom, false);

cons.FormatName = "keyword";

this.editControl1.Language.Lexems.Add(cons);

{% endhighlight %}


{% highlight VB %}

Dim keyword As ISnippetFormat = Me.editControl1.Language.Add("keyword")

keyword.FontColor = Color.Blue

keyword.Font = new Font("Garamond", 12)

Dim car As ConfigLexem  = new ConfigLexem("car", "",FormatType.Custom, False)

car.FormatName = "keyword"

Me.editControl1.Language.Lexems.Add(car)

Dim cdr As ConfigLexem  = new ConfigLexem("cdr", "",FormatType.Custom, False)

cdr.FormatName = "keyword"

Me.editControl1.Language.Lexems.Add(cdr)

Dim cons As ConfigLexem  = new ConfigLexem("cons", "",FormatType.Custom, False)

cons.FormatName = "keyword"

Me.editControl1.Language.Lexems.Add(cons)

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img19.png)

### Operators configuration

Create a custom format object named `Operators` by using the [Language.Add](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IFormatManager~Add.html) function in EditControl.

{% tabs %}

{% highlight C# %}

ISnippetFormat Operators = this.editControl1.Language.Add("Operators");

Operators.FontColor = Color.Red;

ConfigLexem open = new ConfigLexem("(","",FormatType.Custom,false);

open.FormatName = "Operators";

this.editControl1.Language.Lexems.Add(open);

ConfigLexem close = new ConfigLexem("", ")", FormatType.Custom, false);

close.FormatName = "Operators";

this.editControl1.Language.Lexems.Add(close);

ConfigLexem Symbol = new ConfigLexem("#", "", FormatType.Custom, false);

Symbol.FormatName = "Operators";

this.editControl1.Language.Lexems.Add(Symbol);

{% endhighlight %}


{% highlight VB %}

Dim Operators As ISnippetFormat  = this.editControl1.Language.Add("Operators")

Operators.FontColor = Color.Red

Dim open As ConfigLexem  = new ConfigLexem("(","",FormatType.Custom, False)

open.FormatName = "Operators"

Me.editControl1.Language.Lexems.Add(open)

Dim close As ConfigLexem  = new ConfigLexem(")", "", FormatType.Custom, False)

close.FormatName = "Operators"

Me.editControl1.Language.Lexems.Add(close)

Dim Symbol As ConfigLexem  = new ConfigLexem("$", "", FormatType.Custom, False)

Symbol.FormatName = "Operators"

Me.editControl1.Language.Lexems.Add(Symbol)

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img20.png)

### Regex configuration

A regular expression is a pattern that could be matched against any input text. 

#### Color configuration

Color configuration for custom formats can be defined using its built-in color properties such as FontColor, BackColor, ForeColor, LineColor and BorderColor properties.

{% tabs %}

{% highlight C# %}

formatMethod.Font = new Font("Garamond", 10);

formatMethod.FontColor = Color.Red;

formatMethod.BorderStyle = FrameBorderStyle.Solid;

formatMethod.BackColor = Color.Yellow;

formatMethod.BorderColor = Color.Green;

{% endhighlight %}


{% highlight VB %}

formatMethod.Font = new Font("Garamond", 10)

formatMethod.FontColor = Color.Red

formatMethod.BorderStyle = FrameBorderStyle.Solid

formatMethod.BackColor = Color.Yellow

formatMethod.BorderColor = Color.Green

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img18.png)

#### Error words highlighting

Error lexems can be added to the language by declaring a format names `Error` and it can be highlighted using underlines. Below code is an simple example for declaring a misspelled lexem as error and highlight them.

{% tabs %}

{% highlight C# %}

ISnippetFormat Error = this.editControl1.Language.Add("Error");

 Error.FontColor = Color.Black;

 Error.UnderlineStyle = UnderlineStyle.Wave;

 Error.UnderlineWeight = UnderlineWeight.Thin;

 Error.LineColor = Color.Red;

 ConfigLexem err = new ConfigLexem("pubblic", "", FormatType.Custom, false);

 misspell.FormatName = "Error";

 this.editControl1.Language.Lexems.Add(misspell);

{% endhighlight %}


{% highlight VB %}

Dim Error As ISnippetFormat = Me.editControl1.Language.Add("Error")

 Error.FontColor = Color.Black

 Error.UnderlineStyle = UnderlineStyle.Wave

 Error.UnderlineWeight = UnderlineWeight.Thin

 Error.LineColor = Color.Red

 Dim err As ConfigLexem = new ConfigLexem("pubblic", "", FormatType.Custom, False)

 misspell.FormatName = "Error"

 Me.editControl1.Language.Lexems.Add(misspell)

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img22.png)

### Splits configuration

Splits helps to configure two different words as a single. For example, consider # and region that can be treated as single word by using `Split` configuration. This can be done by adding the appropriate splits to the [Language.Splits](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IConfigLanguage~Splits.html) collections.

{% tabs %}

{% highlight C# %}

ISnippetFormat keyword = this.editControl1.Language.Add("keyword");

keyword.FontColor = Color.Orange;

keyword.Font = new Font("Garamond", 14);


ConfigLexem region = new ConfigLexem("#region", "", FormatType.Custom, false);

region.FormatName = "keyword";

this.editControl1.Language.Lexems.Add(region);

// Adding the necessary split definitions to the current language's Splits collection.

Split split = new Split();

split.Text = "#region";

this.editControl1.Language.Splits.Add(split);

{% endhighlight %}


{% highlight VB %}

Dim keyword As ISnippetFormat = Me.editControl1.Language.Add("keyword")

keyword.FontColor = Color.Orange

keyword.Font = new Font("Garamond", 14)


Dim region As ConfigLexem  = new ConfigLexem("#region", "",FormatType.Custom, False)

region.FormatName = "keyword"

Me.editControl1.Language.Lexems.Add(region)

' Adding the necessary split definitions to the current language's Splits collection.

Dim split As  Split  = new Split()

split.Text = "#region"

Me.editControl1.Language.Splits.Add(split)

{% endhighlight %}

{% endtabs %}

### Auto replace triggers

Create a AutoReplaceTrigger object using `AutoReplaceTrigger` class, where those "from" and "to" can be passed while initializing. And add it to the [Language.AutoReplaceTriggers](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IConfigLanguage~AutoReplaceTriggers.html) collections.

Below code is an example for replace "the" if it is misspelled as "teh" in AutoReplaceTrigger.  

{% tabs %}

{% highlight C# %}

 AutoReplaceTrigger trigger1 = new AutoReplaceTrigger("teh","the");

 this.editControl1.Language.AutoReplaceTriggers.Add(trigger1);

{% endhighlight %}


{% highlight VB %}

 Dim trigger1 As AutoReplaceTrigger = new AutoReplaceTrigger("teh","the")

 Me.editControl1.Language.AutoReplaceTriggers.Add(trigger1)

{% endhighlight %}

{% endtabs %}

### File extension

Add the appropriate extensions to the [Language.Extensions](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IConfigLanguage~Extensions.html) collections.

{% tabs %}

{% highlight C# %}

// Adding the necessary extension definitions to the current language's Extensions collection.

this.editControl1.Language.Extensions.Add("lisp");

{% endhighlight %}


{% highlight VB %}

' Adding the necessary extension definitions to the current language's Extensions collection.

Me.editControl1.Language.Extensions.Add("lisp")

{% endhighlight %}

{% endtabs %}

### Multiple language configuration

EditControl supports multiple language configuration, which helps to configure one or more language in single language configuration.

The following code example illustrates HTML with JScript language configuration.

{% tabs %}

{% highlight C# %}

 IConfigLanguage currentConfigLanguage = this.editControl1.Configurator.CreateLanguageConfiguration("HTML_JScript");

 this.editControl1.ApplyConfiguration(currentConfigLanguage);


 ISnippetFormat keyword = this.editControl1.Language.Add("keyword");

 keyword.FontColor = Color.Blue;

 keyword.Font = new Font("Courier New", 10);

 ISnippetFormat attributeName = this.editControl1.Language.Add("AttributeName");

 attributeName.FontColor = Color.Red;

 attributeName.Font = new Font("Courier New", 10);

 ISnippetFormat operators = this.editControl1.Language.Add("Operators");

 operators.FontColor = Color.Blue;

 operators.Font = new Font("Courier New", 10);

 ISnippetFormat tagName = this.editControl1.Language.Add("TagName");

 tagName.FontColor = Color.Green;

 tagName.Font = new Font("Courier New", 10);


 ConfigLexem operator1 = new ConfigLexem("&lt", "", FormatType.Custom, false);

 operator1.FormatName = "Operators";

 this.editControl1.Language.Lexems.Add(operator1);

 ConfigLexem operator2 = new ConfigLexem("", "&gt", FormatType.Custom, false);

 operator2.FormatName = "Operators";

 this.editControl1.Language.Lexems.Add(operator2);


 ConfigLexem keyword1 = new ConfigLexem("if", "", FormatType.Custom, false);

 keyword1.FormatName = "keyword";

 this.editControl1.Language.Lexems.Add(keyword1);

 ConfigLexem keyword2 = new ConfigLexem("var", "", FormatType.Custom, false);

 keyword2.FormatName = "keyword";

 this.editControl1.Language.Lexems.Add(keyword2);

 ConfigLexem keyword3 = new ConfigLexem("escape", "", FormatType.Custom, false);

 keyword3.FormatName = "keyword";

 this.editControl1.Language.Lexems.Add(keyword3);


 ConfigLexem html = new ConfigLexem("html", "", FormatType.Custom, false);

 html.FormatName = "AttributeName";

 this.editControl1.Language.Lexems.Add(html);

 ConfigLexem head = new ConfigLexem("head", "", FormatType.Custom, false);

 head.FormatName = "AttributeName";

 this.editControl1.Language.Lexems.Add(head);

 ConfigLexem body = new ConfigLexem("body", "", FormatType.Custom, false);

 body.FormatName = "AttributeName";

 this.editControl1.Language.Lexems.Add(body);

 ConfigLexem meta = new ConfigLexem("meta", "", FormatType.Custom, false);

 meta.FormatName = "AttributeName";

 this.editControl1.Language.Lexems.Add(meta);

 ConfigLexem title = new ConfigLexem("title", "", FormatType.Custom, false);

 title.FormatName = "AttributeName";

 this.editControl1.Language.Lexems.Add(title);

 ConfigLexem pub = new ConfigLexem("public", "", FormatType.Custom, false);

 pub.FormatName = "AttributeName";

 this.editControl1.Language.Lexems.Add(pub);


 ConfigLexem script = new ConfigLexem("script", "(&gt;)|(/&gt;)", FormatType.Custom, false);

 script.IsBeginRegex = true;

 script.IsPseudoEnd = true;

 script.IsComplex = true;

 script.FormatName = "TagName";

 this.editControl1.Language.Lexems.Add(script);


 this.editControl1.Language.Extensions.Add("htm");

{% endhighlight %}


{% highlight VB %}

 Dim currentConfigLanguage As IConfigLanguage = Me.editControl1.Configurator.CreateLanguageConfiguration("HTML_JScript")

 Me.editControl1.ApplyConfiguration(currentConfigLanguage)


 Dim keyword As ISnippetFormat = Me.editControl1.Language.Add("keyword")

 keyword.FontColor = Color.Blue

 keyword.Font = New Font("Courier New", 10)

 Dim attributeName As ISnippetFormat = Me.editControl1.Language.Add("AttributeName")

 attributeName.FontColor = Color.Red

 attributeName.Font = New Font("Courier New", 10)

 Dim operators As ISnippetFormat = Me.editControl1.Language.Add("Operators")

 operators.FontColor = Color.Blue

 operators.Font = New Font("Courier New", 10)

 Dim tagName As ISnippetFormat = Me.editControl1.Language.Add("TagName")

 tagName.FontColor = Color.Green

 tagName.Font = New Font("Courier New", 10)


 Dim operator1 As New ConfigLexem("&lt", "", FormatType.Custom, False)

 operator1.FormatName = "Operators"

 Me.editControl1.Language.Lexems.Add(operator1)

 Dim operator2 As New ConfigLexem("", "&gt", FormatType.Custom, False)

 operator2.FormatName = "Operators"

 Me.editControl1.Language.Lexems.Add(operator2)


 Dim keyword1 As New ConfigLexem("if", "", FormatType.Custom, False)

 keyword1.FormatName = "keyword"

 Me.editControl1.Language.Lexems.Add(keyword1)

 Dim keyword2 As New ConfigLexem("var", "", FormatType.Custom, False)

 keyword2.FormatName = "keyword"

 Me.editControl1.Language.Lexems.Add(keyword2)

 Dim keyword3 As New ConfigLexem("escape", "", FormatType.Custom, False)

 keyword3.FormatName = "keyword"

 Me.editControl1.Language.Lexems.Add(keyword3)

 Dim html As New ConfigLexem("html", "", FormatType.Custom, False)

 html.FormatName = "AttributeName"

 Me.editControl1.Language.Lexems.Add(html)

 Dim head As New ConfigLexem("head", "", FormatType.Custom, False)

 head.FormatName = "AttributeName"

 Me.editControl1.Language.Lexems.Add(head)


 Dim body As New ConfigLexem("body", "", FormatType.Custom, False)

 body.FormatName = "AttributeName"

 Me.editControl1.Language.Lexems.Add(body)

 Dim meta As New ConfigLexem("meta", "", FormatType.Custom, False)

 meta.FormatName = "AttributeName"

 Me.editControl1.Language.Lexems.Add(meta)

 Dim title As New ConfigLexem("title", "", FormatType.Custom, False)

 title.FormatName = "AttributeName"

 Me.editControl1.Language.Lexems.Add(title)

 Dim pub As New ConfigLexem("public", "", FormatType.Custom, False)

 pub.FormatName = "AttributeName"

 Me.editControl1.Language.Lexems.Add(pub)

 Dim script As New ConfigLexem("script", "(&gt;)|(/&gt;)", FormatType.Custom, False)

 script.IsBeginRegex = True

 script.IsPseudoEnd = True

 script.IsComplex = True

 script.FormatName = "TagName"

 Me.editControl1.Language.Lexems.Add(script)

 Me.editControl1.Language.Extensions.Add("htm")

{% endhighlight %}

{% endtabs %}

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img25.png)

### Invoking newly added configuration language

Invoke the [ResetCaches](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IConfigLanguage~ResetCaches.html) function to apply these newly added configuration settings.

{% tabs %}

{% highlight C# %}

// Reset the current configuration language cache to reflect these changes.

this.editControl1.Language.ResetCaches();

{% endhighlight %}


{% highlight VB %}

' Reset the current configuration language cache to reflect these changes.

Me.editControl1.Language.ResetCaches()

{% endhighlight %}

{% endtabs %}

## Configure syntax highlighting through dialog box

Syntax Highlighting and Code Coloring can also be implemented at run time by using the `Language Coloring Configuration Editor` and can be customized by using class named [ConfigurationDialog](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Dialogs.ConfigurationDialog.html) and Interface named [IConfig](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IConfig.html).

![](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img14.png)

The Language Coloring Configuration Editor can be invoked programmatically as follows.

{% tabs %}

{% highlight C# %}

IConfigLanguage activeLang = this.editControl1.Parser.Formats as IConfigLanguage;

// Create an instance of ConfigurationDialog.

ConfigurationDialog editConfig = new ConfigurationDialog(this.editControl1.Configurator, activeLang);

if(editConfig.ShowDialog(this) == DialogResult.OK && activeLang != null)

{

    IConfigLanguage newLang = editConfig.Configurator.KnownLanguageNames.Contains(activeLang.Language) ? editConfig.Configurator[activeLang.Language] : editConfig.Configurator.DefaultLanguage;

    if(newLang != null)

    {

        // Set language configuration instance object.         

        this.editControl1.Configurator = editConfig.Configurator;

        // Applies coloring of the specified language to the text.

        this.editControl1.ApplyConfiguration(newLang);

    }

}

{% endhighlight %}


{% highlight VB %}

Dim activeLang As IConfigLanguage = Me.EditControl1.Parser.Formats

' Create an instance of ConfigurationDialog.

Dim editConfig As New frmConfigDialog(Me.editControl1.Configurator, activeLang)

If editConfig.ShowDialog(Me) = DialogResult.OK AndAlso Not (activeLang Is Nothing) Then

    Dim newLang As IConfigLanguage = If(editConfig.Configurator.KnownLanguageNames.Contains(activeLang.Language), editConfig.Configurator(activeLang.Language), editConfig.Configurator.DefaultLanguage) 

     If Not (newLang Is Nothing) Then

        ' Set language configuration instance object.

         Me.editControl1.Configurator = editConfig.Configurator

        ' Applies coloring of the specified language to the text.

         Me.editControl1.ApplyConfiguration(newLang)

     End If
     
End If

{% endhighlight %}

{% endtabs %}

