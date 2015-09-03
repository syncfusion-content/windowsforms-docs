---
layout: post
title: FlowLayout
description: flowlayout
platform: WindowsForms
control: Layout Managers Package
documentation: ug
---
# FlowLayout

FlowLayout is a Layout Manager which allows us to arrange the Child components horizontally or vertically in a specific order, based on the settings. FlowLayout is one of the most commonly used Layout Managers. Deriving from the LayoutManager class, the FlowLayout component was created to support simple horizontal and vertical flow and complex constraint-based FlowLayouts.

In its simplest form, this Layout Manager can be used to automatically arrange the Child components in one or more rows, as shown below.

![](Overview_images/Overview_img33.jpeg) 



In it's most flexible and powerful mode, a FlowLayout automatically realigns the controls by adjusting their sizes and location based on the current font size, form size and localization settings, helping you to create efficient form layouts.

FlowLayout uses the preferred size of a Child component in it's layout logic. The minimum size is ignored for the most part, except in the constraint-based scenario discussed below.

The FlowLayout features can be split based on simple and constraint-based scenarios.

In a simple scenario, the Layout Manager does not expect any constraints to be associated with the Child components. In a constraint-basedscenario, you specify constraints for each Child component over the layout logic.

The various features are discussed in the topics given below.

A Sample which demonstrates the FlowLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{% seealso %}

Creating a Simple Layout

{% endseealso %}

## Configuring FlowLayout

Layout Mode

The layout mode dictates the core function of a FlowLayout, whether to layout the Child controls horizontally or vertically. This property will be in effect for both the scenarios.

_Table442: Property Table_

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
LayoutMode</td><td>
Specifies the layout mode of the Child controls. The default value is set to 'Horizontal'.The options included are as follows.{{ '_Horizontal and_' | markdownify }}{{ '_Vertical_' | markdownify }}</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Vertical;



{% endhighlight %}
{% highlight vbnet %}



Me.flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Vertical

{% endhighlight  %}

![](Overview_images/Overview_img34.jpeg) 



## ParticipateInLayout

Child controls can be prevented from being laid out using the FlowLayout Manager. This can be done using the methods given below.

_Table443: Methods Table_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
GetParticipateInLayout</td><td>
Indicates whether the component is in the layout list.</td></tr>
<tr>
<td>
SetParticipateInLayout</td><td>
Adds or removes the specified control from the layout list.</td></tr>
</table>


The following code can be used to add or remove the Child control from the FlowLayout list programmatically.




{% highlight c# %}
this.flowLayout1.SetParticipateInLayout(this.button1,false);


{% endhighlight %}
{% highlight vbnet %}




Me.flowLayout1.SetParticipateInLayout(Me.button1,False)
{% endhighlight  %}

## HGap and VGap

The horizontal and the vertical gap between the Child controls can be set using the properties given below.

_Table444: Property Table_

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
HGap</td><td>
Gets / sets the horizontal spacing between the components.</td></tr>
<tr>
<td>
VGap</td><td>
Gets / sets the vertical spacing between the components.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.HGap = 20;

this.flowLayout1.VGap = 20;



{% endhighlight %}
{% highlight vbnet %}



Me.flowLayout1.HGap = 20

Me.flowLayout1.VGap = 20
{% endhighlight  %}


![](Overview_images/Overview_img35.jpeg) 



## AutoHeight

The height of the Container control can be automatically increased when there is a lack of sufficient space to show the Child components in the horizontal alignment mode. This is useful to enforce minimum heights on Container controls and forms.

_Table445: Property Table_

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
AutoHeight</td><td>
Specifies if the Container's height should be enforced to the minimum when in horizontal alignment mode.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.AutoHeight = true;


{% endhighlight %}
{% highlight vbnet %}




Me.flowLayout1.AutoHeight = True
{% endhighlight  %}

## Layout Direction

FlowLayout allows you to layout the Child controls in the opposite direction (right to left or bottom to top).

_Table446: Property Table_

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
ReverseRows</td><td>
Specifies to layout the Child controls in the reverse direction.</td></tr>
</table>





{% highlight c# %}
this.flowLayout1.ReverseRows = true;



{% endhighlight %}
{% highlight vbnet %}



Me.flowLayout1.ReverseRows = True

{% endhighlight  %}

![](Overview_images/Overview_img36.jpeg) 



## Alignment

The Alignment property is where you specify whether the current layout logic should be simple or constraint-based. 

N> Alignment is applied only along the direction of flow. For example, if the LayoutMode property is set to 'Horizontal' and the Alignment property is set to 'Center', then the rows will be centered horizontally.

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
Alignment</td><td>
Specifies the alignment of layout components in the direction of flow. The options included are as follows.Center,Near,Far andChildConstraints.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Near;


{% endhighlight %}
{% highlight vbnet %}




Me.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Near


{% endhighlight  %}

![](Overview_images/Overview_img38.jpeg) 



Once you specify the alignment of a FlowLayout as 'ChildConstraints', the Layout Manager will use a constraint-based layout logic based on the constraints specified on each Child component. During design time, the constraints can be specified for each Child control through the following extended property.

_Table448: Property Table_

<table>
<tr>
<th>
FlowLayout Property</th><th>
Description</th></tr>
<tr>
<td>
Constraints on flowLayout</td><td>
Specifies the alignment of layout components in the direction of flow when the Alignment property is set to 'ChildConstraints'.</td></tr>
</table>




{% highlight c# %}

this.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints;




{% endhighlight %}
{% highlight vbnet %}


Me.flowLayout1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints
{% endhighlight  %}


![](Overview_images/Overview_img39.jpeg) 



N> Refer_ FlowLayout - Configuring Child Controls _topic to know about HAlign, VAlign and other options provided by the Constraints on flowLayout property.

{% seealso %}

FlowLayout - Configuring Child Controls, Centering the Child Controls Horizontally and Vertically, Enabling Constrained FlowLayout on a Container, Rearranging the Controls laid out by FlowLayout

{% endseealso %}

## Configuring Child Controls

### Constraints on FlowLayout

Constrained FlowLayout is typically useful when creating resizable data entry forms filled with textboxes, checkboxes, and so on. During design time, the constraints can be specified for each Child control through its extended Constraints on flowLayout property. The constraints in the FlowLayout are described below in detail.

Setting the Constraints Through Designer

### HAlign and VAlign

The alignment of the Child controls that have been placed within a row can be set using the properties given below. The alignment is done based upon the layout modes of the Child controls.

Table 449: Constraints Table

<table>
<tr>
<th>Child Control Constraints</th>
<th>Description</th>
</tr>
<tr>
<td>HAlign</td>
<td>Specifies the mode in which the Child control should be laid out within a row. </br></br>The options includes are as follows.</br></br>Left,</br/>Right,<br/>Center and<br/>Justify.</td>
</tr>
<tr>
<td>VAlign</td>
<td>Specifies the mode in which the Child control should be laid out within a column. </br></br>The options includes are as follows.</br></br>Top,</br/>Bottom,<br/>Center and<br/>Justify.</td>
</tr>
</table>


When the alignment is set to 'Justify', any extra space will be equally distributed across the other Child controls that have been justified differently within that same row. However, when there is a lack of sufficient space, the justified Child controls are shrunk proportionally based on their minimum size and preferred size settings (specifically, the difference between the two sizes).

N> The Alignment property should be set to 'True' for the above properties to take effect.

![](FlowLayout_images/FlowLayout_img1.png) 

Figure 706: Children with different HAlign Settings

N> In the figure above, the textboxes have autolabels associated with them.

### Layout Participation

You can prevent a Child control from participating in the layout using the below given property.

Table 450: Constraint Table
<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
Active</td><td>
Specifies whether the Child control should participate in the layout. The default value is set to 'True'.</td></tr>
</table>

	
	
#### Line Beginner

You can force a Child control to always start at a new row by setting the below given property.

Table 451: Constraint Table

Table 450: Constraint Table
<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
NewLine</td><td>
Specifies whether the Child control should participate in the layout. The default value is set to 'False'.</td></tr>
</table>

	
#### Row Height and Column Width

By default, rows are not adjusted to take into account the remaining vertical space in the horizontal layout mode or horizontal space in the vertical layout mode. This can be done using the properties given below.

Table 452: Constraints Table

<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
ProportionalColWidth</td><td>
Specifies if proportional column widths should be used in the vertical layout. The default value is set to 'False'.</td></tr>
<tr>
<td>
ProportionalRowHeight</td><td>
Specifies if proportional row heights should be used in the horizontal layout. The default value is set to 'False'.</td></tr>
</table>


	
	
![](FlowLayout_images/FlowLayout_img2.png)
 
Figure 707: Two Proportionally Aligned Rows Split the Extra Horizontal Space Between Them

The methods associated with the above properties are given below.

Table 453: Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetConstraints</td><td>
Returns the constraints associated with the specified control.</td></tr>
<tr>
<td>
GetConstraintsRef</td><td>
Returns a reference to the constraints associated with the specified control.</td></tr>
<tr>
<td>
SetConstraints</td><td>
Specifies the constraints associated with the specified control.</td></tr>
</table>

	
In code, you can specify constraints through the SetConstraints() method. The FlowLayoutConstraints type defines the constraint that can be specified on a Child component.

Setting the Constraints Programmatically

In the coding given below, the constraints are set to the particular control along with the constraint values like Active, HAlign, VAlign, NewLine, ProportionalColWidth and ProportionalRowHeight.

{% highlight c# %}

this.flowLayout1.SetConstraints(this.textBox1, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, false, false, false));

{% endhighlight %}
{% highlight vbnet %}

Me.flowLayout1.SetConstraints(Me.textBox1, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, False, False, False))

{% endhighlight %}

{% seealso %}

Configuring FlowLayout, Centering the Child Controls Horizontally and Vertically, Enabling Constrained FlowLayout on a Container, Rearranging the Controls laid out by FlowLayout, Child Control Settings

{% endseealso %}
