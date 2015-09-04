---
layout: post
title: How-to-Avoid-RangeStyles-being-Written-out-to-Code
description: how to avoid rangestyles being written out to code in a derived gridcontrol
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Avoid RangeStyles being Written out to Code in a Derived GridControl

When a derived grid is dropped onto a form at design-time, the styles that are changed in the derived grid's constructor will be written out as code in the form. This serialization to code can be avoided by overriding the respective properties and by setting it to the DesignerSerializationVisibility.Hidden.

As an example the RangeStyles being serialized to code can be avoided by overriding the RangeStyles and setting it to the DesignerSerializationVisibility.Hidden.

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

{% highlight vbnet %}



&lt;Browsable(False), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)&gt; 

Public Shadows Property RangeStyles() As GridRangeStyleCollection

    Get

           Return MyBase.RangeStyles

    End Get

    Set

         MyBase.RangeStyles = Value

    End Set

End Property

{% endhighlight %}

