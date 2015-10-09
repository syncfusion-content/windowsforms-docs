---
layout: post
title: Web-Control-Performance | WindowsForms | Syncfusion
description: web control performance
platform: WindowsForms
control: Calculate
documentation: ug
---

# Web Control Performance

Syncfusion Essential studio makes use of the class named ScriptResourceAttribute which is used to define a resource in an assembly to be used from a client script file. 

Then the resource files which are all used in the Syncfusion controls are gzipped and served over the network. The following screen shot shows this.

![](Web-Control-Performance_images/Web-Control-Performance_img1.jpeg)

In order to achieve this, you need to set the following attributes in the project's web.config file.

{% highlight html %}

<configuration system.web.extensions/>
. . .
<scripting>
<ScriptResourceHandler enableCompression="true" enableCaching="true" />
</scripting>
. . .
</system.web.extensions>

{% endhighlight %}

As the resource files get gzipped

* It saves the precious network band-width.
* It reduces the load-time. As a result, the web form, which consists of the Syncfusion controls, will get loaded faster on the client browser.
* It also reduces the network traffic.