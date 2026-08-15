---
layout: post
title: How to Remove Default Selection from Windows Forms AutoComplete Dropdown
description: Remove the default selection from a Syncfusion® Windows Forms AutoComplete dropdown using event handling and selection settings.
platform: WindowsForms
control: Tools
documentation: ug
---



# How to Remove Default Selection from Windows Forms AutoComplete Dropdown

To remove the default selection in AutoComplete dropdown, set SelectedIndex property to _-1_ inside the DropdownDisplayed event of the AutoComplete control as follows.



{% highlight C# %}


private void autoComplete1_DropDownDisplayed(object sender, EventArgs e)

{

    this.autoComplete1.SelectedIndex = -1;

}
{% endhighlight %}





{% highlight vbnet %}




Private Sub autoComplete1_DropDownDisplayed(ByVal sender As Object, ByVal e As EventArgs)

    Me.autoComplete1.SelectedIndex = -1

End Sub
{% endhighlight %}