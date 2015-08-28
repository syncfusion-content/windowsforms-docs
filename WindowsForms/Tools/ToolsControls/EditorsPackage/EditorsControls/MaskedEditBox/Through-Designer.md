---
layout: post
title: Through Designer
description: Creating MaskedEditBox
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Through Designer

The MaskedEditBox control provides full support for the Windows Forms designer. You can use the MaskedEditBox through the 
designer by following the below given steps.

1. Drag and drop the MaskedEditBox control onto your form from the controls toolbox.

![](MaskedEditBox-images/MarkedEditBox-img2.png)
Figure : MaskedEditBox in Toolbox


2. Set the MaskedEditBox.Mask property for the control. This property controls the behavior of the control at run time. If no 
mask is specified, the control will behave the same as a standard Windows Forms TextBox control.

![](MaskedEditBox-images/MarkedEditBox-img3.png)
Figure : MaskedEditBox created Through Designer

Examples of some common masks are,

_Table_ _326__: Masks Table_

<table>
<tr>
<td>
Mask</td><td>
Usage</td></tr>
<tr>
<td>
###-##-####</td><td>
US Social security number mask (the # symbol allows numeric entry only in that position and the - symbol is literal); Example 222-22-2222.</td></tr>
<tr>
<td>
(###) ### ####</td><td>
US Telephone number mask; Example (919) 481 1974.</td></tr>
<tr>
<td>
##/##/####</td><td>
Short date mask; Example 04/14/2005.</td></tr>
<tr>
<td>
##:##</td><td>
Short time mask; Example 12:24.</td></tr>
<tr>
<td>
>?<????????????</td><td>
First name or last name; The first letter is uppercase and the other letters are all lowercase; Example: Syncfusion.</td></tr>
</table>