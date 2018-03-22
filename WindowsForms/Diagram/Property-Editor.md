---
layout: post
title: Property-Editor | Windows Forms | Syncfusion
description: Property Editor  
platform: windowsforms
control: Diagram
documentation: ug
---

# Property Editor

The Property Editor in Essential Diagram displays properties of the currently selected object(s) in the diagram. It is a Windows Forms control that can be added to the Visual Studio .NET toolbox. It also allows the users to set or modify various properties of the objects or the model. The Property Editor provides an easy interface, to set and view various property settings. 

The following table lists the properties of the Property Editor. The important property of the Property Editor is the Diagram property.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Diagram </td><td>
It contains a reference to the diagram that this property editor is attached to. The property editor receives events from the diagram when the current selection changes. It updates the currently displayed object in the property editor.</td></tr>
<tr>
<td>
Product Name</td><td>
Gets the product name of the assembly containing the control.</td></tr>
<tr>
<td>
ProductVersion</td><td>
Gets the version of the assembly containing the control.</td></tr>
<tr>
<td>
PropertyGrid</td><td>
Gets the reference to the PropertyGrid object contained by this property editor.</td></tr>
<tr>
<td>
ShowCombo</td><td>
Determines if combo box is visible.</td></tr>
</table>


Programmatically, the properties can be set as follows.


{% tabs %}
{% highlight c# %}

	this.propertyEditor.PropertyGrid.BackColor = System.Drawing.Color.FromArgb((( System.Byte)(227)), ((System.Byte)(239)),((System.Byte)(255)));
	this.propertyEditor.PropertyGrid.CommandsBackColor = System.Drawing.Color.FromArgb(((System.Byte)(227)),((System.Byte)(239)),((System.Byte)(255)));
	this.propertyEditor.PropertyGrid.CommandsForeColor= System.Drawing.Color.MidnightBlue;
	this.propertyEditor.PropertyGrid.Font = new System.Drawing.Font("Arial", 8.25F,System.Drawing.FontStyle.Regular,System.Drawing.GraphicsUnit.Point,(System.Byte)(0)));
	this.propertyEditor.PropertyGrid.HelpBackColor = System.Drawing.Color.FromArgb(((System.Byte)(227)),((System.Byte)239)), ((System.Byte)(255)));
	this.propertyEditor.PropertyGrid.HelpForeColor = System.Drawing.Color.MidnightBlue;  					     
	this.propertyEditor.PropertyGrid.LineColor = System.Drawing.Color.FromArgb((( System.Byte)(185)), ((System.Byte)(216)), ((System.Byte)(255)));
	this.propertyEditor.PropertyGrid.ViewBackColor = System.Drawing.Color.FromArgb(((System.Byte)(227)), (( System.Byte)(239)), ((System.Byte)(255)));
	this.propertyEditor.PropertyGrid.ViewForeColor= System.Drawing.Color.MidnightBlue;
	this.propertyEditor.ShowCombo = true;
	this.propertyEditor.Diagram = diagram1;

{% endhighlight %}
{% endtabs %}

![](Supported-Controls_images/Supported-Controls_img6.jpeg)
