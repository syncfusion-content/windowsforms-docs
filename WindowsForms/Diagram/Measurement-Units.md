---
layout: post
title: Measurement Units in Windows Forms Diagram | Syncfusion®
description: Configure measurement units in the Syncfusion® Windows Forms Diagram control using built-in or custom units for accurate diagram sizing and positioning.
platform: WindowsForms
control: Diagram
documentation: ug
---

# Measurement Units in Windows Forms Diagram

The [WinForms Diagram](https://www.syncfusion.com/diagram-sdk/winforms-diagram) control provides multiple logical measurement units. The following measurement units are supported by the WinForms Diagram control.

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
Gets or sets the measurement unit for the model. The default value is Pixel.</td></tr>
<tr>
<td>
CustomUnitValue </td><td>
Gets or sets the custom measurement unit value for the model when MeasurementUnits is set to Custom. The default value is 0.5.</td></tr>
</table>

The following code example illustrates how to set the measurement unit for the diagram. Initialize the diagram instance before setting the model value.

{% tabs %}

{% highlight c# %}

diagram1.Model.MeasurementUnits = MeasureUnits.Point;

{% endhighlight %}

{% highlight vbnet %}

diagram1.Model.MeasurementUnits = MeasureUnits.Point

{% endhighlight %}

{% endtabs %}

## Custom measurement unit

The MeasureUnits enumeration contains constant values to apply in our [WinForms Diagram](https://www.syncfusion.com/diagram-sdk/winforms-diagram). Use MeasureUnits.Custom to set a customized unit and specify the custom measurement unit value by using the Syncfusion.Windows.Forms.Diagram.Model.CustomUnitValue property.
The following code example illustrates how to set a custom measurement unit for the WinForms Diagram control. Initialize the diagram instance before setting the model values.
 
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

