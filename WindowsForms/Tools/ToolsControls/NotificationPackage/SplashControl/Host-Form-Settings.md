---
layout: post
title: Host-Form-Settings
description: host form settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Host Form Settings

The host form of a SplashControl application can be hidden or shown, when the splash image is displayed. The properties given below illustrate this.

_Table_ _624_: _Property Table_

<table>
<tr>
<td>
SplashControl Property</td><td>
Description</td></tr>
<tr>
<td>
HostForm</td><td>
Gets / sets the host form of the SplashControl.</td></tr>
<tr>
<td>
HideHostForm</td><td>
Specifies if the host form should be hidden when the splash screen is displayed.</td></tr>
<tr>
<td>
HostFormWindowState</td><td>
Specifies whether the host form should be displayed as normal or minimized or maximized, when the splash screen is displayed.The HideHostForm property should be set to 'True'.</td></tr>
</table>

{% highlight c# %}

this.splashControl2.HostForm = this;

this.splashControl1.HideHostForm = true;

this.splashControl1.HostFormWindowState = System.Windows.Forms.FormWindowState.Normal;

{% endhighlight %}

{% highlight vbnet %}

Me.splashControl2.HostForm = Me

Me.SplashControl1.HideHostForm = True

Me.SplashControl1.HostFormWindowState = System.Windows.Forms.FormWindowState.Normal

{% endhighlight %}

