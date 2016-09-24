---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: PivotChart
documentation: ug
---

# Getting Started

This section explains how to create a PivotChart in your application with Windows Forms.

## Create your first PivotChart in Windows Forms

This section guides you on how to configure the PivotCharts for your business requirements. You can also pass the required data to default PivotChart and customize it according to your requirement.

### How To add a PivotChart control 

To create the PivotChart through Visual Studio

1. Create a new Windows Forms Application Project in VS IDE through New ProjectWizard.
2. On the File menu, click New Project. The New Project dialog box appears as follows.

   ![](Getting-Started_images/Getting-Started_img1.png)
   
3. Select Windows Forms Application, and then click OK.
4. Drag the PivotChart control from the Toolbox to the Design page.

   ![](Getting-Started_images/Getting-Started_img2.png)



### Configuring PivotChart Control through code

To add PivotChart control to a Windows Forms Application through code, include the following code example to your application.

{% tabs %}
{% highlight c# %}

//Creates a PivotChart control.
PivotChart  pivotChart1 = new PivotChart();
this.Controls.Add(pivotChart1);

//Assigns a IEnumerable list collection to the Itemsource.
this.pivotChart1.ItemSource = ProductSales.GetSalesData();

//Populates PivotAxis, PivotLegends, and PivotCalculation collection.
//Adds PivotAxis to the Control.
this.pivotChart1.PivotAxis.Add(new PivotItem { FieldMappingName = "Product", TotalHeader = "Total" });
this.pivotChart1.PivotAxis.Add(new PivotItem { FieldMappingName = "Country", TotalHeader = "Total" });
this.pivotChart1.PivotAxis.Add(new PivotItem { FieldMappingName = "State", TotalHeader = "Total" });

//Adds PivotLegend to the Control.
this.pivotChart1.PivotLegend.Add(new PivotItem { FieldMappingName = "Date", TotalHeader = "Total" });

// Adds PivotCalculations to the Control.
this.pivotChart1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Quantity", Format = "#,##0" });

{% endhighlight %}

{% highlight vb %}
'Creates a PivotChart control.
Dim pivotChart1 As New PivotChart()
Me.Controls.Add(pivotChart1)

'Assigns an IEnumerable list collection to the Itemsource.
Me.pivotChart1.ItemSource = ProductSales.GetSalesData()

'Populates PivotAxis, PivotLegends, and PivotCalculation collection.
'Adds PivotAxis to the Control.
Me.pivotChart1.PivotAxis.Add(New PivotItem() With { _
 .FieldMappingName = "Product", _
 .TotalHeader = "Total" _
})

Me.pivotChart1.PivotAxis.Add(New PivotItem() With { _
 .FieldMappingName = "Country", _
 .TotalHeader = "Total" _
})

Me.pivotChart1.PivotAxis.Add(New PivotItem() With { _
 .FieldMappingName = "State", _
 .TotalHeader = "Total" _
})

'Adds PivotLegend to the Control.
Me.pivotChart1.PivotLegend.Add(New PivotItem() With { _
 .FieldMappingName = "Date", _
 .TotalHeader = "Total" _
})

'Adds PivotCalculations to the Control.
Me.pivotChart1.PivotCalculations.Add(New PivotComputationInfo() With { _
 .FieldName = "Quantity", _
 .Format = "#,##0" _
})

{% endhighlight %}
{% endtabs %}

## PivotChart Real Time Update

PivotChart Updating Manager is Automatically updates the PivotChart series values. When the Underlying collection changed by using EnableUpdating property.

{% tabs %}
{% highlight c# %}
// Update the PivotChart series values whenever we change the underlying data source.
this.pivotChart1.EnableUpdating = true;
{% endhighlight %}

{% highlight vb %}
' Update the PivotChart series values whenever we change the underlying data source.
Me.pivotChart1.EnableUpdating = True
{% endhighlight %}
{% endtabs %}

N> Default value for PivotChart EnableUpdating property is false.

## BeginUpdate and EndUpdate

When we change bulk changes in underlying data source it updates pivotChart for every changes. So it may cause performance issue. To prevent this, do the bulk changes between the pivotChart.BeginUpdate and PivotChar.EndUpdate methods. BeginUpdate method is used to temporarily freeze the painting of the control. After all updates have been made, invoke the EndUpdate method to resume painting of the control.

{% tabs %}
{% highlight c# %}
//Used to Suspend the painting Untill end update method.
this.pivotChart1.BeginUpdate();

// do your bulk changes.

//Resumes the painting of the control suspended by calling BegingUpdate method.
this.pivotChart1.EndUpdate();
{% endhighlight %}

{% highlight vb %}
'Used to Suspend the painting Untill end update method.
Me.pivotChart1.BeginUpdate()

' do your bulk changes.

'Resumes the painting of the control suspended by calling BegingUpdate method.
Me.pivotChart1.EndUpdate()
{% endhighlight %}
{% endtabs %}