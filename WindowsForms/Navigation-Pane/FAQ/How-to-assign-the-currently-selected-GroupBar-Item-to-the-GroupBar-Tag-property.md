---
layout: post
title: How to Assign the Selected Item to Tag in Windows Forms GroupBar
description: Assign the selected GroupBar item to the Tag property in Syncfusion® Windows Forms GroupBar control using selection events and more.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How to Assign the Selected Item to Tag in Windows Forms GroupBar

You could do so by handling the GroupBar’s [GroupBarItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html) event. Within this event handler, index into the GroupBar Items Collection using the GroupBar's [SelectedItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_SelectedItem) property value, to get the currently selected GroupBar Item, and then assign it to the GroupBar’s [Tag](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.tag?view=windowsdesktop-10.0) property.

{% tabs %}

{% highlight C# %}  

private void groupBar1_GroupBarItemSelected(object sender, System.EventArgs e) 

{ 

// Index into the GroupBar Items Collection using GroupBar.SelectedItem   

// as the index value, and assign it to GroupBar’s Tag property. 

this.groupBar1.Tag = this.groupBar1.GroupBarItems[this.groupBar1.SelectedItem]; 

} 

{% endhighlight %}



{% highlight VB %} 

Private Sub groupBar1_GroupBarItemSelected(ByVal sender As Object, ByVal e As System.EventArgs)

' Index into the GroupBarItems Collection using GroupBar.SelectedItem  

' as the index value, and assign it to GroupBar’s Tag property. 

Me.groupBar1.Tag = Me.groupBar1.GroupBarItems(Me.groupBar1.SelectedItem)

End Sub

{% endhighlight %}

{% endtabs %}
