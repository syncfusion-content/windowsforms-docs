---
layout: post
title: GridLayout
description: gridlayout
platform: WindowsForms
control: Layout Managers Package
documentation: ug
---
# GridLayout

GridLayout is a Layout Manager that allows us to arrange the Child controls as in a grid containing rows and columns. Deriving from the Layout Manager base, the GridLayout inherits all the functionality that the Layout Manager type exposes. In its simplest form, this Layout Manager can be used to automatically arrange the Child components in one or more rows, as illustrated below.

![](Overview_images/Overview_img60.jpeg) 



A Sample which demonstrates the GridLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{% seealso %}

Creating a Simple Layout, 

{% endseealso %}

## Configuring GridLayout

### Rows and Columns

The GridLayout simply divides the available space into a number of rows and columns based on the number of Child controls. The number of rows and columns can be specified using the properties given below.

_Table454: Property Table_

<table>
<tr>
<th>
GridLayout Property</th><th>
Description</th></tr>
<tr>
<td>
Rows</td><td>
Specifies the number of rows in the grid.</td></tr>
<tr>
<td>
Columns</td><td>
Specifies the number of columns in the grid.</td></tr>
</table>


The Rows property usually dictates the number of columns (overriding the Columns property setting) based on the number of Child controls, unless the Rows property is set to 'Null' or less, in which case the Columns property will dictate the number of rows.

The following code snippet arranges the Child controls in one column and two rows.


{% highlight c# %}


this.gridLayout1.Rows = 2;

this.gridLayout1.Columns = 1;



{% endhighlight %}
{% highlight vbnet %}



Me.gridLayout1.Rows = 2

Me.gridLayout1.Columns = 1
{% endhighlight  %}

## HGap and VGap

The horizontal and the vertical gap between the Child controls can be set using the properties given below.

_Table455: Property Table_

<table>
<tr>
<th>
GridLayout Property</th><th>
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
this.gridLayout1.HGap=10;

this.gridLayout1.VGap=10;



{% endhighlight %}
{% highlight vbnet %}



Me.gridLayout1.HGap=10

Me.gridLayout1.VGap=10

{% endhighlight  %}

 ![](Overview_images/Overview_img61.jpeg)



N> To include some margin space along the borders, refer_ Margin Settings

{% seealso %}

GridLayout - Configuring Child Controls, Rearranging the Controls laid out by GridLayout

{% endseealso %}

## Configuring Child Controls

The following settings can be used to configure the Child controls of the GridLayout Manager.

### ParticipateInLayout

To prevent a Child control from being laid out using the GridLayout Manager, the below given property can be used.

_Table456: Property Table_

<table>
<tr>
<th>
Child Control Property</th><th>
Description</th></tr>
<tr>
<td>
ParticipateInLayout</td><td>
Specifies whether the Child control should participate in the GridLayout. The default value is set to 'True'.</td></tr>
</table>


The methods associated with the above property are given below.

_Table457: Methods Table_

<table>
<tr>
<th>
Methods</th><th>
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


The following code can be used to add or remove the control from the GridLayout list programmatically.



{% highlight c# %}

this.gridLayout1.SetParticipateInLayout(this.button1,false);



{% endhighlight %}
{% highlight vbnet %}



Me.gridLayout1.SetParticipateInLayout(Me.button1,False)
{% endhighlight  %}
{% seealso %}

Configuring GridLayout, Rearranging the Controls laid out by GridLayout, GridLayout - Configuring Child Controls

{% endseealso %}

## Rearranging the Controls laid out by GridLayout

The Child controls of the GridLayout can be rearranged by dragging-and-dropping them at design time.

![](Overview_images/Overview_img63.jpeg) 



{% seealso %}

Rearranging the Controls laid out by FlowLayout, Rearranging the Controls laid out by GridBagLayout

{% endseealso %}