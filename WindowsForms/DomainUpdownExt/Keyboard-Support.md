---
layout: post
title: Keyboard Support | Windows Forms | Syncfusion
description: keyboard support
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# Keyboard Support

Using Up and Down arrow keys we can increment and decrement the value of DomainUpDownExt control by settingInterceptArrowKeysto true.

<table>
<tr>
<th>
DomainUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
InterceptArrowKeys</td><td>
Specifies whether the up down control will increment and decrement when Up Arrow and Down Arrow keys are pressed.</td></tr>
</table>



{% highlight c# %}


this.domainUpDownExt1.InterceptArrowKeys =true;


{% endhighlight  %}

{% highlight vbnet %}


PrivateMe.domainUpDownExt1.InterceptArrowKeys =True
{% endhighlight %}