---
layout: post
title: Disable Clipboard Actions in Windows Forms GridControl | Syncfusion®
description: Disable clipboard cut, copy, or paste operations in Syncfusion® Windows Forms GridControl using clipboard flags and clipboard events and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Disable Clipboard Actions in Windows Forms GridControl

If you want to conditionally disable support, handle ClipboardCanCut, ClipboardCanCopy, or ClipboardCanPaste events and cancel the events by setting e.Handled to True and e.Result to False under the desired conditions. 

To completely turn off support, set this property.

{% tabs %}
{% highlight c# %}

//Completely turns off  Clipboard cut, copy, or paste.
this.grid.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled;

{% endhighlight %}

{% highlight vb %}

'Completely turns off  Clipboard cut, copy, or paste.
Me.grid.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled

{% endhighlight %}
{% endtabs %}

Here are some code samples.

{% tabs %}
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

{% highlight vb %}

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
{% endtabs %}