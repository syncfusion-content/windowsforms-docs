---
layout: post
title: Ribbon-ProgressBar| WindowsForms | Syncfusion
description:  ribbon progressbar
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
--

# Ribbon ProgressBar

ToolStripProgressBar can be used to provide a visual cue that the application is indeed working and the task is being completed.item. It can be added to a ToolStripEx directly or through a panel. 

![](Ribbon-ProgressBar_images/Ribbon-ProgressBar_img1.jpg)

The below properties controls the appearance and behavior of the ToolStripProgressBar Item.

### Foreground Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Font<br/><br/></td><td>
Sets the font style for the display text.<br/><br/></td></tr>
<tr>
<td>
ForeColor<br/><br/></td><td>
Sets the fore color for the display text.<br/><br/></td></tr>
</table>

### Style Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Style<br/><br/></td><td>
Specifies the style for ProgressBar. The style are,<br/><br/>Blocks - Indicates the progress, by increasing the number of segmented blocks in a ProgressBar,<br/><br/>Continuous - Indicates the progress, by increasing the size of a smooth continuous bar,<br/><br/>Marquee - Indicates the progress, by continuously scrolling a block across the ProgressBar in a Marque fashion.<br/><br/></td></tr>
<tr>
<td>
Enabled<br/><br/></td><td>
Specifies whether the item is enabled.<br/><br/></td></tr>
<tr>
<td>
Visible<br/><br/></td><td>
Specifies whether the item is visible.<br/><br/></td></tr>
<tr>
<td>
Alignment<br/><br/></td><td>
Sets the alignment of the item within the ToolStripEx. They can be set to beginning (Left) or end (Right) of the ToolStripEx control.<br/><br/></td></tr>
<tr>
<td>
AutoSize<br/><br/></td><td>
Specifies whether the item should size itself based on its image and text.<br/><br/></td></tr>
<tr>
<td>
MarqueeAnimationSpeed<br/><br/></td><td>
Specifies the speed of the marquee animation in milliseconds. The default value is 100 Milliseconds.<br/><br/></td></tr>
<tr>
<td>
Maximum<br/><br/></td><td>
UpperBound Range of the ProgressBar. Default value is 100.<br/><br/></td></tr>
<tr>
<td>
Minimum<br/><br/></td><td>
LowerBound Range of the ProgressBar. Default value is 0.<br/><br/></td></tr>
<tr>
<td>
Step<br/><br/></td><td>
The amount to increment the current value of the control when PerformStep() method is called. Default value is 10.<br/><br/></td></tr>
<tr>
<td>
Value<br/><br/></td><td>
The current value for the ProgressBar, in the range specified by the minimum and maximum properties. Default value is 0.<br/><br/></td></tr>
</table>

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
PerformStep()<br/><br/></td><td>
Advances the current position of the progressbar by the value specified in ToolStripProgressBar.Step property.<br/><br/></td></tr>
</table>

### ToolTip Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
AutoToolTip<br/><br/></td><td>
When set to true, will display the text set in the Text property as the item's tooltip.<br/><br/>When set to false, will display the text set in the ToolTipText property.<br/><br/></td></tr>
<tr>
<td>
ToolTipText<br/><br/></td><td>
Sets the text for the tooltip when AutoToolTip is set to false.<br/><br/></td></tr>
</table>

### RTL Support

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
RightToLeft<br/><br/></td><td>
Indicates whether the item should draw right to left for RTL languages.<br/><br/></td></tr>
<tr>
<td>
RightToLeftLayout<br/><br/></td><td>
Indicates whether the control layout is right to left.<br/><br/></td></tr>
</table>
