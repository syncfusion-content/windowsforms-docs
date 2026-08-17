---
layout: post
title: Overcome SendKey Exception in Windows Forms GridControl | Syncfusion®
description:  Overcome SendKey exceptions in currency cells in Syncfusion® Windows Forms GridControl by disabling the ActivateSendKey property and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Overcome SendKey Exception in Windows Forms GridControl

CurrentCellKeyDown event cannot be handled for CurrencyTextbox when Windows Forms application is hosted into Internet Explorer. It will throw an error message as,“SendKeys cannot run inside this application.” To overcome this exemption, set ActivateSendKey property to false. 

{% tabs %}
{% highlight c# %}

//GridGroupingControl: 
this.Grid.TableModel.Option.ActivateSendKey = false;

//GridControl/GridDataBound:
this.Grid.Model.Option.ActivateSendKey = false;

//GridListControl:
this.GridList.Grid.Model.Option.ActivateSendKey = false;

{% endhighlight %}

{% highlight vb %}

'GridGroupingControl: 
Me.Grid.TableModel.Option.ActivateSendKey = False

'GridControl/GridDataBound:
Me.Grid.Model.Option.ActivateSendKey = False

'GridListControl:
Me.GridList.Grid.Model.Option.ActivateSendKey = False

{% endhighlight %}
{% endtabs %}
