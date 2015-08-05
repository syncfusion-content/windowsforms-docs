---
layout: post
title: Skin-Manager
description: skin manager 
platform: WindowsForms
control: Tools
documentation: ug
---

# Skin Manager 

Essential Tools for Windows Forms provides support to apply Office2007 Style for an application with its child controls. This feature enables you to easily apply uniform style for all the child controls in the application.

The Skin Manager provides support for the following themes:

* Office 2007 Blue
* Office 2007 Black
* Office 2007 Silver
* Managed

### IT Scenarios

When you create an application with multiple controls, you can apply uniform color for the entire form using this feature. 

Properties and Methods Tables for Skin Manager 

### Properties

_Table_ _799_: Property Table

<table>
<tr>
<td>
Property </td><td>
Description </td><td>
Type </td><td>
Data Type </td><td>
Reference links </td></tr>
<tr>
<td>
Control </td><td>
Specifies the parent control for which theme has to be applied </td><td>
NA </td><td>
Control  </td><td>
NA </td></tr>
<tr>
<td>
VisualTheme</td><td>
Specifies the style </td><td>
NA</td><td>
Enum  </td><td>
NA</td></tr>
</table>
Methods

_Table_ _800_: Methods Table

<table>
<tr>
<th>
Method </th><th>
Description </th><th>
Parameters </th><th>
Type </th><th>
Return Type </th><th>
Reference links </th></tr>
<tr>
<th>
SetVisualTheme(Control,VisualTheme)</th><th>
Specifies the parent control and theme has to be applied </th><th>
Overloads: 1) (Control, String) 2) (Control,VisualTheme) </th><th>
NA </th><th>
Void </th><th>
NA </th></tr>
</table>

## Adding Skin Manager Component to a Windows Forms Application

### Through Visual Studio

The following are steps to add the Skin Manager control to an application through Visual Studio:

 Create a new Windows Form application in Visual Studio. 

1. Drag the Skin Manager from the Toolbox tab to the designer.

   ![D:/Task Doc/UG/10.1/UI/WF/Tools/Skin Mananger/SkinManager/SkinManager/toolbox.png](Skin-Manager_images/Skin-Manager_img1.png)



2. Skin Manager is added.  
3. Open the Properties Window to assign parent control and apply skin. 
##### Through Code


You can add Skin Manager to one of the controls in your form or to the entire control as needed by specifying the root control. You can specify the root control using the _Control_ property.

To add Skin Manager to one of the controls, specify the control as root control. The following code illustrates this: 

{% highlight c# %}

SkinManager.SetVisualStyle(this.buttonAdv1

, VisualTheme.Office2007Blue );

{% endhighlight %}

{% highlight vbnet %}

SkinManager.SetVisualStyle(Me.buttonAdv1, VisualTheme.Office2007Blue)

{% endhighlight %}

![](Skin-Manager_images/Skin-Manager_img2.png)





To add Skin Manager to the entire form, specify the form as root control. The following code illustrates this: 

{% highlight c# %}

            SkinManager.SetVisualStyle(this, VisualTheme.Office2007Blue );

{% endhighlight %}

{% highlight vbnet %}

SkinManager.SetVisualStyle(Me, VisualTheme.Office2007Blue)

{% endhighlight %}

![](Skin-Manager_images/Skin-Manager_img3.png)



## Applying Theme 

### Through Designer

The following are the steps to apply the required skin to the form through designer: 

1. Open the Properties Window.
2. In the Controls field assign the root control for which you want to apply the theme. 

![](Skin-Manager_images/Skin-Manager_img4.png)



![](Skin-Manager_images/Skin-Manager_img5.png)



#### Adding themes to Controls with Skin Manager at Designer Time

Once the SkinManager is applied to a parent form or container, the new controls being added to it will also be updated with the theme applied in the SkinManager.

The following images describe the same in applying the Office2007Black theme to the newly added control [ButtonAdv] after the theme is applied to the form through the SkinManager.

![](Skin-Manager_images/Skin-Manager_img6.png)



![](Skin-Manager_images/Skin-Manager_img7.png)



### Through Code

You can apply the required skin to the form using the _VisualTheme_ property. 

The following code illustrates how to apply Office 2007 theme:

{% highlight c# %}

            SkinManager.SetVisualStyle(this, VisualTheme.Office2007Blue );

{% endhighlight %}

{% highlight vbnet %}

SkinManager.SetVisualStyle(Me, VisualTheme.Office2007Blue)

{% endhighlight %}



![](Skin-Manager_images/Skin-Manager_img8.png)


The following code illustrates how to apply Managed themes:

{% highlight c# %}

Office12ColorTable.ApplyManagedColors(this.buttonAdv1

,Color. Orange);

{% endhighlight %}

{% highlight vbnet %}

Office12ColorTable.ApplyManagedColors(Me.buttonAdv1,Color.Orange )

{% endhighlight %}

![](Skin-Manager_images/Skin-Manager_img9.png)



