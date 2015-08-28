---
layout: post
title: Multiline Support for ParentBarItem in MainFrameBarManager
description: multiline support for parentbaritem in mainframebarmanager
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Multiline Support for ParentBarItem in MainFrameBarManager

You can customize and display the ParentBarItem text in Multiline format by using “MultiLine” property. 

API Details:

_Table514: Property Table_

<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
MultiLine</td><td>
Boolean</td><td>
Enables MultiLine in MainFrameBarManager</td></tr>
</table>


The following code example illustrates how to set MultiLine property in C# and VB language.

{% highlight c# %}

  this.parentBarItem1.MultiLine = true;




{% endhighlight  %}
{% highlight vbnet %}


    Me.parentBarItem1.MultiLine = true

{% endhighlight  %}



The following screenshot shows how the ParentBarItem is displayed in Multiline.

![](Overview_images/Overview_img169.png) 

