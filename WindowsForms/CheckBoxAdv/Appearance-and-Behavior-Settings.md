---
layout: post
title: Appearance-and-Behavior-Settings | Windows Forms | Syncfusion
description: appearance and behavior settings
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Appearance and Behavior Settings

This section discusses the appearance and behavior settings of the CheckBoxAdv control.

## Appearance Settings

### DrawFocusRectangle

The focus rectangle can be hidden or made visible using the below given property.


<table>
<tr>
<th>
CheckBoxAdv Property</th><th>
Description</th></tr>
<tr>
<td>
DrawFocusRectangle</td><td>
Determines if the focus rectangle is visible when it gets the focus. The default value is set to 'True'.</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.DrawFocusRectangle = true;

{% endhighlight %}

{% highlight vbnet %}

Me.checkBoxAdv1.DrawFocusRectangle = True

{% endhighlight %}

Behavior Settings

The behavior settings of the CheckBoxAdv can be customized using the properties given below.


<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
AutoHeight</td><td>
Determines if the CheckBoxAdv will automatically calculate its height.</td></tr>
<tr>
<td>
ReadOnlyMode</td><td>
Specifies the Read Only Mode of the CheckBoxAdv.</td></tr>
<tr>
<td>
Tristate</td><td>
Specifies whether the indeterminate state can be accessed through clicking.</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.AutoHeight = true;

this.checkBoxAdv1.ReadOnlyMode = true;

this.checkBoxAdv1.Tristate= false;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.AutoHeight = True

Me.checkBoxAdv1.ReadOnlyMode = True

Me.checkBoxAdv1.Tristate= False

{% endhighlight %}

A sample which demonstrates the ReadOnlyMode and Tristate properties of CheckBoxAdv is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo