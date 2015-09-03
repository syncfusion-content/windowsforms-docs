---
layout: post
title: How-to-databind-a-CheckBoxAdv-to-an-SQL-database-if-the-corresponding-datatable-field-is-boolean
description: how to databind a checkboxadv to an sql database if the corresponding datatable field is boolean
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# How to databind a CheckBoxAdv to an SQL database if the corresponding datatable field is boolean

The CheckBoxAdv's BoolValue property can be used to databind bool values as illustrated below.

{% highlight c# %}


private void Form1_Load(object sender, System.EventArgs e)

{

this.oleDbDataAdapter1.Fill(this.dataSet11.Table1);

}



// Using CheckBoxAdv's BoolValue property for Databinding.

this.checkBoxAdv1.DataBindings.Add("BoolValue", this.dataSet11.Table1, "CheckValue");

{% endhighlight %}

{% highlight vbnet %}


Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.oleDbDataAdapter1.Fill(Me.dataSet11.Table1)

End Sub



' Using CheckBoxAdv's BoolValue property for Databinding.

Me.checkBoxAdv1.DataBindings.Add("BoolValue", Me.dataSet11.Table1, "CheckValue")

{% endhighlight %}

![](FAQ_images/Overview_img627.jpeg)