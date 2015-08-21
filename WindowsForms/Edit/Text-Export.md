---
layout: post
title: Text-Export
description: text export
platform: WindowsForms
control: Edit
documentation: ug
---

# Text Export

The following topics elaborates on the exporting feature in Essential Edit:

## XML, RTF and HTML Export

Edit Control has the ability to export its contents and its associated syntax highlighting information into XML, RTF or HTML formats. This allows the user to share text associated with the Edit Control along with its attributes such as syntax highlighting, line numbers, underlines and many such useful features in universally accepted formats like XML, RTF and HTML.

The following methods can implemented for this purpose.



<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
SaveAsXML</td><td>
Export the Edit Control's contents into XML format and save it into any desired XML file.</td></tr>
<tr>
<td>
SaveAsRTF</td><td>
Export the Edit Control's contents into RTF format and save it into any desired RTF file.</td></tr>
<tr>
<td>
SaveAsHTML</td><td>
Export the Edit Control's contents into HTML format and save it into any desired HTML file.</td></tr>
</table>


{% highlight c# %}



// Export the Edit Control's contents into XML format and save it into a XML file.

this.editControl1.SaveAsXML("testXML.xml");



// Export the Edit Control's contents into RTF format and save it into a RTF file.

this.editControl1.SaveAsRTF("testRTF.rtf");



// Export the Edit Control's contents into HTML format and save it into a HTML file.

this.editControl1.SaveAsHTML("testHTML.html");

{% endhighlight %}

{% highlight vbnet %}



' Export the Edit Control's contents into XML format and save it into a XML file.

Me.editControl1.SaveAsXML("testXML.xml")



' Export the Edit Control's contents into RTF format and save it into a RTF file.

Me.editControl1.SaveAsRTF("testRTF.rtf")



' Export the Edit Control's contents into HTML format and save it into a HTML file.

Me.editControl1.SaveAsHTML("testHTML.html")

{% endhighlight %}

Edit Control is also capable of providing XML, RTF and HTML source code for generating documents in the corresponding formats by using the following methods.



<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
GetTextAsRTF</td><td>
Gets the source code to generate XML document for the text in the Edit Control.</td></tr>
<tr>
<td>
GetTextAsXML</td><td>
Gets the source code to generate RTF document for the text in the Edit Control.</td></tr>
<tr>
<td>
GetTextAsHTML</td><td>
Gets the source code to generate HTML document for the text in the Edit Control.</td></tr>
</table>


{% highlight c# %}



// Gets the source code to generate XML document.

this.editControl1.GetTextAsXML();



// Gets the source code to generate XML document for the text range specified.

this.editControl1.GetTextAsXML(coordinatePoint1, coordinatePoint2);

{% endhighlight %}

{% highlight vbnet %}



' Gets the source code to generate XML document.

Me.editControl1.GetTextAsXML()



' Gets the source code to generate XML document for the text range specified.

Me.editControl1.GetTextAsXML(coordinatePoint1, coordinatePoint2)

{% endhighlight %}


A sample demonstrating the above feature is available in the below sample installation path.



_..\____My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

## Schema Definition File for XML Syntax Coloring Configuration File

Essential Edit now comes with an XML Schema Definition (XSD) file that provides schema information for the XML language definition syntax. The main advantage of this is, just by including this XSD file along with the XML Syntax Coloring Configuration file in the Visual Studio .NET project, the member list drop-down will be displayed while the elements in the XML Syntax Coloring Configuration file are edited in the Visual Studio Code Editor.



![](Text-Export_images/Text-Export_img1.png)



_Figure_ _61: XML Schema Definition File



