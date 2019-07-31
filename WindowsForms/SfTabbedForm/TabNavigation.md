---
layout: post
title: Tab Navigation | Tabbed Form | WinForms | Syncfusion
description: This section explains about the navigation controls in SfTabbedForm.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Tab Navigation

Tabbed Form consist of the set of built-in controls such as first tab,last tab,dropdown etc which is used to navigate through the [TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~TabPages.html). The navigation controls can be added to the tabbed form using the [TabbedFormControl.TabPrimitiveMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabPrimitiveMode.html) property.

{% tabs %}
{% highlight c# %}
tabbedFormControl.TabPrimitiveMode = TabPrimitiveMode.DropDown | TabPrimitiveMode.FirstTab | TabPrimitiveMode.LastTab | TabPrimitiveMode.NextTab | TabPrimitiveMode.PreviousTab;
{% endhighlight %}
{% highlight vb %}
tabbedFormControl.TabPrimitiveMode = TabPrimitiveMode.DropDown Or TabPrimitiveMode.FirstTab Or TabPrimitiveMode.LastTab Or TabPrimitiveMode.NextTab Or TabPrimitiveMode.PreviousTab
{% endhighlight %}
{% endtabs %}  

![tabbed form](TabPrimitives_images/TabPrimitives_images_img1.gif)

## TabPrimitiveClick event

[TabPrimitiveClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~TabPrimitiveClick_EV.html) event occurs while clicking the navigation button. The following [TabPrimitiveClickEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabPrimitiveClickEventArgs_properties.html) properties provide information specific to this event.

{% tabs %}
{% highlight c# %}

this.tabbedFormControl.TabPrimitiveClick += TabbedFormControl_TabPrimitiveClick;

private void TabbedFormControl_TabPrimitiveClick(object sender, TabPrimitiveClickEventArgs e)
{
    Console.WriteLine("TabPrimitive Type:" + e.TabPrimitive.TabPrimitiveType);
}

{% endhighlight %}
{% highlight vb %}

Private Me.tabbedFormControl.TabPrimitiveClick += AddressOf TabbedFormControl_TabPrimitiveClick

Private Sub TabbedFormControl_TabPrimitiveClick(ByVal sender As Object, ByVal e As TabPrimitiveClickEventArgs)
	Console.WriteLine("TabPrimitive Type:" & e.TabPrimitive.TabPrimitiveType)
End Sub

{% endhighlight %}
{% endtabs %}


