---
layout: post
title: Mode Settings | WindowsForms | Syncfusion®
description: Learn here about how to set the different Mode Settings to the Syncfusion® Windows Forms MaskedEditBox control.
platform: WindowsForms
control: MaskedEditBox
documentation: ug
--- 
# Mode Settings in MaskedEditBox

This section discusses how to set the different mode to the MaskedEditBox control.

The mode settings for the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control can be customized by using the [ClipMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_ClipMode), [InputMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_InputMode) and [UsageMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_UsageMode) properties.

<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
ClipMode</td><td>
Specifies the format of the text that will be returned by the MaskedEdit control. The options included are as follows.{{ '_IncludeLiterals and_' | markdownify }}{{ '_ExcludeLiterals._' | markdownify }}The default value is 'IncludeLiterals'.</td></tr>
<tr>
<td>
InputMode</td><td>
Specifies the input mode for the MaskedEditBox control. The options included are as follows.{{ '_OvertypeOnly and_' | markdownify }}{{ '_Normal._' | markdownify }}The default value is 'Over typeOnly'.</td></tr>
<tr>
<td>
UsageMode</td><td>
Specifies if the MaskedEditBox control is to behave as a numeric control.</td></tr>
</table>

## Clip mode

At runtime, we can copy or paste the entries of MaskedEditBox. The entries that are copied can be specified whether to include literals using the [ClipMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_ClipMode) property.

Setting the `ClipMode` property of the MaskedEditBox to `ExcludeLiterals`, will get rid of the literals from the text that is returned by the control. The default value is set to `IncludeLiterals`.

## InputMode

The different modes of the input can be determined by the [InputMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_InputMode) property.

Setting the `InputMode` to `Normal`, allows the user to work in insert mode and the INSERT key is not allowed. In Over typeOnly mode, the INSERT key will not have any effect.

## UsageMode

The [UsageMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_UsageMode) property modifies the behavior of the MaskedEditBox as detailed below.

## Normal mode

When the `UsageMode` is set to `Normal`, there is no change in the behavior. This is the default mode for a MaskedEditBox control.

## Numeric mode

When the `UsageMode` is set to `Numeric`, the control creates internally two data groups and one decimal separator character in the mask. These groups are created such that the first group holds the mask value before the decimal separator and the second group holds the mask value after the decimal separator. For example, let us specify the mask as follows:

###.####

The first group will contain the value for the first 3 ### characters of the mask (the number group) and the second group (the decimal group) will contain the 5 characters (.####). The default group alignment for the number group will be right and the alignment for the decimal group will be left. Refer to the information on [DataGroups](/windowsforms/maskededitbox/display-settings#datagroups) for more information on how this works.

The MaxValue and MinValue properties are enforced only when the UsageMode is set to `Numeric`.

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.ClipMode = Syncfusion.Windows.Forms.Tools.ClipModes.ExcludeLiterals;
this.maskedEditBox1.InputMode = Syncfusion.Windows.Forms.Tools.MaskInputMode.Normal;
this.maskedEditBox1.UsageMode = Syncfusion.Windows.Forms.Tools.MaskedUsageMode.Numeric;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.ClipMode = Syncfusion.Windows.Forms.Tools.ClipModes.ExcludeLiterals
Me.maskedEditBox1.InputMode = Syncfusion.Windows.Forms.Tools.MaskInputMode.Normal
Me.maskedEditBox1.UsageMode = Syncfusion.Windows.Forms.Tools.MaskedUsageMode.Numeric

{% endhighlight %}

{% endtabs %}
