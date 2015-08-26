---
layout: post
title: How to Access the Collection of Dock-Enabled Controls?
description: How to Access the Collection of Dock-Enabled Controls?
platform: windowsforms
control: Control Name undefined
documentation: ug
---


# How to Access the Collection of Dock-Enabled Controls?

The DockingManager.Controls property returns an enumerator that may be used for accessing the controls that are currently associated with the DockingManager. To access and modify the DockingManager’s control, the contents of the enumerator should first be copied to a temporary collection. 

Step 1: Create the respective controls and dock the control through design by setting EnableDocking on dockingManagerproperty to true and follow the below given steps to enable, access and modify the docked controls.

 ![](Docked-Group_images/Docked-Group_img1.jpeg)


Step 2:Access and modify the dockable controls.

The below given code snippet accesses the docked controls, disable docking and then disposes the dockable controls.

{% highlight C# %}






//Getting the Controls into an ArrayList.

IEnumerator ienum = this.dockingManager.Controls; 

ArrayList dockedctrls = new ArrayList(); 

while(ienum.MoveNext()) 

dockedctrls.Add(ienum.Current); 

// Iterating through the collection to perform the required operation.

foreach(Control ctrl in dockedctrls) 

{                         

// Disabling the docking and disposing control.

this.dockingManager.SetEnableDocking(ctrl, false); 

ctrl.Dispose(); 

}
{% endhighlight %}

{% highlight vbnet %}





'Getting the Controls into an ArrayList.

Dim ienum As IEnumerator = Me.dockingManager.Controls

Dim dockedctrls As ArrayList = New ArrayList()

Do While ienum.MoveNext()

   dockedctrls.Add(ienum.Current)

Loop

'Iterating through the collection to perform the required operation.

For Each ctrl As Control In dockedctrls

'Disabling the docking and disposing control.

Me.dockingManager.SetEnableDocking(ctrl, False)

ctrl.Dispose()

Next ctrl
{% endhighlight %}


 ![](Docked-Group_images/Docked-Group_img2.jpeg) 





