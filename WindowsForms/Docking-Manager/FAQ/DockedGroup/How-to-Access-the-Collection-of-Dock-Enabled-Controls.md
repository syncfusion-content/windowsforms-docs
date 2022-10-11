---
layout: post
title: Accessing the Collection of DockEnabled Controls | WindowsForms | Syncfusion
description: Learn about How to Access the Collection of Dock-Enabled Controls, with Syncfusion Essential Studio Windows Forms
platform: WindowsForms
control: DockingManager
documentation: ug
---


# How to access the collection of Dock-Enabled controls?

The DockingManager.Controls property returns an enumerator that may be used for accessing the controls that are currently associated with the DockingManager. To access and modify the DockingManager’s control, the contents of the enumerator should first be copied to a temporary collection.

Step 1. Create the respective controls and dock the control through design by setting `EnableDocking on dockingManager` property to `true` and follow the below given steps to enable, access, and modify the docked controls.

 ![Enable Docking on DockingManager](Docked-Group_images/Docked-Group_img4.jpeg)


Step 2. Access and modify the dockable controls.

The following given code snippet accesses the docked controls, disables docking, and then disposes the dockable controls.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}


//Getting the Controls into an ArrayList.

IEnumerator enumerator = this.dockingManager.Controls; 

ArrayList dockedControls = new ArrayList(); 

while(enumerator.MoveNext()) 

dockedControls.Add(enumerator.Current); 

// Iterating through the collection to perform the required operation.

foreach(Control ctrl in dockedControls) 

{                         

// Disabling the docking and disposing control.

this.dockingManager.SetEnableDocking(ctrl, false); 

ctrl.Dispose(); 

}
{% endhighlight %}

{% highlight VB %}


'Getting the Controls into an ArrayList.

Dim enumerator As IEnumerator = Me.dockingManager.Controls

Dim dockedControls As ArrayList = New ArrayList()

Do While enumerator.MoveNext()

   dockedControls.Add(enumerator.Current)

Loop

'Iterating through the collection to perform the required operation.

For Each ctrl As Control In dockedControls

'Disabling the docking and disposing control.

Me.dockingManager.SetEnableDocking(ctrl, False)

ctrl.Dispose()

Next ctrl

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

 ![Access and modify the dockcontrols](Docked-Group_images/Docked-Group_img5.jpeg) 





