---
layout: post
title: Office2010-Form-Color-Scheme-Settings
description: office2010 form color scheme settings
platform: windowsforms
control: Office2010 Form
documentation: ug
---

# Office2010 Form Color Scheme Settings

Office2010 Forms now have the option to apply the Aero theme on forms, which provides a glassy effect. This can be done through the ApplyAeroTheme property, and setting its value either to True or False.

Aero theme support is available for Office2010 Forms when used on Windows Vista machines. Previously, ColorSchemes could not be applied to the Office2010 Form when the Aero theme was enabled. Now, ColorSchemes can be applied by disabling the Aero theme on Office2010 Forms. 

The following code illustrates how ColorSchemes can be applied by disabling AeroTheme on an Office2010 Form.


{% highlight c# %}

// Disables Aero Theme on Office2010 Form.

this. ApplyAeroTheme = false;

{% endhighlight %}

{% highlight vbnet %}

‘Disables Aero Theme on Office2010 Form.

Me. ApplyAeroTheme = false;

{% endhighlight %}