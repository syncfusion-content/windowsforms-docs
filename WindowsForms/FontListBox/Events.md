---
layout: post
title: Events
description: Events
platform: windowsforms
control: Editors Package
documentation: ug
---

# Events

SelectedIndexChanged event - This event is raised when the ListBox.SelectedIndex property is changed. 

The below code snippet, lets you set the selected font style, for a label, on selecting through a FontListBox, using SelectedIndexChanged event.

{%highlight c#%}



private void fontListBox1_SelectedIndexChanged(object sender, EventArgs e)

{

    this.label1.Font = new Font(this.fontListBox1.SelectedItem.ToString(), 11, FontStyle.Regular);

}


{%endhighlight%}

{%highlight vbnet%}

Private Sub fontListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    Me.label1.Font = New Font(Me.fontListBox1.SelectedItem.ToString(), 11, FontStyle.Regular)

End Sub

{%endhighlight%}