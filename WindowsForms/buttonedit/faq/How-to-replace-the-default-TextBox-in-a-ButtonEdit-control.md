---
layout: post
title: Replacing default TextBox in ButtonEdit | WindowsForms | Syncfusion
description: This section gives detailed description on how to replace default TextBox in the ButtonEdit control.
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Replace the Default TextBox in a ButtonEdit Control

You can replace the default TextBox of the [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control with other TextBox by doing the following steps.

1. Drag a ButtonEdit control and a [PercentTextBox](https://help.syncfusion.com/windowsforms/percent-textbox/overview) control that you would like to replace with the default TextBox of the ButtonEdit control.

![PercentageTextBox in ButtonEdit](FAQ_images/FAQ_img1.png)

2. From the property window of ButtonEdit, select the PercentTextBox to be the TextBox control of the ButtonEdit control. 

{% capture codesnippet1 %}
{% tabs %}
{%highlight c#%}

buttonEdit.TextBox = new PercentTextBox();

{%endhighlight%}

{%highlight vb%}

buttonEdit.TextBox = new PercentTextBox()

{%endhighlight%}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

![Adding PercentageTextBox](FAQ_images/FAQ_img2.png) 

3. From the same properties window, you can set the percent properties for the ButtonEdit control.

![PercentageTextBox properties](FAQ_images/FAQ_img3.png) 


 
