---
layout: post
title: Right-To-Left Support of SfDateTimeEdit control
description: Right-To-Left Support of SfDateTimeEdit control for Windows Forms
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Right-To-Left Support

This control supports Right-To-Left layout. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Disable the Right to Left

this.dateTimeEdit.RightToLeft = RightToLeft.No;

//Enable the Right to Left 

this.dateTimeEdit.RightToLeft = RightToLeft.Yes;

{% endhighlight  %}

{% highlight VB %}

'Disable the Right to Left 

 this.dateTimeEdit.RightToLeft = RightToLeft.No

'Enable the Right to Left 

 this.dateTimeEdit.RightToLeft = RightToLeft.No

{% endhighlight  %}

{% endtabs %}

![](RightToLeft_images/lefttoright.png)