---
layout: post
title: How to hide a child button of a ButtonEdit control
description: How to hide a child button of a ButtonEdit control
platform: WindowsForms
control: Tools
documentation: ug
---

# How to hide a child button of a ButtonEdit control?

By calling the ButtonEdit.HideButton method, we can hide a child button. 

Table 151: Methods Table

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
HideButton</td><td>
Indicates whether a child button is hidden or visible. The parameters are,
btnIndex - Specifies the index of the button.
visible - Specifies the visibility of the button. 
It can be true or false. 
If true, the button will be visible and if false, 
the button will not be visible.</td></tr>
</table>


{%highlight c#%}



this.buttonEdit1.HideButton(0, false);

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEdit1.HideButton(0, False)

{%endhighlight%}


