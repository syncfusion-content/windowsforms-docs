---
layout: post
title: Appearance in Windows Forms TreeView control | Syncfusion®
description: Learn about Appearance support in Syncfusion® Windows Forms TreeView control, its elements and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---
# Appearance in Windows Forms TreeView

This section deals with the appearance of TreeViewAdv control

## Border Customization
	
We can customize the border with the below properties.

### BorderStyle

BorderStyle Property has the following styles

* None

    If the BorderStyle set as none, border of TreeViewAdv will be collapsed

* FixedSingle (For 2D)

    If the BorderStyle set as FixedSingle , then the border of the TreeViewAdv will be visible and we can customize the border 

* Fixed3D (Default)

    If the BorderStyle set as Fixed3D, then the border of the TreeViewAdv will be visible in 3D and we can customize the border settings

### BorderSingle

It Indicates the following 2D border styles

*	Solid (default)
*	Dashed
*	Dotted
*	Inset
*	Outset
*	None

### BorderColor

BorderColor Property sets the color of Border

### BorderSides

BorderSides Property specify the sides of the control to which 3D border should be set.

It has the following Options

* All 

   Three-dimensional border will be set for all sides

* Right 

    Three-dimensional border on the right side of TreeViewAdv

* Left

    Three-dimensional border on the left side of TreeViewAdv 

* Top

    Three-dimensional border on the top of TreeViewAdv

* Bottom

    Three-dimensional border on the bottom of TreeViewAdv

* Middle     

  
### Border3DStyle

Border3DStyle Property indicates the style of 3D border when BorderStyle is set as Fixed3D

It has the following Styles 

* Adjust
* Bump
* Etched
* Flat
* Raised
* RaisedInner
* RaisedOuter
* Sunken
* SunkenInner
* SunkenOuter

>NOTE
>
>The settings will have applied only when TreeViewAdv.BorderStyle property is set to FixedSingle or Fixed3D.
To customize the 2D border of TreeViewAdv, set the below properties as follows.

<b>Property Table</b>

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BorderColor</td><td>
Indicates the color of the 2D border.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Sets the 2D border style for the Treeview control.</td></tr>
<tr>
<td>
BorderSingle</td><td>	
Indicates the 2D border style.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.BorderColor = System.Drawing.Color.SteelBlue;
this.treeViewAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed;
this.treeViewAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.BorderColor = System.Drawing.Color.SteelBlue
Me.treeViewAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed
Me.treeViewAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight %}
{% endtabs %}

![Appearence_img1](Appearence_images/Appearence_img1.jpg)

To customize the 3D border of TreeViewAdv, set the below property as follows

<b>Property Table</b>

<table>
<tr>
<th>
TreeViewAdv Property </th><th>
Description</th></tr><tr><td>
BorderStyle</td><td>
Sets the 3D border style for the Treeview control. It must be set as Fixed3D</td></tr><tr><td> 
Border3DStyle</td><td>
Indicates the style of the 3D border when BorderStyle is set to Fixed3D.</td></tr><tr><td> 
BorderSides</td><td>
Specifies the sides of the control to which border should be set.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.BorderStyle = BorderStyle.Fixed3D;
this.treeViewAdv1.BorderSides = Border3DSide.Right;
this.treeViewAdv1.Border3DStyle = Border3DStyle.RaisedOuter;
this.treeViewAdv1.BorderColor = Color.SteelBlue;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.BorderStyle = BorderStyle.Fixed3D;
Me.treeViewAdv1.BorderSides = Border3DSide.Right;
Me.treeViewAdv1.Border3DStyle = Border3DStyle.RaisedOuter;
Me.treeViewAdv1.BorderColor = Color.SteelBlue;

{% endhighlight %}
{% endtabs %}

![Appearence_img2](Appearence_images/Appearence_img2.jpg)

## ColorCustomization

### BackColor

Indicates the background color of the text and the graphics of the control.

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.BackColor = Color.LightBlue;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.BackColor = Color.LightBlue;

{% endhighlight %}
{% endtabs %}


![Appearence_img3](Appearence_images/Appearence_img3.jpg)

### BackgroundColor

Indicates the background color of the control. It provides options to set style, back color, fore color, gradient color and gradient styles. 

![Appearence_img3](Appearence_images/Appearence_img3.png)

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Color.LightSteelBlue);

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Color.LightSteelBlue)

{% endhighlight %}
{% endtabs %}

![Appearence_img4](Appearence_images/Appearence_img4.jpg)

>Note
>
>Both BackColor and Background color sets the background color of the control. If we set background color, backcolor property overridden by background color and also we can set gradient color and gradient styles through background color property rather than backcolor.

### BaseStylePairs

It defines the style for the Nodes. BaseStylePairs property is a collection property of type StyleNamePairsList and it holds one more base style pairs

### BaseStyles

Apart from the Standard style, we can also create custom Base styles using the following steps in Base Styles Collection Editor 

1. Open the Base Style Collection Editor by clicking the BaseStyles property in property window.

2. Clicking the Add Base Style button, will add a new BaseStyle whose properties can be edited.


    ![StyleArchitecture_images3](StyleArchitecture_images/StyleArchitecture_img3.jpg)


3. This new base style can be applied to any of the nodes, using TreeNodeAdv.BaseStyle property of the respective nodes.


    ![StyleArchitecture_images4](StyleArchitecture_images/StyleArchitecture_img4.jpg)


4. This overrides the [Standard Style](#standard-style) settings for the specified nodes and displays the image as follows.


    ![StyleArchitecture_images5](StyleArchitecture_images/StyleArchitecture_img5.jpg)


### LineColor

Indicates the color of RootLines in TreeViewAdv.

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.LineColor = Color.Red;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.LineColor = Color.Red 

{% endhighlight %}
{% endtabs %}

![Appearence_img5](Appearence_images/Appearence_img5.jpg)

### SelectedNodeBackground

Background for the selected node can be set using SelectedNodeBackground property.

### SelectedNodeForeColor

Fore color for the selected node can be set using SelectedNodeForeColor property. 

### InactiveSelectedNodeBackground

The selection rectangle gets grayed out when the TreeViewAdv loses focus. If the user still wishes to maintain the node’s active colors, then the InactiveSelectedNodeBackground and InactiveSelectedNodeForeColor properties can be set.

### InactiveSelectedNodeForeColor

Fore Color for the selected node when control loses focus can be set using InactiveSelectedNodeForeColor property

>NOTE:
>
>The settings will have applied only when TreeViewAdv.HideSelection property should be set to false.


{% tabs %}
{% highlight c# %}

this.treeViewAdv1.SelectedNodeBackground = new Syncfusion.Drawing.BrushInfo(Color.Gray);

this.treeViewAdv1.SelectedNodeForeColor = System.Drawing.Color.White;

this.treeViewAdv1.InactiveSelectedNodeBackground = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.ForwardDiagonal, System.Drawing.Color.Ivory, System.Drawing.Color.DarkOrange);

this.treeViewAdv1.InactiveSelectedNodeForeColor = System.Drawing.Color.SteelBlue;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.SelectedNodeBackground = new Syncfusion.Drawing.BrushInfo(Color.Gray)

Me.treeViewAdv1.SelectedNodeForeColor = System.Drawing.Color.White

Me.treeViewAdv1.InactiveSelectedNodeBackground = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.ForwardDiagonal, System.Drawing.Color.Ivory, System.Drawing.Color.DarkOrange)

Me.treeViewAdv1.InactiveSelectedNodeForeColor = System.Drawing.Color.SteelBlue

{% endhighlight %}
{% endtabs %}

## Style

Style provides rich and professional look and feel UI for the TreeViewAdv control. 

Style can be applied for the TreeViewAdv using Style property.
Some of the available Styles are as follows:

### Default

By default, TreeViewAdv has `Default` visual style.

![Appearence_img6](Appearence_images/Appearence_img6.jpg)

### Office2007

####  Office2007ColorScheme

TreeViewAdv includes new color schemes as available in the Office 2007 suite to provide a more personalized experience with the TreeViewAdv.

TreeViewAdv now supports four themes: 
*	Black
*	Blue (Default)
*	Managed
*	Silver

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Office2007;
this.treeViewAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Office2007
Me.treeViewAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver	

{% endhighlight %}
{% endtabs %}

#### Office2007ColorTable

TreeViewAdv has new color table based on Office2007ColorScheme.

TreeViewAdv has following color tables

*	Office2007BlueColors
*	Office2007SilverColors
*	Office2007BlackColors

![Appearence_img7](Appearence_images/Appearence_img7.jpg)

### Office2010

#### Office2010ColorScheme

TreeViewAdv includes new color schemes as available in the Office 2010 suite to provide a more personalized experience with the TreeViewAdv. TreeViewAdv now supports four themes: 

*	Black
*	Blue (Default)
*	Managed
*	Silver

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Office2010;
this.treeViewAdv1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Silver;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Office2010
Me.treeViewAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Silver	

{% endhighlight %}
{% endtabs %}

#### Office2010ColorTable

TreeViewAdv has new color table based on Office2010ColorScheme.

TreeViewAdv has following color tables
*	Office2010BlueColors
*	Office2010SilverColors
*	Office2010BlackColors

 ![Appearence_images8](Appearence_images/Appearence_img8.jpg)
	
### Metro
 
#### MetroArrowColorTable

We can customize the expander arrow style using MetroArrowColorTable property

#### MetroColor

Indicates the metro color of the control.(Applicable for metro style only)
{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Metro;
this.treeViewAdv1.MetroColor = Color.SteelBlue;
this.treeViewAdv1.MetroArrowColorTable.ArrowNormal = Color.LightBlue;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Metro
Me.treeViewAdv1.MetroColor = Color.SteelBlue
Me.treeViewAdv1.MetroArrowColorTable.ArrowNormal = Color.LightBlue

{% endhighlight %}
{% endtabs %}

![Appearence_img9](Appearence_images/Appearence_img9.jpg)

### Office2016Colorful

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Office2016Colorful;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![Appearence_img10](Appearence_images/Appearence_img10.jpg)

###  Office2016White

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Office2016White;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Office2016White

{% endhighlight %}
{% endtabs %}

![Appearence_img11](Appearence_images/Appearence_img11.jpg)

### Office2016Black

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Office2016Black;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Office2016Black

{% endhighlight %}
{% endtabs %}

![Appearence_img12](Appearence_images/Appearence_img12.jpg)


### Office2016DarkGray

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.Style = TreeStyle.Office2016DarkGray;

{% endhighlight %}
{% highlight vb %}

Me.treeViewAdv1.Style = TreeStyle.Office2016DarkGray

{% endhighlight %}
{% endtabs %}

![Appearence_img13](Appearence_images/Appearence_img13.jpg)


## Gradient Background

This section discusses those events that are handled on changing some appearance related properties. They are as follows.

### GradientBackgroundChanged Event

This event occurs when the GradientBackground of the tree changes.

{% tabs %}
{% highlight c# %}

private void treeViewAdv1_GradientBackgroundChanged(object sender, EventArgs e)
{

//The below line will be printed in the output window at run time.
    Console.Write("Gradient Background Changed Event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_GradientBackgroundChanged(ByVal sender As Object, ByVal e As EventArgs)

'The below line will be printed in the output window at run time.
Console.Write("Gradient Background Changed Event is raised ")

End Sub

{% endhighlight %}
{% endtabs %}

### GradientColorsChanged Event

This event occurs when the GradientColors of the tree changes.

{% tabs %}
{% highlight c# %}

private void treeViewAdv1_GradientColorsChanged(object sender, EventArgs e)
{

//The below line will be printed in the output window at run time.
    Console.Write("Gradient Colors Changed Event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_GradientColorsChanged(ByVal sender As Object, ByVal e As EventArgs)

'The below line will be printed in the output window at run time.
Console.Write("Gradient Colors Changed Event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}


## VerticalGradientChanged Event

This event occurs when the tree's VerticalGradient is changed.

{% tabs %}
{% highlight c# %}

private void treeViewAdv1_VerticalGradientChanged(object sender, EventArgs e)
{

//The below line will be printed in the output window at run time.
    Console.Write("Vertical GradientChanged Event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_VerticalGradientChanged(ByVal sender As Object, ByVal e As EventArgs)

'The below line will be printed in the output window at run time.
Console.Write("Vertical GradientChanged Event is raised ")

End Sub

{% endhighlight %}
{% endtabs %}

## Paint TreeNodeAdv

### OwnerDrawn 

Indicates whether the BeforeNodePaint and AfterNodePaint events will be fired before drawing a node. The default value is false.

### BeforeNodePaint Event

User can paint specific nodes using the BeforeNodePaint event.

OwnerDrawNodes property should be set to true while handling this event

<b>Event Table</b>

<table>
<tr>
<th>
Node Paint Events</th><th>
Description</th></tr><tr><td>
BeforeNodePaint</td><td>
Handled before a node is being painted.</td></tr>
</table>

<b>Property Table</b>
<table>
<tr>
<th>
TreeViewAdv Property</th><th>
Description</th></tr><tr><td>
OwnerDrawNodes</td><td>
Indicates if the BeforeNodePaint event will be fired before drawing a node.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.OwnerDrawNodes = true;
// Enabling Node's Foreground
private void treeViewAdv1_BeforeNodePaint(object sender, TreeNodeAdvPaintEventArgs e)
{
 	   if (e.Node.Index %2 == 0)
  	 	 {
       			 e.ForeColor=Color.Red;
    		}
}

{% endhighlight %}

{% highlight vb %}

Me.treeViewAdv1.OwnerDrawNodes = True
' Enabling Node's Foreground
Private Sub treeViewAdv1_BeforeNodePaint(ByVal sender As Object, ByVal e As TreeNodeAdvPaintEventArgs)
If e.Node.Index % 2 = 0 Then
e.ForeColor = Color.Red
End If
End Sub

{% endhighlight %}
{% endtabs %}

![Appearence_img14](Appearence_images/Appearence_img14.jpg)

### AfterNodePaint Event

Users can also draw on the node, after the default drawing routines have rendered the node appropriately. Users can do so by first turning on OwnerDrawNodes in the tree and listening to the AfterNodePaint event.

<b>Event Table</b>

<table>
<tr>
<th>
Node Paint Events</th><th>
Description</th></tr><tr><td>
AfterNodePaint</td><td>
Handled after a node is painted.</td></tr>
</table>


