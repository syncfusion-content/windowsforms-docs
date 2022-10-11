---
layout: post
title: Serialization in Windows Forms Gradient Label control | Syncfusion
description: Learn about Serialization support in Syncfusion Windows Forms Gradient Label control and more details.
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Serialization in Windows Forms Gradient Label

We can save and load the background color information in an XML file to persist the color state of a GradientLabel. The XmlSerializer Class can be used for providing serialization support.

*	First include the required namespaces.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
  
using System.Drawing;
using Syncfusion.Drawing;
using System.Xml.Serialization;
using System.IO;

{% endhighlight %}

{% highlight vb %}

Imports System.Drawing
Imports Syncfusion.Drawing
Imports System.Xml.Serialization
Imports System.IO

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }} 

*  The below code snippet saves the information in a file called the color.xml.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, System.EventArgs e)
{
	this.gradientLabel1.BackgroundColor = new BrushInfo(GradientStyle.Gradient, Color.ForwardDiagonal , Color.Beige);
	string xmlFilename = "C:\\color.xml";
	XmlSerializer serializer = new XmlSerializer(typeof(Syncfusion.Drawing.BrushInfo));
	FileStream fs= new FileStream(xmlFilename, FileMode.Create);
	System.Xml.XmlTextWriter writer = new System.Xml.XmlTextWriter(fs, System.Text.Encoding.Default);
	serializer.Serialize(fs,this.gradientLabel1.BackgroundColor);
	writer.Close();
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
Me.gradientLabel1.BackgroundColor = New BrushInfo(GradientStyle.Gradient, Color.ForwardDiagonal, Color.Beige)
Private xmlFilename As String = "C:\color.xml"
Private serializer As XmlSerializer = New XmlSerializer(GetType(Syncfusion.Drawing.BrushInfo))
Private fs As FileStream = New FileStream(xmlFilename, FileMode.Create)
Private writer As System.Xml.XmlTextWriter = New System.Xml.XmlTextWriter(fs, System.Text.Encoding.Default)
serializer.Serialize(fs,Me.gradientLabel1.BackgroundColor)
writer.Close()
End Sub
		
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }} 

 ![Windows Forms GradientLabel Image605](GradientLabel-Images/Overview_img605.jpeg) 
