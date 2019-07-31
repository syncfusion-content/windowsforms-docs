---
layout: post
title: Tab Selection | Tabbed Form | WinForms | Syncfusion
description: This section explains about programmatic selection of tab in SfTabbedForm.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Tab Selection

Tab selection can be done programmatically using the [TabbedFormControl.SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedIndex.html) and [TabbedFormControl.SelectedTab](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedTab.html) properties.

{% tabs %}
{% highlight c# %}

this.tabbedFormControl.SelectedIndex = 1;

or

this.tabbedFormControl.SelectedTab = tabPageAdv2;

{% endhighlight %}
{% highlight vb %}

Me.tabbedFormControl.SelectedIndex = 1

or

Me.tabbedFormControl.SelectedTab = tabPageAdv2

{% endhighlight %}
{% endtabs %}

![Tabbed form](Tab-Selection-images/Tab-Selection-images_img1.png)

## Events

### SelectedIndexChanging event 

The [SelectedIndexChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedIndexChanging_EV.html) event occurs when changing the [SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedIndex.html) or [SelectedTab](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedTab.html) of the [TabbedFormControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedForm~TabbedFormControl.html). The [SelectedIndexChangingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SelectedIndexChangingEventArgs_properties.html) properties provide information specific to this event. Tab selection can be restricted by setting args.Cancel to `true`.

{% tabs %}
{% highlight c# %}

this.tabbedFormControl.SelectedIndexChanging += TabbedFormControl_SelectedIndexChanging;

private void TabbedFormControl_SelectedIndexChanging(object sender, SelectedIndexChangingEventArgs args)
{
    if (this.tabbedFormControl.SelectedIndex == 2)
    {
        args.Cancel = true;
    }
}

{% endhighlight %}
{% highlight vb %}

Private Me.tabbedFormControl.SelectedIndexChanging += AddressOf TabbedFormControl_SelectedIndexChanging

Private Sub TabbedFormControl_SelectedIndexChanging(ByVal sender As Object, ByVal args As SelectedIndexChangingEventArgs)
	If Me.tabbedFormControl.SelectedIndex = 2 Then
		args.Cancel = True
	End If
End Sub

{% endhighlight %}
{% endtabs %}

### SelectedIndexChanged event 

The [SelectedIndexChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedIndexChanged_EV.html) event occurs when the [SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedIndex.html) or [SelectedTab](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedFormControl~SelectedTab.html) of the [TabbedFormControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SfTabbedForm~TabbedFormControl.html) is changed. 

{% tabs %}
{% highlight c# %}

this.tabbedFormControl.SelectedIndexChanged += TabbedFormControl_SelectedIndexChanged;

private void TabbedFormControl_SelectedIndexChanged(object sender, EventArgs e)
{
    var tabs = tabbedFormControl.Tabs.OfType<TabPageAdv>();
    foreach (var tab in tabs)
    {
        if (this.tabbedFormControl.SelectedTab == tab)
            Console.WriteLine("Selected Tab:" + tab.Text);
    }
}

{% endhighlight %}
{% highlight vb %}

Private Me.tabbedFormControl.SelectedIndexChanged += AddressOf TabbedFormControl_SelectedIndexChanged

Private Sub TabbedFormControl_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
	Dim tabs = tabbedFormControl.Tabs.OfType(Of TabPageAdv)()
	For Each tab In tabs
		If Me.tabbedFormControl.SelectedTab Is tab Then
			Console.WriteLine("Selected Tab:" & tab.Text)
		End If
	Next tab
End Sub

{% endhighlight %}
{% endtabs %}
