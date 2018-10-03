---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating domainupdownext
platform: WindowsForms
control: DomainUpdownExt 
documentation: ug
---
# Getting Started

To use a DomainUpDownExt control in your application, all you need to do is drag and drop the DomainUpDownExt control from the controls toolbox onto your form.

![](DomainUpdownExt_images/Overview_img420.png)

You can add items in the String Collection Editor of DomainUpDownExt control and Click OK.

![](DomainUpdownExt_images/Overview_img421.png) 

It can be created programmatically as follows.

1. Add Shared.Base, Shared.Windows, Tools.Base and Tools.Windows assembly references and include the required namespace.

{% tabs %}
{% highlight c# %}

usingSyncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

ImportsSyncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. Create an instance of the DomainUpDownExt. Add that instance to the Form.

{% tabs %}
{% highlight c# %}

privateSyncfusion.Windows.Forms.Tools.DomainUpDownExt domainUpDownExt1;
this.domainUpDownExt1=newSyncfusion.Windows.Forms.Tools.DomainUpDownExt();

// Add items.
this.domainUpDownExt1.Items.Add("One");
this.domainUpDownExt1.Items.Add("Two");
this.domainUpDownExt1.Items.Add("Three");
this.domainUpDownExt1.Items.Add("Four");
this.domainUpDownExt1.Items.Add("Five");
this.Controls.Add(this.domainUpDownExt1);

{% endhighlight %}

{% highlight vb %}

PrivatedomainUpDownExt1AsSyncfusion.Windows.Forms.Tools.DomainUpDownExt
Me.domainUpDownExt1 =NewSyncfusion.Windows.Forms.Tools.DomainUpDownExt()

' Add items.
Me.domainUpDownExt1.Items.Add("One")
Me.domainUpDownExt1.Items.Add("Two")
Me.domainUpDownExt1.Items.Add("Three")
Me.domainUpDownExt1.Items.Add("Four")
Me.domainUpDownExt1.Items.Add("Five")
Me.Controls.Add(Me.domainUpDownExt1)

{% endhighlight %}
{% endtabs %}

![](DomainUpdownExt_images/Overview_img422.png)
