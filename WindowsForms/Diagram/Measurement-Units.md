---
layout: post
title: Measurement Units in Windows Forms Diagram control | Syncfusion®
description: Learn about Measurement Units support in Syncfusion® Windows Forms Diagram control, its elements and more details.
platform: WindowsForms
control: Diagram
documentation: ug
---

# Measurement Units in Windows Forms Diagram

The Diagram control provides a multiple logical unit of measurement option. The following are the measurement units that are supported by the Diagram control.

* Pixel
* Point
* Document
* Display
* SixteenthInch
* EighthInch
* QuarterInch
* HalfInch
* Inch
* Foot
* Yard
* Mile
* Millimeter
* Centimeter
* Meter
* Kilometer
* Custom 

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
MeasurementUnits </td><td>
Specifies whether to get or set the Measurement unit for the Model. The default value is Pixel.</td></tr>
<td>
CustomUnitValue </td><td>
Specifies whether to set the Custom Measurement unit value for the model, if the MeasurementUnits is set to Custom. The default value is 0.5.</td></tr>
</table>

The following code example illustrates to set measurement unit for the diagram.

{% tabs %}

{% highlight c# %}

 diagram1.Model.MeasurementUnits = MeasureUnits.Point;

{% endhighlight %}

{% highlight vbnet %}

 diagram1.Model.MeasurementUnits = MeasureUnits.Pixel
	
{% endhighlight %}

{% endtabs %}

### Custom Measurement unit

The MeasureUnits contain constant values to apply in our Diagram. So, you can use MeasureUnits.Custom to set the customized unit and specify the Custom Measurement unit value by using the Syncfusion.Windows.Forms.Diagram.Model.CustomUnitValue property.   
The following code example illustrates how to set custom measurement unit for the Diagram control.
 
{% tabs %}

{% highlight c# %}

this.diagram1.Model.MeasurementUnits = MeasureUnits.Custom;
this.diagram1.Model.CustomUnitValue = 0.25f;

{% endhighlight %}

{% highlight vbnet %}

Me.diagram1.Model.MeasurementUnits = MeasureUnits.Custom
Me.diagram1.Model.CustomUnitValue = 0.25f
	
{% endhighlight %}

{% endtabs %}

