---
layout: post
title: Closing SplashPanel Using CloseOnClick | Syncfusion®
description: Learn how to close the Windows Forms SplashPanel when CloseOnClick is enabled but clicking a child control does not close the panel.
platform: WindowsForms
control: SplashPanel
documentation: ug
---

# Closing SplashPanel Using CloseOnClick

When CloseOnClick property is set to _true_, the Splash Panel closes when clicked. But this is not applicable for the child controls inside the Splash Panel. To enable this feature, you need to call the HideSplash method inside the click event of the particular control.

For example, if you want to close SplashPanel when clicking its child control say, Label1, handle its click event as follows.




