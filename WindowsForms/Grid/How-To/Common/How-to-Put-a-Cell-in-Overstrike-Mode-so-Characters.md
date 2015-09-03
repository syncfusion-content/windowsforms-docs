---
layout: post
title: How-to-Put-a-Cell-in-Overstrike-Mode-so-Characters
description: how to put a cell in overstrike mode so characters get replaced instead of inserted as you type
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Put a Cell in Overstrike Mode so Characters get Replaced instead of Inserted as you type

### Introduction

This can be achieved by using TextBox.SelectionLength property of GridTextBoxCellRenderer in CurrentCellKeyPress event. The idea to achieve this is by selecting one character when a key is pressed, and also neglecting the Backspace key.

#### Example

{% highlight c# %}



private void gridControl1_CurrentCellKeyPress(object sender, KeyPressEventArgs e)

{

      GridTextBoxCellRenderer cr = this.gridControl1.CurrentCell.Renderer as GridTextBoxCellRenderer;



      if(e.KeyChar != Convert.ToChar(Keys.Back) 

       && cr.TextBox.SelectionLength == 0)

     {



//Programmatically selects One char.

        cr.TextBox.SelectionLength = 1; 

     }



}



private void gridControl1_CurrentCellKeyDown(object sender, System.Windows.Forms.KeyEventArgs e)

{

     if(e.KeyCode == Keys.Back) 

     {



//Translates the Backspace key to a left arrow key.

          SendKeys.Send("{LEFT}"); 

          e.Handled = true;

     }

}


{% endhighlight %}

{% highlight vbnet %}



Private Sub gridControl1_CurrentCellKeyPress(ByVal sender As Object, ByVal e As KeyPressEventArgs)



    Dim cr As GridTextBoxCellRenderer = CType(IIf(TypeOf Me.gridControl1.CurrentCell.Renderer Is GridTextBoxCellRenderer, Me.gridControl1.CurrentCell.Renderer, Nothing), GridTextBoxCellRenderer)



'Programmatically selects One char.

        If e.KeyChar &lt;&gt; Convert.ToChar(Keys.Back) AndAlso cr.TextBox.SelectionLength = 0 Then

cr.TextBox.SelectionLength = 1 



        End If



End Sub



Private Sub gridControl1_CurrentCellKeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms. KeyEventArgs)

   If e.KeyCode = Keys.Back Then



'Translates the Backspace key to a left arrow key.

      SendKeys.Send("{LEFT}") 

      e.Handled = True

   End If

End Sub



{% endhighlight %}
