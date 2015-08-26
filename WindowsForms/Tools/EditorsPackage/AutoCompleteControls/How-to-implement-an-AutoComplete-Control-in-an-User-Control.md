---
layout: post
title: How to implement an AutoComplete Control in an User Control
description: How to implement an AutoComplete Control in an User Control
platform: WindowsForms
control: Tools
documentation: ug
---



# How to implement an AutoComplete Control in an User Control?

AutoComplete control can be used in an UserControl by setting the parent form of the User Control to the parent form property of the AutoComplete Control. 



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