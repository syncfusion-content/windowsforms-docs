---
layout: post
title: Cell Types in GridControl
description: how to create a cell that contains hypertext link along with different formatted texts
platform: windowsforms
control: Grid
documentation: ug
---

# How to create a cell that contains Hypertext link along with different formatted texts

To create a cell that contains a hypertext link along with different formatted texts ,you will need to handle the derived class called InPlaceRTB, follow the steps that are given below:

1. InPlaceRTB Class

   The RichText cell control in the library will allow you to edit rich text via a dropdown panel. However, it will not allow you to edit text in-place. You must derive GridRichTextBoxCellModel and GridRichTextBoxCellRenderer classes in order to use an embedded RichTextBox in the cell and to edit it. This textbox will allow you to Click on the text that will open an Internet Explorer session. To use this control, you must register the new CellControl using grid.CellModels.Add function.

	{% tabs %}
	{% highlight c# %}
	//Adds the cell Model to the specified type Name "InPlaceRTB". 
	this.gridControl1.CellModels.Add("InPlaceRTB", new InPlaceRichTextCellModel(this.gridControl1.Model));

	{% endhighlight  %}

	{% highlight vb %}
	'Adds the cell Model to the specified type Name "InPlaceRTB". 
	Me.gridControl1.CellModels.Add("InPlaceRTB", New InPlaceRichTextCellModel(Me.gridControl1.Model))
	{% endhighlight  %}
	{% endtabs %}
	
2. Set the CellType property to "InPlaceRTB".
	{% capture codesnippet1 %}
	{% tabs %}
	{% highlight c# %}
	//Sets the CellType to 'InPlaceRTB'
	this.gridControl1(1,1).CellType = "InPlaceRTB"
	{% endhighlight  %}

	{% highlight vb %}
	'Sets the CellType to 'InPlaceRTB'.
	Me.gridControl1(1,1).CellType = "InPlaceRTB"
	{% endhighlight  %}
	{% endtabs %}
	{% endcapture %}
	{{ codesnippet1 | OrderList_Indent_Level_1 }}
   
3. Set the Text property to RTF Text, which contains different text formats with information.
	{% capture codesnippet2 %}
	{% tabs %}
	{% highlight c# %}
	//Assigns the Text property to RTF Text.
	this.gridControl1[1,1].Text = @"{\rtf1\ansi\ansicpg1252\deff0\deftab709{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}}"+
	@"{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;}"+
	@"{\*\generator Msftedit 5.41.15.1507;}\viewkind4\uc1\pard\lang1033\b\f0\fs24 Bold\b0\par"+
	@"\i Italic\i0\par"+
	@"{\field{\*\fldinst{HYPERLINK 'http://www.google.com/' }}{\fldrslt{\cf2\ul www.google.com}}}\cf0\ulnone\f0\fs24\par}";

	{% endhighlight  %}

	{% highlight vb %}
	'Assigns the text property to RTF Text.
	Me.gridControl1(1,1).Text = "{\rtf1\ansi\ansicpg1252\deff0\deftab709{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}}"+ "{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;}"+ "{\*\generator Msftedit 5.41.15.1507;}\viewkind4\uc1\pard\lang1033\b\f0\fs24 Bold\b0\par"+ "\i Italic\i0\par"+ "{\field{\*\fldinst{HYPERLINK 'http://www.google.com/' }}{\fldrslt{\cf2\ul www.google.com}}}\cf0\ulnone\f0\fs24\par}"

	{% endhighlight  %}
	{% endtabs %}
	{% endcapture %}
	{{ codesnippet2 | OrderList_Indent_Level_1 }}

