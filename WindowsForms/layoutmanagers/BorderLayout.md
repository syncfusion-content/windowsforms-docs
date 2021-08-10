---
layout: post
title: BorderLayout in Windows Forms Layout Managers Package| Syncfusion
description: BorderLayout allows user to arrange and layout the child controls along the borders similar to framework’s built-in docking support.
platform: WindowsForms
control: Layout Managers Package
documentation: ug
---
# BorderLayout in Windows Forms Layout Manager

`BorderLayout` is a Layout Manager which allows the user to arrange and layout the Child controls along the borders and at the center, just like the .NET framework's built-in docking support.

![Layout manager to dock controls at different sides](Overview_images/Overview_img15.jpeg)

N> BorderLayout does not arrange the Child components automatically like the other Layout Managers.

## Key features

**Spacing** - Provides option to customize horizontal and vertical gaps between child controls

**Position** - Provides options to set the direction of child controls such as north, south, east, west or center.

**Size** - Provides option to  customize the size of the child controls in BorderLayout.

**Getting started**

This section describes how to add `BorderLayout` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#borderlayout) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages)

**Creating simple application with BorderLayout**

You can create the Windows Forms application with BorderLayout control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)

**Creating the project**

Create a new Windows Forms project in the Visual Studio to display the BorderLayout with basic functionalities.

## Adding control via designer

The BorderLayout control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Shared.Base.dll


![Drag and drop BorderLayout from toolbox](BorderLayout_images/BorderLayout_img3.png)


To add the form as a Container control of the BorderLayout, click `Yes` in a popup form which appears automatically before BorderLayout gets added.

![Alert to add BorderLayout to form](BorderLayout_images/BorderLayout_img4.png)


**Adding layout components**

The child controls can be added to the layout by dragging it from the toolbox and dropping it in a designer view.

![Adding controls into BorderLayout](BorderLayout_images/BorderLayout_img5.png)

## Adding control manually using code

To add control manually in C#, follow the given steps:

**Step 1** - Add the following required assembly references to the project:

	* Syncfusion.Shared.Base.dll

**Step 2** - Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %} 

**Step 3** - Create `BorderLayout` control instance and set `ContainerControl` as form.

{% tabs %}

{% highlight C# %}

BorderLayout borderLayout1 = new BorderLayout();

this.borderLayout1.ContainerControl = this;

{% endhighlight %}

{% highlight VB %}

Dim borderLayout1 As BorderLayout = New BorderLayout()

Me.borderLayout1.ContainerControl = Me

{% endhighlight %}

{% endtabs %}

**Adding layout components**

The child controls can be added to the layout by simply adding it to the form, since the form is its container control.

{% tabs %}

{% highlight C# %}

ButtonAdv buttonAdv1 = new ButtonAdv();
ButtonAdv buttonAdv2 = new ButtonAdv();
ButtonAdv buttonAdv3 = new ButtonAdv();

this.buttonAdv1.Text = "buttonAdv1";
this.buttonAdv2.Text = "buttonAdv2";
this.buttonAdv3.Text = "buttonAdv3";

this.Controls.Add(this.buttonAdv1);
this.Controls.Add(this.buttonAdv2);
this.Controls.Add(this.buttonAdv3);

{% endhighlight %}

{% highlight VB %}

Dim buttonAdv1 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()

Me.buttonAdv1.Text = "buttonAdv1"
Me.buttonAdv2.Text = "buttonAdv2"
Me.buttonAdv3.Text = "buttonAdv3"

Me.Controls.Add(this.buttonAdv1)
Me.Controls.Add(this.buttonAdv2)
Me.Controls.Add(this.buttonAdv3)

{% endhighlight %}

{% endtabs %}

## Configuring BorderLayout

The configuration settings for the BorderLayout have been discussed in this topic.

### Spacing

The horizontal and the vertical gap between the Child controls can be set using the properties given below.

<table>
<tr>
<th>
BorderLayout properties</th><th>
Description</th></tr>
<tr>
<td>
HGap</td><td>
Gets/sets the horizontal spacing between the components.</td></tr>
<tr>
<td>
VGap</td><td>
Gets/sets the vertical spacing between the components.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



this.borderLayout1.HGap = 10;

this.borderLayout1.VGap = 10;


{% endhighlight %}


{% highlight VB %}

Me.borderLayout1.HGap = 10

Me.borderLayout1.VGap = 10

{% endhighlight %}

{% endtabs %}

![Aligning with space between child controls](Overview_images/Overview_img17.jpeg)


## Configuring Child controls

The Child controls can be aligned to various positions (North, South, East, West and Center) using the property given below.



<table>
<tr>
<th>Child control property</th>
<th>Description</th>
</tr>
<tr>
<td>Position on borderLayout</td>
<td>Gets/sets the border position for a Child component.</td>
</tr>
</table>

### Child control property description

Position on borderLayout - Gets/sets the border position for a Child component.
 
N> This property is added as an extended property in the properties window of the Child control added to the BorderLayout.

  {% tabs %}

  {% highlight C# %}

this.borderLayout1.SetPosition(this.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North);
 
{% endhighlight %}


{% highlight VB %}

Me.borderLayout1.SetPosition(Me.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North)

{% endhighlight %}

{% endtabs %}

![Aligning child control at different position](BorderLayout_images/BorderLayout_img1.png)
 
Setting the position of button1 on BorderLayout to "North"
{:.caption}
 
![Aligning button at north relative to container](BorderLayout_images/BorderLayout_img2.png)
 
Layout of all Button Controls using BorderLayout
{:.caption}

N> BorderLayout allows only one control to be aligned along a particular layout position, unlike the .NET Framework support.

{% seealso %}

[Creating a Simple Layout](/windowsforms/layoutmanagers/creating-a-simple-layout), [Margin Settings](/windowsforms/layoutmanagers/layout-manager-settings#margin-settings), [Border Layout - Configuring Child Controls](#configuring-child-controls), and
[Configuring BorderLayout.](#configuring-borderlayout)

{% endseealso %}