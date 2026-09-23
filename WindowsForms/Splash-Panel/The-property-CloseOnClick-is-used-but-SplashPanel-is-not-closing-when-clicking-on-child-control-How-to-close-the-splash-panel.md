---
layout: post
title: Closing SplashPanel Using CloseOnClick | Syncfusion®
description: Learn how to close the Windows Forms SplashPanel when CloseOnClick is enabled but clicking a child control does not close the panel.
platform: WindowsForms
control: SplashPanel
documentation: ug
---

# Closing SplashPanel Using CloseOnClick

This section discusses The property CloseOnClick is used but SplashPanel is not closing when clicking on child control.

## The property CloseOnClick is used but SplashPanel is not closing when clicking on child control. How to close the splash panel

When CloseOnClick property is set to _true_, the Splash Panel closes when clicked. But this is not applicable for the child controls inside the Splash Panel. To enable this feature, you need to call the HideSplash method inside the click event of the particular control.

For example, if you want to close SplashPanel when clicking its child control say, Label1, handle its click event as follows.




