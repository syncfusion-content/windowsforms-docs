---
layout: post
title: Ribbon-Button| WindowsForms | Syncfusion
description:  ribbon button
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon Button

ToolStripButton can be added to a ToolStripEx directly or through a panel. 

![](Ribbon-Button_images/Ribbon-Button_img1.jpeg)


The below properties controls the appearance and behavior of the ToolStripButton.

## Foreground Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Text<br/><br/></td><td>
Sets the Text for the ToolStripButton. This text will be displayed, only if the DisplayStyle is Text or ImageAndText.<br/><br/></td></tr>
<tr>
<td>
Font<br/><br/></td><td>
Sets the font style for the display text.<br/><br/></td></tr>
<tr>
<td>
ForeColor<br/><br/></td><td>
Sets the fore color for the display text.<br/><br/></td></tr>
<tr>
<td>
TextAlign<br/><br/></td><td>
Specifies the alignment of the text in the item. The options are,<br/><br/>TopLeft,<br/><br/>TopCenter, <br/><br/>TopRight,<br/><br/>MiddleLeft,<br/><br/>MiddleCenter, <br/><br/>MiddleRight,<br/><br/>BottomLeft, <br/><br/>BottomCenter and <br/><br/>BottomRight.<br/><br/></td></tr>
<tr>
<td>
TextDirection<br/><br/></td><td>
Specifies the direction of drawing the text. The direction are,<br/><br/>{{'__Horizontal__ '| markdownify }}- Text is placed horizontally,<br/><br/>{{'__Vertical90__ '| markdownify }}- Text is placed vertically and <br/><br/>{{'__Vertical270__ '| markdownify }}- Text is placed vertically at 270 degrees.<br/><br/></td></tr>
<tr>
<td>
TextImageRelation<br/><br/></td><td>
Specifies the relative location of the image to the text on the item. The options are,<br/><br/>{{'__Overlay__ '| markdownify }}- Image and text shares the same space in the control,<br/><br/>{{'__ImageAboveText__ '| markdownify }}- Image will be placed above the text,<br/><br/>{{'__TextAboveImage__ '| markdownify }}- Text will be placed above the image,<br/><br/>{{'__ImageBeforeText__ '| markdownify }}- Image will be placed before the text and <br/><br/>{{'__TextBeforeImage__ '| markdownify }}- Text will be placed before the image.<br/><br/></td></tr>
</table>

## Image Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Image<br/><br/></td><td>
Sets the image for the item.<br/><br/></td></tr>
<tr>
<td>
ImageAlign<br/><br/></td><td>
Specifies the alignment of the image. The options are,<br/><br/>TopLeft, <br/><br/>TopCenter, <br/><br/>TopRight,<br/><br/>MiddleLeft,<br/><br/>MiddleCenter, <br/><br/>MiddleRight,<br/><br/>BottomLeft, <br/><br/>BottomCenter and<br/><br/>BottomRight.<br/><br/></td></tr>
<tr>
<td>
ImageScaling<br/><br/></td><td>
Specifies whether the image on the item will size to fit on the ToolStrip.<br/><br/></td></tr>
<tr>
<td>
ImageTransparentColor<br/><br/></td><td>
Sets the transparent color on the image, that supports transparency.<br/><br/></td></tr>
</table>

## Style Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
DisplayStyle<br/><br/></td><td>
Specifies how the image and text are rendered. The styles are,<br/><br/>{{'__Text__ '| markdownify }}- Displays only text,<br/><br/>{{'__Image__ '| markdownify }}- Displays only image,<br/><br/>{{'__ImageAndText__ '| markdownify }}- Displays image and text.<br/><br/></td></tr>
<tr>
<td>
Checked<br/><br/></td><td>
Indicates whether button is checked when the application loads.<br/><br/></td></tr>
<tr>
<td>
CheckState<br/><br/></td><td>
Specifies the check state. The different check states are,<br/><br/>Checked,<br/><br/>Unchecked and <br/><br/>Indeterminate.<br/><br/></td></tr>
<tr>
<td>
CheckOnClick<br/><br/></td><td>
Indicates whether the item should change its selected state when clicked.<br/><br/></td></tr>
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
</table>

## ToolTip Settings

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

## RTL Support

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
RightToLeftAutoMirrorImage<br/><br/></td><td>
Specifies whether image should mirror when RightToLeft is enabled for the item.<br/><br/></td></tr>
</table>
