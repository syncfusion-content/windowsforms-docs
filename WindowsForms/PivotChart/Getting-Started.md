---
layout: post
title: Getting-Started
description: getting started
platform: WindowsForms
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

   ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image51_8.png](Getting-Started_images/Getting-Started_img1.png)
   
3. Select Windows Forms Application, and then click OK.
4. Drag the PivotChart control from the Toolbox to the Design page.

   ![](Getting-Started_images/Getting-Started_img2.png)



### Configuring PivotChart Control through code

To add PivotChart control to a Windows Forms Application through code, include the following code example to your application.

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

{% highlight vbnet %}

'Creates a PivotChart control.

    Dim pivotChart1 As New PivotChart()

Me.Controls.Add(pivotChart1)



    'Assigns an IEnumerable list collection to the Itemsource.

Me.pivotChart1.ItemSource = ProductSales.GetSalesData()



    'Populates PivotAxis, PivotLegends, and PivotCalculation collection.

    'Adds PivotAxis to the Control.

Me.pivotChart1.PivotAxis.Add(New PivotItem() With { _

Key .FieldMappingName = "Product", _

Key .TotalHeader = "Total" _

})

Me.pivotChart1.PivotAxis.Add(New PivotItem() With { _

Key .FieldMappingName = "Country", _

Key .TotalHeader = "Total" _

})

Me.pivotChart1.PivotAxis.Add(New PivotItem() With { _

Key .FieldMappingName = "State", _

Key .TotalHeader = "Total" _

})



    'Adds PivotLegend to the Control.

Me.pivotChart1.PivotLegend.Add(New PivotItem() With { _

Key .FieldMappingName = "Date", _

Key .TotalHeader = "Total" _

})



    'Adds PivotCalculations to the Control.

Me.pivotChart1.PivotCalculations.Add(New PivotComputationInfo() With { _

Key .FieldName = "Quantity", _

Key .Format = "#,##0" _

})

{% endhighlight %}