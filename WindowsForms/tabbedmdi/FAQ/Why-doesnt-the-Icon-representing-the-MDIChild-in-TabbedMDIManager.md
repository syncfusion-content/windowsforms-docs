---
layout: post
title: Why doesnt the Icon representing in TabbedMDIManager | Syncfusion®
description: Learn about Why doesnt the Icon representing the MDIChild in Syncfusion® Windows Forms TabbedMDI control and more details.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# Why doesn't the Icon representing the MDIChild in TabbedMDIManager

The form does not throw an event when the Icon gets updated. So, update the Icon in the TabbedMDIManager manually after updating the Icon in the form, as follows:

{% tabs %}

{% highlight C# %}


// Get the tab control corresponding to your form in the TabbedMDIManager. 

MDITabPanel mdiTabPanel = this.tabbedMDIManager.GetTabHostFromForm(mdiChildForm).MDITabPanel;

// Get the tab page showing the icon. 

TabPageExt tabPage = mdiTabPanel.GetTabPageExtFromForm(mdiChildForm);

// The new icon.

Icon icon = mdiChildForm.Icon;

// Get the image with the preferred size.

if (icon.Size != mdiTabPanel.ImageList.ImageSize)

// This will try to retrieve an image of the preferred size, if not found, it will create a zoomed version.

icon = new Icon(icon, mdiTabPanel.ImageList.ImageSize);

// Change the icon in the tab control to the new one. 

mdiTabPanel.ImageList.Images[tabPage.ImageIndex] = icon.ToBitmap();

// Update the tab control. 

mdiTabPanel.Invalidate();

mdiTabPanel.Update();

{% endhighlight %}

{% highlight VB %}



' Get the tab control corresponding to your form in the TabbedMDIManager. 

Dim mdiTabPanel As MDITabPanel = Me.tabbedMDIManager.GetTabHostFromForm(mdiChildForm).MDITabPanel

' Get the tab page showing the icon. 

Dim tabPage As TabPageExt = mdiTabPanel.GetTabPageExtFromForm(mdiChildForm)

' The new icon.

Dim icon As Icon = mdiChildForm.Icon

' Get the image with the preferred size.

If icon.Size &lt;&gt; mdiTabPanel.ImageList.ImageSize Then

' This will try to retrieve an image of the preferred size, if not found, it will create a zoomed version.

icon = New Icon(icon, mdiTabPanel.ImageList.ImageSize)

End If

' Change the icon in the tab control to the new one. 

mdiTabPanel.ImageList.Images(tabPage.ImageIndex) = icon.ToBitmap()

' Update the tab control. 

mdiTabPanel.Invalidate()

mdiTabPanel.Update()

{% endhighlight %}

{% endtabs %}
