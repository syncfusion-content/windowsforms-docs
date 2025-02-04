---
layout: post
title: How to identify the docking window which is currently being closed | WindowsForms | Syncfusion®
description: How to identify the docking window which is currently being closed
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to identify the docking window which is currently being closed?

This can be achieved by using the DockVisibilityChanged event which occurs after a control's DockVisibility state has changed.
The Control member of this event gets the control which is undergoing the visibility change.



{% tabs %}

{% highlight C# %}


//this event triggers when the control's visibility has changed. 

private void dockingManager1_DockVisibilityChanged(object sender, Syncfusion.Windows.Forms.Tools.DockVisibilityChangedEventArgs arg)

{

   //GetDockVisibility method gives the detail of the docked control visibility 

   if (this.dockingManager1.GetDockVisibility(arg.Control) == false)

   {

        //DockVisibilityChangedEventArgs instance arg holds the control being changed the visibility  

        MessageBox.Show(this.dockingManager1.GetDockLabel(arg.Control) + " " + " window is closed.");
   }

} 
{% endhighlight %}


{% highlight VB %}


'this event triggers when the control's visibility has changed. 

 Private Sub dockingManager1_DockVisibilityChanged(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockVisibilityChangedEventArgs) Handles  

 dockingManager1.DockVisibilityChanged()



 'GetDockVisibility method gives the detail of the docked control visibility 

  If Me.dockingManager1.GetDockVisibility(arg.Control) = False Then



      'DockVisibilityChangedEventArgs instance arg holds the control being changed the visibility  

      MessageBox.Show(Me.dockingManager1.GetDockLabel(arg.Control) + " " + " window is closed.")



  End If

 End Sub
{% endhighlight %}

{% endtabs %}



