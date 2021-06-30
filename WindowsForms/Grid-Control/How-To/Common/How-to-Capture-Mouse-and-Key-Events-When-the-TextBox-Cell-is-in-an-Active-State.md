---
layout: post
title: Capture Mouse and Key Events in Windows Forms GridControl | Syncfusion
description: Learn here all about how to capture mouse and key events when the text box cell is in an active state of Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# Capture Mouse and Key Events in Windows Forms GridControl

## How to Capture Mouse and Key Events When the Text Box Cell is in an Active State

### Introduction

The embedded text box control gets the mouse actions while the text box is active. You can subscribe to the embedded text box's events inside a cell by accessing it through the cell's renderer. 

{% tabs %}
{% highlight c# %}

 private void Form1_Load(object sender, System.EventArgs e)
{
    //Creates TextBoxCellRenderer object.
    GridTextBoxCellRenderer textBoxCellRenderer = (GridTextBoxCellRenderer) this.grid.CellRenderers["TextBox"];
    
    //Handle Renderer.TextBox.MouseDown to capture mouse events. 
    textBoxCellRenderer.TextBox.MouseDown += new MouseEventHandler(textbox_MouseDown);
    
    //Handle Renderer.TextBox.KeyUp to capture key events.
    textBoxCellRenderer.TextBox.KeyUp += new KeyEventHandler(textBox_KeyUp);

}

private void textbox_MouseDown(object sender, MouseEventArgs e)
{
    Console.WriteLine("textbox_MouseDown");
}

private void textBox_KeyUp(object sender, KeyEventArgs e)
{
    Console.WriteLine("textBox_KeyUp");
}

{% endhighlight %}

{% highlight vb %}

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    'Creates TextBoxCellRenderer object.
    Dim textBoxCellRenderer As GridTextBoxCellRenderer = CType(Me.grid.CellRenderers("TextBox"), GridTextBoxCellRenderer)

    'Handle Renderer.TextBox.MouseDown to capture mouse events.
    AddHandler textBoxCellRenderer.TextBox.MouseDown, AddressOf textbox_MouseDown
    AddHandler textBoxCellRenderer.TextBox.KeyUp, AddressOf textBox_KeyUp

'Form1_Load.
End Sub 

Private Sub textbox_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
    Console.WriteLine("textbox_MouseDown")
End Sub 
	
Private Sub textBox_KeyUp(ByVal sender As Object, ByVal e As KeyEventArgs)
    Console.WriteLine("textBox_KeyUp")    
End Sub 

{% endhighlight %}
{% endtabs %}
