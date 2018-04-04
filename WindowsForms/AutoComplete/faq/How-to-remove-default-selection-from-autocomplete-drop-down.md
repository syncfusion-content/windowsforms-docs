---
layout: post
title: How to remove default selection from AutoComplete dropdown | WindowsForms | Syncfusion
description: How to remove default selection from AutoComplete dropdown
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Remove Default Selection from AutoComplete DropDown

To remove the default selection in AutoComplete dropdown, set SelectedIndex property to _-1_ inside the DropdownDisplayed event of the AutoComplete control as follows.

{% tabs %}
{% highlight C# %}

private void autoComplete1_DropDownDisplayed(object sender, EventArgs e)
{
    this.autoComplete1.SelectedIndex = -1;
}

{% endhighlight %}

{% highlight vb %}

Private Sub autoComplete1_DropDownDisplayed(ByVal sender As Object, ByVal e As EventArgs)
    Me.autoComplete1.SelectedIndex = -1
End Sub

{% endhighlight %}
{% endtabs %}
