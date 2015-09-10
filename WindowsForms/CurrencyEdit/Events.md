---
layout: post
title: Events | WindowsForms | Syncfusion
description: events
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Events

## CalculatorClosing Event

CalculatorClosing event is handled when the calculator is closing after the specified button is clicked.

{%highlight c#%}



private void currencyEdit1_CalculatorClosing(object sender, CalculatorClosingEventArgs e)

{

    // This prints the final calculated value before closing.

    MessageBox.Show("The calculated Value is" + e.FinalValue.ToString());

}

{%endhighlight%}

{%highlight vbnet%}

Private Sub currencyEdit1_CalculatorClosing(ByVal sender As Object, ByVal e AsCalculatorClosingEventArgs)

    ' This prints the final calculated value before closing.

    MessageBox.Show("The calculated Value is" + e.FinalValue.ToString())

End Sub

{%endhighlight%}


## CalculatorShowing Event

This event is raised before the calculator popup is displayed. The Cancel property of this CancelEventArgs lets  you to cancel the popup display as follows.

{%highlight c#%}



private void currencyEdit1_CalculatorShowing(object sender, CancelEventArgs e)

{

    //Cancels the calculator popup.

    e.Cancel = true;

}

{%endhighlight%}

{%highlight vbnet%}



Private Sub currencyEdit1_CalculatorShowing(ByVal sender As Object, ByVal e As CancelEventArgs)

    'Cancels the calculator popup.

    e.Cancel = True

End Sub

{%endhighlight%}

## DecimalValueChanged Event

This event is raised when DecimalValue property is changed.



{%highlight c#%}

private void currencyEdit1_DecimalValueChanged(object sender, EventArgs e)

{

    MessageBox.Show("Decimal Value is Changed");

}

{%endhighlight%}

{%highlight vbnet%}


Private Sub currencyEdit1_DecimalValueChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Decimal Value is Changed")

End Sub

{%endhighlight%}