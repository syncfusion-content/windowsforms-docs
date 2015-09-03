---
layout: post
title: Serialization
description: Serialization
platform: windowsforms
control: Editors Package
documentation: ug
---

# Serialization

We can save and load the background color information in an XML file to persist the color state of a GradientLabel. The XmlSerializer Class can be used for providing serialization support.

*  First include the required namespaces.

   ~~~ cs
  


		using System.Drawing;

		using Syncfusion.Drawing;

		using System.Xml.Serialization;

		using System.IO;
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		Imports System.Drawing

		Imports Syncfusion.Drawing

		Imports System.Xml.Serialization

		Imports System.IO
   ~~~
   {:.prettyprint}


*  The below code snippet saves the information in a file called the colorinfo.xml.


   ~~~ cs


		private void button1_Click(object sender, System.EventArgs e)

		{

		this.gradientLabel1.BackgroundColor = new BrushInfo(GradientStyle.Gradient, Color.ForwardDiagonal , Color.Biege);

		string xmlFilename = "C:\\colorinfo.xml";

		XmlSerializer serializer = new XmlSerializer(typeof(Syncfusion.Drawing.BrushInfo));

		FileStream fs= new FileStream(xmlFilename, FileMode.Create);

		System.Xml.XmlTextWriter writer = new System.Xml.XmlTextWriter(fs, System.Text.Encoding.Default);

		serializer.Serialize(fs,this.gradientLabel1.BackgroundColor);

		writer.Close();

		}
   ~~~
   {:.prettyprint}

   ~~~ vbnet



		Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

		Me.gradientLabel1.BackgroundColor = New BrushInfo(GradientStyle.Gradient, Color.ForwardDiagonal, Color.Biege)

		Private xmlFilename As String = "C:\colorinfo.xml"

		Private serializer As XmlSerializer = New XmlSerializer(GetType(Syncfusion.Drawing.BrushInfo))

		Private fs As FileStream = New FileStream(xmlFilename, FileMode.Create)

		Private writer As System.Xml.XmlTextWriter = New System.Xml.XmlTextWriter(fs, System.Text.Encoding.Default)

		serializer.Serialize(fs,Me.gradientLabel1.BackgroundColor)

		writer.Close()

		End Sub
   ~~~
   {:.prettyprint}


 ![](GradientLabel-Images/Overview_img605.jpeg) 
