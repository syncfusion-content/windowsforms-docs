---
layout: post
title: How to implement AutoComplete control in a User control | Windows Forms | Syncfusion
description: How to implement AutoComplete control in a User control
platform: windowsforms
control: Tools
documentation: ug
---



# How to implement AutoComplete control in a User control?

AutoComplete control can be used in a User control by setting the parent form of the User Control to the parent form property of the AutoComplete control. 



{% highlight C# %}

private void UserControl1_Load(object sender, System.EventArgs e) 

{  

this.autoComplete1.ParentForm = this.ParentForm;  

this.autoComplete1.DataSource = this.items; 

} 
{% endhighlight %}





{% highlight vbnet %}


Private Sub UserControl1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    Me.autoComplete1.ParentForm = Me.ParentForm

    Me.autoComplete1.DataSource = Me.items

End Sub
{% endhighlight %}