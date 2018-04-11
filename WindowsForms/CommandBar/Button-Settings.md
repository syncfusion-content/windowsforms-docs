---
layout: post
title: Button-Settings | WindowsForms | Syncfusion
description: button settings
platform: WindowsForms
control: CommandBars
documentation: ug
---

# Button settings

The buttons settings of the CommandBar control are given below.

## Close and drop-down button

The close button of CommandBar gets displayed when it is in the float state whereas the drop-down button gets displayed both in the dock and float state.


<table>
<tr>
<th>
CommandBar property</th><th>
Description</th></tr>
<tr>
<td>
HideCloseButton</td><td>
Determines whether the CommandBar will have a close button when floating.</td></tr>
<tr>
<td>
HideDropDownButton</td><td>
Draws the CommandBar with/without the drop-down button.</td></tr>
</table>


N> Pop-up Menu can be displayed from the drop-down button of the CommandBar. Refer Pop-up Menu topic.

{% tabs %}

{% highlight C# %}

this.commandBar1.HideCloseButton=true;

this.commandBar1.HideDropDownButton=true;

{% endhighlight %}

{% highlight VB %}



Me.commandBar1.HideCloseButton=True

Me.commandBar1.HideDropDownButton=True

{% endhighlight %}

{% endtabs %}

 ![](Button-Settings_images/Button-Settings_img2.jpeg)



 ![](Button-Settings_images/Button-Settings_img3.jpeg) 



The methods associated with the above properties is given below.


<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetCloseButtonState</td><td>
Gets visual state for the close button of the floating CommandBar.</td></tr>
<tr>
<td>
GetDropDownState</td><td>
Gets visual state for the drop-down button of the CommandBar.</td></tr>
</table>


A sample which demonstrates the DropDown Button settings of the CommandBar control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

