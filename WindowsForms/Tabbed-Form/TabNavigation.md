---
layout: post
title: Tab Navigation in Tabbed Form for  Windows Form | Syncfusion
description: This section explains about the Tabbedform control for windows forms and navigation control in SfTabbedForm and more details.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Tab Navigation

Tabbed Form consists of a set of built-in navigation buttons such as first tab, last tab, and drop-down, which are used to navigate through the [TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~TabPages.html). The navigation controls can be added to the tabbed form using the [TabbedFormControl.TabPrimitiveMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabPrimitiveMode.html) property.

{% tabs %}
{% highlight c# %}
tabbedFormControl.TabPrimitiveMode = TabPrimitiveMode.DropDown | TabPrimitiveMode.FirstTab | TabPrimitiveMode.LastTab | TabPrimitiveMode.NextTab | TabPrimitiveMode.PreviousTab;
{% endhighlight %}
{% highlight vb %}
tabbedFormControl.TabPrimitiveMode = TabPrimitiveMode.DropDown Or TabPrimitiveMode.FirstTab Or TabPrimitiveMode.LastTab Or TabPrimitiveMode.NextTab Or TabPrimitiveMode.PreviousTab
{% endhighlight %}
{% endtabs %}  

![Winforms showing the tab navigation in tabbed form](TabPrimitives_images/TabPrimitives_images_img1.gif)

## TabPrimitiveClick event

The [TabPrimitiveClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~TabPrimitiveClick_EV.html) event occurs when clicking the navigation button. The [TabPrimitiveClickEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabPrimitiveClickEventArgs_properties.html) properties provide information specific to this event.

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


