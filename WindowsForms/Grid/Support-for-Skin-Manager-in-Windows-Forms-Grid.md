---
layout: post
title: Support-for-Skin-Manager-in-Windows-Forms-Grid | WindowsForms | Syncfusion
description: support for skin manager in windows forms grid 
platform: WindowsForms
control: Grid
documentation: ug
---

# Support for Skin Manager in Windows Forms Grid 

This feature enables you to easily apply themes to all grids in an application through single functional call. The Skin Manager provides support for the following themes:

* Office 2007 Blue
* Office 2007 Black
* Office 2007 Silver
* Office 2010 Blue
* Office 2010 Black
* Office 2010 Silver

## Use Case Scenarios

When you create an application with multiple Grid controls, you can apply uniform themes for the entire form and its child controls using this feature.



<table>
<tr>
<th>
PROPERTY </th><th>
DESCRIPTION </th><th>
DATA TYPE </th></tr>
<tr>
<td>
Control</td><td>
Specifies the parent control for which theme has to be applied.</td><td>
Control  </td></tr>
<tr>
<td>
VisualTheme</td><td>
Specifies the style.</td><td>
Enum </td></tr>
</table>






<table>
<tr>
<th>
METHOD </th><th>
DESCRIPTION </th><th>
PARAMETERS </th><th>
RETURN TYPE </th></tr>
<tr>
<td>
VisualTheme(Control,VisualTheme)</td><td>
Specifies the parent control and the theme to be applied.</td><td>
Overloads:* (Control, String)* (Control,VisualTheme)</td><td>
<br>Void</td></tr>
</table>

#### Sample Link

_&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Appearance\SkinManager Demo_

## Adding Skin Manager to an Application 

You can add SkinManager control to one of the controls in your form or to the entire control as needed by specifying the root control. You can specify the root control using the Control property.

 To add SkinManager control to one of the controls, specify selected control as the root control. The following code illustrates this, where the control is styled with Office2010Blue theme.


{% highlight c#  %}
 SkinManager.SetVisualStyle(this.gridControl1, VisualTheme.Office2010Blue );



{% endhighlight   %}

SkinManager.SetVisualStyle(Me.gridControl1, VisualTheme.Office2010Blue)

To add Skin Manager to the entire form, specify the form as the root control. The following code illustrates this. 

{% highlight c#  %}

 SkinManager.SetVisualStyle(this, VisualTheme.Office2010Blue );

{% endhighlight   %}
{% highlight vbnet  %}



SkinManager.SetVisualStyle(Me, VisualTheme.Office2010Blue)
{% endhighlight   %}

Implementing the above code will create the following output.

![](Support-for-Skin-Manager-in-Windows-Forms-Grid_images/Support-for-Skin-Manager-in-Windows-Forms-Grid_img1.png) 



