---
layout: post
title: Events in Windows Forms ContextMenuStrip control | Syncfusion
description: Learn about Events support in Syncfusion Windows Forms CurrencyEdit control and more details.
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Events in Windows Forms CurrencyEdit

## CalculatorClosing Event

[CalculatorClosing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) event is handled when the calculator is closing after the specified button is clicked.

{% tabs %}
{% highlight C# %}
private void currencyEdit1_CalculatorClosing(object sender, CalculatorClosingEventArgs e)
{
    // This prints the final calculated value before closing.
    MessageBox.Show("The calculated Value is" + e.FinalValue.ToString());
}
{% endhighlight %}
{% highlight VB %}
Private Sub currencyEdit1_CalculatorClosing(ByVal sender As Object, ByVal e AsCalculatorClosingEventArgs)
    ' This prints the final calculated value before closing.
    MessageBox.Show("The calculated Value is" + e.FinalValue.ToString())
End Sub
{% endhighlight %}
{% endtabs %}

## CalculatorShowing Event

This [CalculatorShowing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) event is raised before the calculator popup is displayed. The Cancel property of this [CancelEventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs?redirectedfrom=MSDN&view=netframework-4.7.2) lets  you to cancel the popup display as follows.

{% tabs %}
{% highlight c# %}
private void currencyEdit1_CalculatorShowing(object sender, CancelEventArgs e)
{
    //Cancels the calculator popup.
    e.Cancel = true;
}
{% endhighlight %}
{% highlight VB %}
Private Sub currencyEdit1_CalculatorShowing(ByVal sender As Object, ByVal e As CancelEventArgs)
    'Cancels the calculator popup.
     e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}

## DecimalValueChanged Event

This [DecimalValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) event is raised when [DecimalValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_DecimalValue) property is changed.

{% tabs %}
{% highlight C# %}
private void currencyEdit1_DecimalValueChanged(object sender, EventArgs e)
{
    MessageBox.Show("Decimal Value is Changed");
}
{% endhighlight %}
{% highlight VB %}
Private Sub currencyEdit1_DecimalValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("Decimal Value is Changed")
End Sub
{% endhighlight %}
{% endtabs %}
