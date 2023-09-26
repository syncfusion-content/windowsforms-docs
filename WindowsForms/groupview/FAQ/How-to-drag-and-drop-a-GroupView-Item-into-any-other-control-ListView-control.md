---
layout: post
title: Drag and drop a GroupViewItem | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupView
documentation: ug
---
# How to drag-and-drop a GroupView Item into any other control (ListView control)?

You can handle the GroupView's DragOver Event to get the selected GroupView Item and then handle the ListView control's [DragEnter](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.dragenter?redirectedfrom=MSDN&view=netframework-4.7.2) and [DragDrop](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.dragdrop?redirectedfrom=MSDN&view=netframework-4.7.2) events to drop the selected GroupView Item as a ListView item in the ListView control.

{% tabs %}

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

GroupViewItem groupItem = e.Data.GetData(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName) as GroupViewItem; str =groupItem.Text; imageIndex = groupItem.ImageIndex; 

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



{% highlight VB %} 

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

Dim groupItem As GroupViewItem = TryCast(e.Data.GetData(Syncfusion.Windows.Forms.Tools.GroupView.GroupViewFormatName), GroupViewItem)

str = groupItem.Text

imageIndex = groupItem.ImageIndex

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

{% endtabs %}