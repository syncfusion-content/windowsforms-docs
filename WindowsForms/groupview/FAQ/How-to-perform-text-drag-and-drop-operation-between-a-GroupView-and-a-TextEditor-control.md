---
layout: post
title: How to perform text drag-and-drop operation between a GroupView and a TextEditor control | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupView
documentation: ug
---
# How to perform text drag-and-drop operation between a GroupView and a TextEditor control

You could perform text drag-and-drop operation between a TextEditor control like RichTextBox and GroupView by handling the GroupView's DragEnter and DragLeave events as shown below.

{% tabs %}

{% highlight C# %}  

string dragged = "";

// Get the text to be dragged. 

private void groupView1_DragEnter(object sender, System.Windows.Forms.DragEventArgs e) 

{  

this.dragged = e.Data.GetData(typeof(string)) as string; 

}

// Drop the selected text in the GroupView Item.

private void groupView1_DragLeave(object sender, System.EventArgs e) 

{  

Point pt = this.groupView1.PointToClient(Control.MousePosition); 

if (this.groupView1.ClientRectangle.Contains(pt)) 

{ 

if (this.dragged != "") 

{ 

GroupViewItem item = new GroupViewItem(); 

item.Text = this.dragged; 

this.groupView1.GroupViewItems.Add(item); 

} 

} 

this.dragged = ""; 

} 

{% endhighlight %}



{% highlight VB %} 

Dim dragged As String = ""

' Get the text to be dragged.

Private Sub groupView1_DragEnter(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

Me.dragged = e.Data.GetData(Type.GetType(String)) as String 

End Sub

' Drop the selected text in the GroupView Item.

Private Sub groupView1_DragLeave(ByVal sender As Object, ByVal e As System.EventArgs)

Dim pt As Point = Me.groupView1.PointToClient(Control.MousePosition)

If Me.groupView1.ClientRectangle.Contains(pt) Then

If Me.dragged.Equals("") Then

Else

Dim item As New GroupViewItem()

item.Text = Me.dragged

Me.groupView1.GroupViewItems.Add(item)

End If

Me.dragged = ""

End Sub

{% endhighlight %}

{% endtabs %}