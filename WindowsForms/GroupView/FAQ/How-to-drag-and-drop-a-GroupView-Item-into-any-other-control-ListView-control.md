---
layout: post
title: How to drag-and-drop a GroupView Item into any other control (ListView control) | Windows Forms | Syncfusion
description: Frequently Asked Questions
platform: windowsforms
control: GroupView
documentation: ug
---
# How to drag-and-drop a GroupView Item into any other control (ListView control)

You can handle the GroupView's DragOver Event to get the selected GroupView Item and then handle the ListView control's DragEnter and DragDrop events to drop the selected GroupView Item as a ListView item in the ListView control.

The following code sample shows how this can be done.

{% highlight C# %}  

private String str = String.Empty; 

private int imageIndex = -1; 

// Get the selected GroupView Item.

private void groupView1_DragOver(object sender, System.Windows.Forms.DragEventArgs e) 

{ 

if(e.Data.GetDataPresent(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName)) 

{ 

if(this.radioButton1.Checked) 

e.Effect = DragDropEffects.Move; 

else 

e.Effect = DragDropEffects.Copy; 

GroupViewItem gbItem = e.Data.GetData(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName) as GroupViewItem; str = gbItem.Text; imageIndex = gbItem.ImageIndex; 

}  

else  

e.Effect = DragDropEffects.None; 

} 

// Move or Copy the selected GroupView Item.

private void listView1_DragEnter(object sender, System.Windows.Forms.DragEventArgs e) 

{ 

if(e.Data.GetDataPresent(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName)) 

{ 

if(this.radioButton1.Checked) 

e.Effect = DragDropEffects.Move; 

else 

e.Effect = DragDropEffects.Copy; 

} 

else 

e.Effect = DragDropEffects.None; 

} 

// Drop the selected GroupView Item.

private void listView1_DragDrop(object sender, System.Windows.Forms.DragEventArgs e) 

{ 

ListViewItem item = new ListViewItem(str);  

item.ImageIndex = imageIndex; 

this.listView1.Items.Add(item); 

} 

{% endhighlight %}



{% highlight vbnet %} 

Private str As String = [String].Empty

Private imageIndex As Integer = -1

' Get the selected GroupView Item.

Private Sub groupView1_DragOver(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

If e.Data.GetDataPresent(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName) Then

If Me.radioButton1.Checked Then

e.Effect = DragDropEffects.Move

Else

e.Effect = DragDropEffects.Copy

End If

Dim gbItem As GroupViewItem = TryCast(e.Data.GetData(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName), GroupViewItem)

str = gbItem.Text

imageIndex = gbItem.ImageIndex

Else

e.Effect = DragDropEffects.None

End If

End Sub

' Move or Copy the selected GroupView Item.

Private Sub listView1_DragEnter(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

If e.Data.GetDataPresent(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName) Then

If Me.radioButton1.Checked Then

e.Effect = DragDropEffects.Move

Else

e.Effect = DragDropEffects.Copy

End If

Else

e.Effect = DragDropEffects.None

End If

End Sub

' Drop the selected GroupView Item.

Private Sub listView1_DragDrop(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

Dim item As New ListViewItem(str)

item.ImageIndex = imageIndex

Me.listView1.Items.Add(item)

End Sub

{% endhighlight %}