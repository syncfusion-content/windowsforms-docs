---
layout: post
title: How to close the splash panel in Windows Forms | Syncfusion
description: Learn here all about how to close the splash panel of Syncfusion Windows Forms SplashPanel control and more.
platform: WindowsForms
control: SplashPanel
documentation: ug
---

# How to close the splash panel in Windows Forms

This section discusses The property CloseOnClick is used but SplashPanel is not closing when clicking on child control.

## The property CloseOnClick is used but SplashPanel is not closing when clicking on child control. How to close the splash panel

When CloseOnClick property is set to _true_, the Splash Panel closes when clicked. But this is not applicable for the child controls inside the Splash Panel. To enable this feature, you need to call the HideSplash method inside the click event of the particular control.

For example, if you want to close SplashPanel when clicking its child control say, Label1, handle its click event as follows.




