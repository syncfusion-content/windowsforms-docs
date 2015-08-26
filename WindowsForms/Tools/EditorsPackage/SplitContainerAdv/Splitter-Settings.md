---
layout: post
title: Splitter Settings
description: Splitter Settings
platform: windowsforms
control: Editors Package
documentation: ug
---

# Splitter Settings

The properties which changes the behavior of the Splitter in a SplitContainerAdv control are discussed in this section.

## Splitter Settings

The below table describes the properties to control the behavior of the splitter. 

Table 244: Property Table

<table>
<tr>
<td>
SplitContainerAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
IsSplitterFixed</td><td>
Gets / sets whether the user is allowed to move the splitter or not. Default value is false.</td></tr>
<tr>
<td>
SplitterDistance</td><td>
Indicates the distance from the left top border.</td></tr>
<tr>
<td>
SplitterIncrement</td><td>
Determines the number of pixels the splitter moves in each increment.</td></tr>
<tr>
<td>
SplitterWidth</td><td>
Indicates the width of the splitter.</td></tr>
</table>



{% highlight C# %}



this.SplitContainerAdv1.IsSplitterFixed = true;

this.splitContainerAdv1.SplitterDistance = 25

this.splitContainerAdv1.SplitterIncrement = 5

this.splitContainerAdv1.SplitterWidth = 20
{% endhighlight %}


{% highlight vbnet %}





Me.SplitContainerAdv1.IsSplitterFixed = True

Me.splitContainerAdv1.SplitterDistance = 25

Me.splitContainerAdv1.SplitterIncrement = 5

Me.splitContainerAdv1.SplitterWidth = 20

{% endhighlight %}

 ![](SplitContainerAdv-Images/Overview_img397.jpeg) 
