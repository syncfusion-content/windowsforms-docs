---
layout: post
title: How to get the docking group details | WindowsForms | Syncfusion®
description: Learn here about How to get the docking group details with Syncfusion® Essential Studio® Windows Forms DockingManager Control
platform: windowsforms
control: DockingManager
documentation: ug
---



# How to get the docking group details?

There is no concept of 'group' in Docking Manager and a tabbed group is just an intermediate state. However, if necessary, this can be determined by first ascertaining that the control is in a tabbed docking group, getting hold of the DockTabController, it’s DockTab and then iterating the DockTabPages. The DockHostClient member of each DockTabPage will reference the DockHostController that is associated with it. Once the controller is available, we can get the control through the HostControl property of DockHostController and use the control’s Controls[0] indexer to get the actual dockable control.

Follow the given steps to get the docking group.

1. Add three listbox, a button, and a docking manager to the form.
2. Set the EnableDocking on Docking Manager property to `true`.
3. Add the namespace Syncfusion.Windows.Forms.Tools in your application.
   
{% capture codesnippet1 %}   
{% tabs %}

{% highlight C# %}


using Syncfusion.Windows.Forms.Tools;


{% endhighlight %}

{% highlight VB %}


Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}	
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}


4. Tab the controls as shown below. 

Add the code given below in the button click event.

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}


Syncfusion.Windows.Forms.Tools.DockHost dockHost = this.listBox1.Parent as Syncfusion.Windows.Forms.Tools.DockHost; 

Syncfusion.Windows.Forms.Tools.DockHostController dockHostController = dockHost.InternalController as  Syncfusion.Windows.Forms.Tools.DockHostController;

// If ParentController is DockTabController the control will be in a tab.

if(dockHostController.ParentController is Syncfusion.Windows.Forms.Tools.DockTabController) 

{ 

       // Getting the DockTabControl from the DockTabController.

Syncfusion.Windows.Forms.Tools.DockTabControl dockTab = (dockHostController.ParentController as  Syncfusion.Windows.Forms.Tools.DockTabController).TabControl;



       // Iterating through the TabPages to get other controls in that tab.

       foreach(DockTabPage tabPage in dockTab.TabPages) 

       { 

           Control siblingControl = tabPage.dhcClient.HostControl.Controls[0];

           MessageBox.Show(siblingControl.Name);

       }

}
{% endhighlight %}


{% highlight VB %}


Dim dockHost As Syncfusion.Windows.Forms.Tools.DockHost = CType(IIf(TypeOf Me.listBox1.Parent Is Syncfusion.Windows.Forms.Tools.DockHost, Me.listBox1.Parent, Nothing), Syncfusion.Windows.Forms.Tools.DockHost)

Dim dockHostController As Syncfusion.Windows.Forms.Tools.DockHostController = CType(IIf(TypeOf dockHost.InternalController Is Syncfusion.Windows.Forms.Tools.DockHostController, dockHost.InternalController, Nothing), Syncfusion.Windows.Forms.Tools.DockHostController)



    'If ParentController is DockTabController the control will be in a tab.

    If TypeOf dockHostController.ParentController Is Syncfusion.Windows.Forms.Tools.DockTabController Then



       'Getting the DockTabControl from the DockTabController

Dim dockTab As Syncfusion.Windows.Forms.Tools.DockTabControl = (CType(IIf(TypeOf dockHostController.ParentController Is  Syncfusion.Windows.Forms.Tools.DockTabController, dockHostController.ParentController, Nothing), Syncfusion.Windows.Forms.Tools.DockTabController)).TabControl



       'Iterating through the TabPages to get other controls in that tab.

        For Each tabPage As DockTabPage In dockTab.TabPages

            Dim siblingControl As Control = tabPage.dhcClient.HostControl.Controls(0)

            MessageBox.Show(siblingControl.Name)

    Next tabPage

End If

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}


