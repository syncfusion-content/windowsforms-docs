---
layout: post
title: How-to-Capture-Mouse-and-Key-Events-When-the-Text-box-cell-is-in-an-active-state
description: how to capture mouse and key events when the text box cell is in an active state
platform: windowsforms
control: Grid
documentation: ug
---

# How to Capture Mouse and Key Events When the Text Box Cell is in an Active State

### Introduction

The embedded text box control gets the mouse actions while the text box is active. You can subscribe to the embedded text box's events inside a cell by accessing it through the cell's renderer. 

#### Example

{% highlight c# %}



 private void Form1_Load(object sender, System.EventArgs e)

    {

//Creates TextBoxCellRenderer object.

        GridTextBoxCellRenderer tbr = (GridTextBoxCellRenderer) this.grid.CellRenderers["TextBox"];



//Handle Renderer.TextBox.MouseDown to capture mouse events. 

        tbr.TextBox.MouseDown += new MouseEventHandler(textbox_MouseDown);



//Handle Renderer.TextBox.KeyUp to capture key events.

        tbr.TextBox.KeyUp += new KeyEventHandler(textBox_KeyUp);

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

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)



'Creates TextBoxCellRenderer object.

        Dim tbr As GridTextBoxCellRenderer = CType(Me.grid.CellRenderers("TextBox"), GridTextBoxCellRenderer)



'Handle Renderer.TextBox.MouseDown to capture mouse events.

        AddHandler tbr.TextBox.MouseDown, AddressOf textbox_MouseDown

        AddHandler tbr.TextBox.KeyUp, AddressOf textBox_KeyUp



'Form1_Load.

    End Sub 



    Private Sub textbox_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)

        Console.WriteLine("textbox_MouseDown")



'Form1_Load.

    End Sub X



    Private Sub textBox_KeyUp(ByVal sender As Object, ByVal e As KeyEventArgs)

        Console.WriteLine("textBox_KeyUp")



'TextBox_KeyUp.

End Sub 


{% endhighlight %}

