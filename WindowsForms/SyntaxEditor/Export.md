---
layout: post
title: Export 
description: This section explains about the exporting various file formats in EditControl
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Export

EditControl has the ability to export its content with associated syntax highlighting information to XML, HTML, and RTF file formats.

## Export as XML file

Supports to export the contents along with syntax highlighting appearance into `XML` format.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
SaveAsXML</td><td>
Export the EditControl contents into XML format and save it into any desired XML file</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Export the EditControl contents into XML format and save it into a XML file.

this.editControl1.SaveAsXML("testXML.xml");

{% endhighlight %}


{% highlight VB %}

' Export the EditControl contents into XML format and save it into a XML file.

Me.editControl1.SaveAsXML("testXML.xml")

{% endhighlight %}

{% endtabs %}

EditControl is also capable of providing XML source code for generating documents in the corresponding formats by using the following function.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
GetTextAsXML</td><td>
Gets the source code to generate XML document for the text in the EditControl</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Gets the source code to generate XML document.

this.editControl1.GetTextAsXML();

// Gets the source code to generate XML document for the text range specified.

this.editControl1.GetTextAsXML(coordinatePoint1, coordinatePoint2);

{% endhighlight %}


{% highlight VB %}

' Gets the source code to generate XML document.

Me.editControl1.GetTextAsXML()

' Gets the source code to generate XML document for the text range specified.

Me.editControl1.GetTextAsXML(coordinatePoint1, coordinatePoint2)

{% endhighlight %}

{% endtabs %}

## Export as HTML file

Supports to export the contents along with syntax highlighting appearance into `HTML` format.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
SaveAsHTML</td><td>
Export the EditControl contents into HTML format and save it into any desired HTML file</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Export the EditControl contents into HTML format and save it into a HTML file.

this.editControl1.SaveAsHTML("testHTML.html");

{% endhighlight %}


{% highlight VB %}

' Export the EditControl contents into HTML format and save it into a HTML file.

Me.editControl1.SaveAsHTML("testHTML.html")

{% endhighlight %}

{% endtabs %}

EditControl is also capable of providing HTML source code for generating documents in the corresponding formats by using the following function.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
GetTextAsHTML</td><td>
Gets the source code to generate HTML document for the text in the EditControl</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Gets the source code to generate HTML document.

this.editControl1.GetTextAsHTML();

// Gets the source code to generate HTML document for the text range specified.

this.editControl1.GetTextAsHTML(coordinatePoint1, coordinatePoint2);

{% endhighlight %}


{% highlight VB %}

' Gets the source code to generate HTML document.

Me.editControl1.GetTextAsHTML()

' Gets the source code to generate HTML document for the text range specified.

Me.editControl1.GetTextAsHTML(coordinatePoint1, coordinatePoint2)

{% endhighlight %}

{% endtabs %}

## Export as RTF file

Supports to export the contents along with syntax highlighting appearance into RTF format.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
SaveAsRTF</td><td>
Export the EditControl contents into RTF format and save it into any desired RTF file</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Export the EditControl contents into RTF format and save it into a RTF file.

this.editControl1.SaveAsRTF("testRTF.rtf");

{% endhighlight %}


{% highlight VB %}

' Export the EditControl contents into RTF format and save it into a RTF file.

Me.editControl1.SaveAsRTF("testRTF.rtf")

{% endhighlight %}

{% endtabs %}

EditControl is also capable of providing RTF source code for generating documents in the corresponding formats by using the following function.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
GetTextAsRTF</td><td>
Gets the source code to generate RTF document for the text in the EditControl</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Gets the source code to generate RTF document.

this.editControl1.GetTextAsRTF();

// Gets the source code to generate RTF document for the text range specified.

this.editControl1.GetTextAsRTF(coordinatePoint1, coordinatePoint2);

{% endhighlight %}


{% highlight VB %}

' Gets the source code to generate RTF document.

Me.editControl1.GetTextAsRTF()

' Gets the source code to generate RTF document for the text range specified.

Me.editControl1.GetTextAsRTF(coordinatePoint1, coordinatePoint2)

{% endhighlight %}

{% endtabs %}

N> Refer to the following sample link that demonstrates the `Export` functionalities.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Export

## Bitmap Generation

Support to save EditControl as image. This is achieved through the use of the `CreateBitmap` function.

{% tabs %}

{% highlight C# %}

// Creates bitmap of the EditControl.

Bitmap bmp = this.editControl1.CreateBitmap();

{% endhighlight %}


{% highlight VB %}

' Creates bitmap of the EditControl.

Dim bmp as Bitmap = Me.editControl1.CreateBitmap()

{% endhighlight %}

{% endtabs %}

![](Export_images/Export_img1.jpeg)
