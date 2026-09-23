---
layout: post
title: Avoid RangeStyles Serialization in WinForms Grid Control | Syncfusion®
description: Prevent RangeStyles from being written to designer code in Syncfusion® Windows Forms Grid Control by hiding serialization for derived grid properties and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Prevent RangeStyles Serialization in Windows Forms Grid Control

When a derived grid is dropped onto a form at design-time, the styles that are changed in the derived grid's constructor will be written out as code in the form. This serialization to code can be avoided by overriding the respective properties and by setting it to the DesignerSerializationVisibility.Hidden.

As an example the RangeStyles being serialized to code can be avoided by overriding the RangeStyles and setting it to the DesignerSerializationVisibility.Hidden.

{% tabs %}
{% highlight c# %}

[Browsable(false), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]

public new GridRangeStyleCollection RangeStyles
{
    get
   {
       return base.RangeStyles;
   }
   set
   {
      base.RangeStyles = value;
   }
}

{% endhighlight  %}

{% highlight vb %}

[Browsable(False), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
Public Shadows Property RangeStyles() As GridRangeStyleCollection
Get
Return MyBase.RangeStyles
End Get
Set
MyBase.RangeStyles = Value
End Set
End Property

{% endhighlight %}
{% endtabs %}
