---
layout: post
title: Configuring GridLayout
description: configuring gridlayout
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Configuring GridLayout

## Rows and Columns

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







Me.gridLayout1.HGap=10

Me.gridLayout1.VGap=10

{% endhighlight  %}

 ![](Overview_images/Overview_img61.jpeg)



> Note: To include some margin space along the borders, refer_ Margin Settings

See Also

GridLayout - Configuring Child Controls, Rearranging the Controls laid out by GridLayout

