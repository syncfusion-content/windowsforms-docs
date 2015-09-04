---
layout: post
title: How-to-Disable-Clipboard-Cut-Copy-or-Paste-in-a-Grid
description: how to disable clipboard cut, copy, or paste in a grid
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Disable Clipboard Cut, Copy, or Paste in a Grid

### Introduction

If you want to conditionally disable support, handle ClipboardCanCut, ClipboardCanCopy, or ClipboardCanPaste events and cancel the events by setting e.Handled to True and e.Result to False under the desired conditions. 

#### Example

To completely turn off support, set this property.

{% highlight c# %}



//Completely turns off  Clipboard cut, copy, or paste.

this.grid.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled;


{% endhighlight %}

{% highlight vbnet %}



'Completely turns off  Clipboard cut, copy, or paste.

Me.grid.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled


{% endhighlight %}

Here are some code samples.

{% highlight c# %}



//Subscribes to the event.

this.gridControl1.ClipboardCanPaste += new GridCutPasteEventHandler(this.gridControl1_ClipboardCanPaste);



//Handles ClipBoardCanPaste event to disable Paste operation.

private void gridControl1_ClipboardCanPaste(object sender, GridCutPasteEventArgs e) 

    { 

          if(someCondition)

          {

               e.Handled = true; 



//Sets Result Property to False to disable the process.

               e.Result = false; 

          }

    } 

{% endhighlight %}


{% highlight vbnet %}



'Handles ClipBoardCanPaste event to disable Paste operation.

 Private Sub gridControl1_ClipboardCanPaste(sender As Object, _e As GridCutPasteEventArgs) _Handles GridControl1.ClipboardCanPaste

        If someCondition Then

            e.Handled = True



'Sets Result Property to False to disable the process.

            e.Result = False

        End If



'GridControl1_ClipboardCanPaste.

    End Sub 



{% endhighlight %}
