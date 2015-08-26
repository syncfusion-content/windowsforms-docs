---
layout: post
title: How to perform text drag-and-drop operation between a GroupView and a TextEditor control
description: Frequently Asked Questions
platform: windowsforms
control: Navigation Package
documentation: ug
---
## How to perform text drag-and-drop operation between a GroupView and a TextEditor control

You could perform text drag-and-drop operation between a TextEditor control like RichTextBox and GroupView by handling the GroupView's DragEnter and DragLeave events as shown below.

{% highlight C# %}  

string draggedtext = "";

// Get the text to be dragged. 

private void groupView1_DragEnter(object sender, System.Windows.Forms.DragEventArgs e) 

{  

this.draggedtext = e.Data.GetData(typeof(string)) as string; 

} 

// Drop the selected text in the GroupView Item.

private void groupView1_DragLeave(object sender, System.EventArgs e) 

{  

Point pt = this.groupView1.PointToClient(Control.MousePosition); 

if (this.groupView1.ClientRectangle.Contains(pt)) 

{ 

if (this.draggedtext != "") 

{ 

GroupViewItem gvi = new GroupViewItem(); 

gvi.Text = this.draggedtext; 

this.groupView1.GroupViewItems.Add(gvi); 

} 

} 

this.draggedtext = ""; 

} 

{% endhighlight %}



{% highlight vbnet %} 

Dim draggedtext As String = ""

' Get the text to be dragged.

Private Sub groupView1_DragEnter(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

Me.draggedtext = e.Data.GetData(Type.GetType(String)) as String 

End Sub

' Drop the selected text in the GroupView Item.

Private Sub groupView1_DragLeave(ByVal sender As Object, ByVal e As System.EventArgs)

Dim pt As Point = Me.groupView1.PointToClient(Control.MousePosition)

If Me.groupView1.ClientRectangle.Contains(pt) Then

If Me.draggedtext.Equals("") Then

Else

Dim gvi As New GroupViewItem()

gvi.Text = Me.draggedtext

Me.groupView1.GroupViewItems.Add(gvi)

End If

Me.draggedtext = ""

End Sub

{% endhighlight %}