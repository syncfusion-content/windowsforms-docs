---
layout: post
title: Individual floating controls properties | WindowsForms | Syncfusion
description: Learn here about How to get individual floating controls properties with Syncfusion Essential Studio Windows Forms DockingManager Control
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to get individual floating controls properties?

To get the x,y coordinates of the control if it is in floating state,

1. Add a list view and a docking manager to your form.
2. Enable the list view as a dock control.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

this.dockingManager1.SetEnableDocking(this.listView1,true);

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.SetEnableDocking(Me.listView1, True)

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}	

3. Set the control as a non-dockable floating window.

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}

this.dockingManager1.SetFloatOnly(this.listView1,true);

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.SetFloatOnly(Me.listView1,True)

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}
  

4. Determine whether the control is floating using the `IsFloating()` method. 
* If `true`, then the control is being hosted in a subclass of the Form type and this host form can be retrieved through the control’s `TopLevelControl` property.
* Once, we have the top level form,  x and y co-ordinates can be retrieved using Control.Location property of that form.

{% capture codesnippet3 %}
{% tabs %}
 
{% highlight C# %}


// Get the FloatingForm object to get location of control.FloatingForm is a Form derived class.

DockHost dockHost = this.listView1.Parent as Syncfusion.Windows.Forms.Tools.DockHost;

FloatingForm floatForm = dockHost.ParentForm as FloatingForm;

MessageBox.Show(floatForm.Location.ToString());

{% endhighlight %}

{% highlight VB %}

' Get the FloatingForm object to get location of control.FloatingForm is a Form derived class.

Dim dockHost As DockHost = CType(IIf(TypeOf Me.listView1.Parent Is Syncfusion.Windows.Forms.Tools.DockHost, Me.listView1.Parent, Nothing), Syncfusion.Windows.Forms.Tools.DockHost)

Dim floatForm As FloatingForm = CType(IIf(TypeOf dockHost.ParentForm Is FloatingForm, dockHost.ParentForm, Nothing), FloatingForm)

MessageBox.Show(floatForm.Location.ToString())

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}
