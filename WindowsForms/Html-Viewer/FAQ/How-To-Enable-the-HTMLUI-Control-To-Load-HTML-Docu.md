---
layout: post
title: How-To-Enable-the-HTMLUI-Control-To-Load-HTML-Docu | WindowsForms | Syncfusion®
description: how to enable the htmlui control to load html documents that have been dragged onto the control?
platform: WindowsForms
control: HTML UI
documentation: ug
---

# How to enable the HTMLUI control to load HTML documents that have been dragged onto the control?

In order to enable the HTMLUI control to load HTML documents that have been dragged onto the control, you have to set the AllowDrop property of the HTMLUI control to `true`. This property helps in supporting the drag-and-drop operation in the HTMLUI control.

During the drag-and-drop operation, the file name of the document along with the location is collected, and when the mouse button is released, the specified document is loaded from the mentioned location through the LoadHTML method of the HTMLUI control.

{% tabs %}

{% highlight C# %}



//To support drag events to the control

this.htmluiControl1.AllowDrop = true;



//DragDrop and DragEnter events declaration

this.htmluiControl1.DragDrop += new System.Windows.Forms.DragEventHandler(this.htmluiControl1_DragDrop);

this.htmluiControl1.DragEnter += new System.Windows.Forms.DragEventHandler(this.htmluiControl1_DragEnter);



private void htmluiControl1_DragEnter(object sender, System.Windows.Forms.DragEventArgs e)

{

if(e.Data.GetDataPresent (DataFormats.FileDrop)) 

//Specifying the drop effect

e.Effect = DragDropEffects.All;

else 

e.Effect = DragDropEffects.None;

}



private void htmluiControl1_DragDrop(object sender, System.Windows.Forms.DragEventArgs e)

{

//Specifying the drop format and collecting the file name

string[] files = (string[])e.Data.GetData("FileDrop", false); 

foreach (string fileName in files) 

{ 

//Loading the specified file in to the HTMLUI control

this.htmluiControl1.LoadHTML(fileName);

}

}

{% endhighlight %}

{% highlight VB %}



'To support drag events to the control

Private Me.htmluiControl1.AllowDrop = True



'DragDrop and DragEnter events declaration

Private Me.htmluiControl1.DragDrop += New System.Windows.Forms.DragEventHandler(Me.htmluiControl1_DragDrop)

Private Me.htmluiControl1.DragEnter += New System.Windows.Forms.DragEventHandler(Me.htmluiControl1_DragEnter)



Private Sub htmluiControl1_DragEnter(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

If e.Data.GetDataPresent(DataFormats.FileDrop) Then

'Specifying the drop effect

e.Effect = DragDropEffects.All

Else

e.Effect = DragDropEffects.None

End If

End Sub



Private Sub htmluiControl1_DragDrop(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

'Specifying the drop format and collecting the file name

Dim files As String() = CType(e.Data.GetData("FileDrop", False), String())

For Each fileName As String In files

'Loading the specified file in to the HTMLUI control

Me.htmluiControl1.LoadHTML(fileName)

Next fileName

End Sub

{% endhighlight %}

{% endtabs %}