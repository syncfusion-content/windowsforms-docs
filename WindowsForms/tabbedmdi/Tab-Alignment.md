---
layout: post
title: Tab Alignment in Windows Forms TabbedMDI control | Syncfusion®
description: Learn about Tab Alignment support in Syncfusion® Windows Forms TabbedMDI control, its elements and more details.
platform: windowsforms
control: TabbedMDIManager 
documentation: ug
---

# Tab Alignment in Windows Forms TabbedMDI

The tabs in the TabbedMDI layout can be aligned to the Top, Left, Right, and Bottom of the form using the [Alignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_Alignment) property. To access the Alignment property, you should use the TabControlAdded event. This event is fired to let the user configure the tab appearance and behavior.

1. Call the TabControlAdded event in the form's constructor.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.TabControlAdded += new TabbedMDITabControlEventHandler(tabbedMDIManager_TabControlAdded);


{% endhighlight %}

{% highlight VB %}

AddHandler tabbedMDIManager.TabControlAdded, AddressOf tabbedMDIManager_TabControlAdded

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. Set the Alignment property of Tab Control using the TabbedMDITabControlEventArgs.

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}

private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

{

args.TabControl.Alignment=TabAlignment.Bottom;

}

{% endhighlight %}

{% highlight VB %}

Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

		args.TabControl.Alignment = TabAlignment.Bottom

		End Sub


{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}


![Tabs alignment](Tab-Alignment_images/Tab-Alignment_img1.jpeg)



{% seealso %}

[MDI List](/windowsforms/tabbedmdi/mdi-list)

{% endseealso %}



