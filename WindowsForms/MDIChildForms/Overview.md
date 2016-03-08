---
layout: post
title: Overview | Windows Forms | Syncfusion
description: overview
platform: windowsforms
control: Control Name undefined
documentation: ug
---

# MDI Child Forms

## Overview

This section illustrates how to create MDI Child forms using the ChildFrameBarManager.

Follow the steps below to create MDI parent form and MDI child form.

## Creating MDI ParentForm

1. Set up an MDIParent form by setting Form.IsMdiContainer property to true.
2. Add bar items, 'Open' and 'Exit', under File menu bar using MainFrameBarManager. Refer to Creating Menus.

   ![](Overview_images/Overview_img1.jpeg)



3. Create a new form named TextEditor, with the controls FontListBox and ColorUIControl. We will consider this form as the MDIChildForm.

   ![](Overview_images/Overview_img2.jpeg)
 


4. Drag-and-Drop ChildFrameBarManager to the child form and add necessary Bar items. Adding bar items using ChildFrameBarManager is similar to MainFrameBarManager.

   ![](Overview_images/Overview_img3.jpeg)



5. Now merge the toolbars and menus of the child form with the Main form using RegisterMDIChildType function as follows.

{% highlight c# %}



this.MainFrameBarManager1.RegisterMdiChildTypes(new Type[]{typeof(TextEditorForm)});

{% endhighlight %}

{% highlight vbnet %}



Me.MainFrameBarManager1.RegisterMdiChildTypes(New Type(){GetType(TextEditorForm)})

{% endhighlight %}

A sample demonstrating the MDI feature is available in the below sample installation location.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

