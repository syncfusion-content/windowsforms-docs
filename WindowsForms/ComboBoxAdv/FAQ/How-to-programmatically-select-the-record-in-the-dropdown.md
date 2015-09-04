---
layout: post
title: How-to-programmatically-select-the-record-in-the-d
description: how to programmatically select the record in the dropdown that matches the text typed in comboboxadv?
platform: windowsforms
control: ComboBoxAdv
documentation: ug
---

# How to programmatically select the record in the dropdown that matches the text typed in ComboBoxAdv?

You can handle the DropDown event of the ComboBoxAdv control and set it as shown in the following code example.



{% highlight c# %}




//ComboBoxAdv dropdown event

        private void comboBoxAdv1_DropDown(object sender, System.EventArgs e)

        {

            this.comboBoxAdv1.ListBox.SelectedItem = this.comboBoxAdv1.TextBox.Text;

        }

{% endhighlight %}

{% highlight vbnet %}




'ComboBoxAdv dropdown event

        Private Sub comboBoxAdv1_DropDown(ByVal sender As Object, ByVal e As System.EventArgs)

            Me.comboBoxAdv1.ListBox.SelectedItem = Me.comboBoxAdv1.TextBox.Text

        End Sub


{% endhighlight %}


