---
layout: post
title: Tab Selection in Windows Forms Tabbed Form control | Syncfusion
description: Learn about Tab Selection support in Syncfusion® Windows Forms Tabbed Form (SfTabbedForm) control and more details.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Tab Selection in Windows Forms Tabbed Form (SfTabbedForm)

Tab selection can be done programmatically using the [TabbedFormControl.SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html#Syncfusion_Windows_Forms_Tools_SfTabbedFormControl_SelectedIndex) or [TabbedFormControl.SelectedTab](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html#Syncfusion_Windows_Forms_Tools_SfTabbedFormControl_SelectedTab) properties.

{% tabs %}
{% highlight c# %}

this.tabbedFormControl.SelectedIndex = 1;

//or

this.tabbedFormControl.SelectedTab = tabPageAdv2;

{% endhighlight %}
{% highlight vb %}

Me.tabbedFormControl.SelectedIndex = 1

'or

Me.tabbedFormControl.SelectedTab = tabPageAdv2

{% endhighlight %}
{% endtabs %}

![Winforms showing applied the selection in  Tabbed form](Tab-Selection-images/Tab-Selection-images_img1.png)

## Events

### SelectedIndexChanging event 

The [SelectedIndexChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html) event occurs when changing the [SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html#Syncfusion_Windows_Forms_Tools_SfTabbedFormControl_SelectedIndex) or [SelectedTab](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html#Syncfusion_Windows_Forms_Tools_SfTabbedFormControl_SelectedTab) of the [TabbedFormControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedForm.html#Syncfusion_Windows_Forms_Tools_SfTabbedForm_TabbedFormControl). The [SelectedIndexChangingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SelectedIndexChangingEventArgs.html) properties provide information specific to this event. Tab selection can be restricted by setting `args.Cancel` to `true`.

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

The [SelectedIndexChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html) event occurs when the [SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html#Syncfusion_Windows_Forms_Tools_SfTabbedFormControl_SelectedIndex) or [SelectedTab](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedFormControl.html#Syncfusion_Windows_Forms_Tools_SfTabbedFormControl_SelectedTab) of the [TabbedFormControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SfTabbedForm.html#Syncfusion_Windows_Forms_Tools_SfTabbedForm_TabbedFormControl) is changed. 

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
