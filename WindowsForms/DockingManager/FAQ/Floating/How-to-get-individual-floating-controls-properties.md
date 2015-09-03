---
layout: post
title: How to get individual floating controls properties
description: How to get individual floating controls properties
platform: WindowsForms
control: Control Name undefined
documentation: ug
---

# How to get individual floating controls properties?

To get the x,y coordinates if it is floating

1. Add a list view and a docking manager to your form.
2. Enable the listview as a dock control.

   ~~~ cs

		this.dockingManager1.SetEnableDocking(this.listView1,true);

   ~~~
   {:.prettyprint}

   ~~~ vbnet




		Me.dockingManager1.SetEnableDocking(Me.listView1, True)

   ~~~
   {:.prettyprint}

3. Set the control as a non-dockable floating window.

   ~~~ cs
		this.dockingManager1.SetFloatOnly(this.listView1,true);
   ~~~
   {:.prettyprint}


   ~~~ vbnet

		Me.dockingManager1.SetFloatOnly(Me.listView1,True)

   ~~~
   {:.prettyprint}

4. Determine whether the control is floating using the DockingManager.IsFloating() method. 
* If true, then the control is being hosted in a subclass of the Form type and this host form can be retrieved through the control’s TopLevelControl property. 
* Once you have the top level form, just use the Control.Location property on that form to get it’s x and y co-ordinates.


{% highlight C# %}



// Get the FloatingForm object to get location of control.FloatingForm is a Form derived class.

DockHost dhost = this.listView1.Parent as Syncfusion.Windows.Forms.Tools.DockHost;

FloatingForm floatfrm = dhost.ParentForm as FloatingForm;

MessageBox.Show(floatfrm.Location.ToString());

{% endhighlight %}

{% highlight vbnet %}






' Get the FloatingForm object to get location of control.FloatingForm is a Form derived class.

Dim dhost As DockHost = CType(IIf(TypeOf Me.listView1.Parent Is Syncfusion.Windows.Forms.Tools.DockHost, Me.listView1.Parent, Nothing), Syncfusion.Windows.Forms.Tools.DockHost)

Dim floatfrm As FloatingForm = CType(IIf(TypeOf dhost.ParentForm Is FloatingForm, dhost.ParentForm, Nothing), FloatingForm)

MessageBox.Show(floatfrm.Location.ToString())
{% endhighlight %}



