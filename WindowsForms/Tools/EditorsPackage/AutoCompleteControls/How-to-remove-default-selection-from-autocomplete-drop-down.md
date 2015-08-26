---
layout: post
title: How to remove default selection from autocomplete drop-down
description: How to remove default selection from autocomplete drop-down
platform: WindowsForms
control: Tools
documentation: ug
---



# How to remove default selection from autocomplete drop-down?

To remove the default selection in autocomplete drop-down, set SelectedIndex property to _-1_ inside DropdownDisplayed event of the autocomplete control as follows.



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