---
layout: post
title: GroupBar's Tag property | WindowsForms | Syncfusion
description: Frequently asked questions
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How to assign the currently selected GroupBar Item to the GroupBar's Tag property?

You could do so by handling the GroupBar’s [GroupBarItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html) event. Within this event handler, index into the GroupBar Items Collection using the GroupBar's [SelectedItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_SelectedItem) property value, to get the currently selected GroupBar Item, and then assign it to the GroupBar’s [Tag](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k(System.Windows.Forms.Control.Tag)&rd=true) property.

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
