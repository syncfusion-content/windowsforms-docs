---
layout: post
title: Button Settings 
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# Button Settings 

This section discusses the button settings of the XPTaskBar Box.

The collapsed button is used to expand or collapse the XPTaskBar Items. The following table lists the properties associated with
collapsing or expanding the XPTaskBar Box.

_Table_ _582__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
<tr>
<td>
Collapsed</td><td>
Specifies the collapsed state of the TaskBar Box. The default value is set to 'False'.</td></tr>
<tr>
<td>
ShowCollapseButton</td><td>
Specifies whether to show or hide the collapse button. The default value is set to 'True'.</td></tr>
<tr>
<td>
ToggleByButton</td><td>
Specifies whether the XPTaskBar Box should expand or collapse only when the collapse button is clicked, or always when the header is clicked. The default value is set to 'False'.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.Collapsed = true;

this.xpTaskBarBox1.ShowCollapseButton = true;

this.xpTaskBarBox1.ToggleByButton = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.Collapsed = True

Me.xpTaskBarBox1.ShowCollapseButton = True

Me.xpTaskBarBox1.ToggleByButton = True

{% endhighlight %}

 ![](Overview_images/Overview_img107.jpeg) 
Figure 1008: Collapsed State of the XPTaskBar Boxes

The methods associated with the above properties are given below.

_Table_ _583__: Methods Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td>
LoadBoxExpandedStates</td><td>
Loads the expanded child taskbar boxes from the AppStateSerializer</td></tr>
<tr>
<td>
SaveBoxExpandedStates</td><td>
Saves the expanded child taskbar boxes to the AppStateSerializer.</td></tr>
</table>