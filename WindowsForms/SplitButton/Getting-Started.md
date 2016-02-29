---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: SplitButton 
documentation: ug
---

# Getting Started

## Adding SplitButton to an Application

### Adding through Visual Studio 

The following are steps to add the SplitButton control to an Application through Visual Studio:

1. Create a new Windows Form application in Visual Studio. 
2. Drag SplitButton from the Toolbox tab to the designer.

   ![](Getting-Started_images/Getting-Started_img1.png)

3. SplitButton control is added.
4. Now customize the properties of SplitButton in the Properties Window. 

###  Through Code



Following are the steps to add the SplitButton control to an application through code:

1. Include the Tools Windows namespace as given in the following code:

   ~~~ cs

     using Syncfusion.Windows.Forms.Tools;
	 
   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }

2. Create an instance of  SplitButton  control and add it to the form as given in the following code:

   ~~~ cs

     Syncfusion.Windows.Forms.Tools.SplitButton splitButton;

     this.splitButton = new Syncfusion.Windows.Forms.Tools.SplitButton();

     this.Controls.Add(splitButton);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

      Dim splitButton As Syncfusion.Windows.Forms.Tools.SplitButton

      Me.splitButton = New Syncfusion.Windows.Forms.Tools.SplitButton()

      Me.Controls.Add(splitButton)

   ~~~
   {:.prettyprint }

## Appearance and Structure of the Control

![](Getting-Started_images/Getting-Started_img2.png)



## Properties and Events Tables for SplitButton Control

### Properties

Table 812: Property Table

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
ButtonMode </td><td>
Specifies the mode of the button as normal or toggle.  </td><td>
Normal </td><td>
Enum </td><td>
Button Mode</td></tr>
<tr>
<td>
IsButtonChecked</td><td>
Specifies the state of the button. This property can be set only when the ButtonMode is set to toggle.</td><td>
Normal</td><td>
Boolean</td><td>
NA</td></tr>
<tr>
<td>
DropDownItems</td><td>
Sets the item to be added in the drop-down list.</td><td>
Normal</td><td>
ToolStripItemCollection</td><td>
Adding Items to Drop-Down</td></tr>
</table>

### Events

Table 813: Events Table

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
DropDownItemChecked</td><td>
Will be triggered when drop-down litem is clicked. </td><td>
ToolStripItemClickedEventArgs</td><td>
NA </td><td>
NA </td></tr>
<tr>
<td>
Checked</td><td>
Will be triggered when the button is checked.This event can be triggered only when the button is in toggle mode. </td><td>
EventArgs</td><td>
NA </td><td>
NA </td></tr>
<tr>
<td>
UnChecked</td><td>
Will be triggered when the button is unchecked.This event can be triggered only when the button is in toggle mode. </td><td>
EventArgs</td><td>
NA </td><td>
NA </td></tr>
</table>


