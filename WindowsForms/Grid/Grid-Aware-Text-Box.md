---
layout: post
title: Grid-Aware-Text-Box
description: grid aware text box
platform: WindowsForms
control: Grid
documentation: ug
---

# Grid Aware Text Box

This class is derived from the textbox and will allow you to bind it to the CurrentCell of either a Grid control or a Data Bound Grid. The standard use for such a text box is to provide a special edit bar for editing grid cells. This is similar to the FormulaBar in Excel. In Essential Grid's Formula Grid sample, a similar Formula Bar is implemented by using Grid Aware Text Box.

Drag the Grid Aware Text Box from your toolbox and drop it on a form along with either Grid control or DataBound Grid. Finally, in your Form_Load handler, add a call to GridAwareTextBox.WireGrid to bind Grid Aware Text Box to the grid. Here are some code samples that will show you how this is done.

{% highlight c#  %}
private void Form1_Load(object sender, System.EventArgs e){//Binds Grid Aware Text Box to grid.    this.gridAwareTextBox1.WireGrid(this.gridControl1);}
{% endhighlight   %}
{% highlight vbnet %}
Private Sub Form1_Load(sender As Object, e As System.EventArgs)'Binds Grid Aware Text Box to grid.Me.gridAwareTextBox1.WireGrid(Me.gridControl1)End Sub 
{% endhighlight   %}


