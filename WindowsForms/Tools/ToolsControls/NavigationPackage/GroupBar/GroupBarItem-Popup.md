---
layout: post
title: GroupBarItem Popup
description: GroupBarItem Popup
platform: windowsforms
control: GroupBar
documentation: ug
---
# GroupBarItem Popup

The below properties controls the appearance and behavior of the GroupBarItem popup.

_Table_ _545__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
PopupAutoClose</td><td>
Indicates whether popup is closed after clicking an item.</td></tr>
<tr>
<td>
PopupClientSize</td><td>
Indicates the initial size of the popup for the GroupBarItem client.</td></tr>
<tr>
<td>
PopupResizeMode</td><td>
Gets or sets the popup's resize mode. It can be horizontal, vertical, Both or None.</td></tr>
<tr>
<td>
ShowPopupGripper</td><td>
Specifies whether to show or hide the popup gripper.</td></tr>
</table>

_Table_ _546__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
HidePopup</td><td>
Calling this method will hide the popup.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.PopupClientSize = new System.Drawing.Size(5, 6);

this.groupBar1.PopupResizeMode = Syncfusion.Windows.Forms.Tools.PopupResizeMode.Vertical;

this.groupBar1.PopupAutoClose = true;

this.groupBar1.ShowPopupGripper = true;

this.groupBar1.HidePopup();

{% endhighlight %}


{% highlight vbnet %} 

Me.groupBar1.PopupClientSize = New System.Drawing.Size(5, 6) 

Me.groupBar1.PopupResizeMode = Syncfusion.Windows.Forms.Tools.PopupResizeMode.Vertical 

Me.groupBar1.PopupAutoClose = True 

Me.groupBar1.ShowPopupGripper = True 

Me.groupBar1.HidePopup()

{% endhighlight %}