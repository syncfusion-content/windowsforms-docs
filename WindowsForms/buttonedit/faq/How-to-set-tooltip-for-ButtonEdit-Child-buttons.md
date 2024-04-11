---
layout: post
title: Set tooltip for ButtonEdit Child buttons | WindowsForms | Syncfusion
description: Learn here all about how to set tooltip for buttonedit child button in Syncfusion Windows Forms ButtonEdit control, it's elements and more.
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Set Tooltip for ButtonEdit Child Buttons in Windows Forms

 To set tooltip for a child button in a [ButtonEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html) control, drag and drop a [SfToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SfToolTip.html) control from the toolbox. Text for tooltip is set using the extender property of the particular child button in Properties window.

 ![Tooltip for ButtonEdit in WinForms.](faq_images/winforms-buttonedit-tooltip.png) 

You can also set the Tooltip for ButtonEdit control programmatically using its [SetToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SfToolTip.html#Syncfusion_Windows_Forms_SfToolTip_SetToolTip_System_Windows_Forms_Control_System_String_) method of SfToolTip control.

{% tabs %}
{%highlight c#%}

toolTip.SetToolTip(buttonEdit.Buttons[0], "Child button toolTip");

{%endhighlight%}

{%highlight vb%}

toolTip.SetToolTip(buttonEdit.Buttons[0], "Child button toolTip")

{%endhighlight%}
{% endtabs %}

 ![Settooltip for ButtonEdit in WinForms.](faq_images/winforms-buttonedit-set-tooltip.png) 

