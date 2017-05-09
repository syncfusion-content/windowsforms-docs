---
layout: post
title: How-to-databind-a-CheckBoxAdv-to-an-SQL-database-if-the-corresponding-datatable-field-is-a-bit-field | WindowsForms | Syncfusion
description: how to databind a checkboxadv to an sql database if the corresponding datatable field is a bit field
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# How to data bind a CheckBoxAdv to an SQL database if the corresponding data table field is a bit field

The CheckBoxAdv's IntValue property can be used to data bind bit values as illustrated below.

{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)

{

// Using CheckBoxAdv's IntValue property for Data binding.

this.oleDbDataAdapter1.Fill(this.dataSet11.Table1);

}



this.checkBoxAdv1.DataBindings.Add("IntValue", this.dataSet11.Table1, "BitField");

{% endhighlight %}

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

' Using CheckBoxAdv's IntValue property for Data binding.

Me.oleDbDataAdapter1.Fill(Me.dataSet11.Table1)

End Sub



Me.checkBoxAdv1.DataBindings.Add("IntValue", Me.dataSet11.Table1, "BitField")

{% endhighlight %}

A sample which demonstrates how bit values are used to set the state of the CheckBoxAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_