---
layout: post
title: The-property-CloseOnClick-is-used-but-SplashPanel-is-not-closing-when-clicking-on-child-control.-How-to-close-the-splash-panel
description: the property CloseOnClick is used but splashsanel is not closing when clicking on child control. how to close the splash panel
platform: windowsforms
control: SplashPanel
documentation: ug
---

# The property CloseOnClick is used but SplashPanel is not closing when clicking on child control. How to close the splash panel

When CloseOnClick property is set to _true_, the Splash Panel closes when clicked. But this is not applicable for the child controls inside the Splash Panel. To enable this feature, you need to call the HideSplash method inside the click event of the particular control.

For example, if you want to close SplashPanel when clicking its child control say, Label1, handle its click event as follows.




