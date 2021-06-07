---
layout: post
title: Spacing between the browsing buttons | WindowsForms | Syncfusion
description: How to set spacing between the browsing buttons in Syncfusion Essential Studio WindowsForms Wizard Control, its elements, and more.
platform: WindowsForms
control: Wizard
documentation: ug
---

# How to set spacing between the browsing buttons?

The WizardControl internally uses the GridBagLayout to arrange the navigation buttons.

You could insert spaces around the buttons using the Insets property. The [GridBagLayout.GetConstraintsRef](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GridBagLayout.html#Syncfusion_Windows_Forms_Tools_GridBagLayout_GetConstraintsRef_System_Windows_Forms_Control_) returns the object containing the constraints for that particular control. Specifying an Insets value as shown below to this, would create padding around this control.

{% tabs %}

{% highlight C# %}



this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.NextButton).Insets = new Insets(5, 5, 5, 5);

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.BackButton).Insets = new Insets(5, 5, 0, 5);

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.CancelButton).Insets = new Insets(0, 5, 5, 5);  

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.NextButton).Insets= New Insets(5, 5, 5, 5)

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.BackButton).Insets= New Insets(5, 5, 0, 5)

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.CancelButton).Insets = New Insets(0, 5, 5, 5)

{% endhighlight %}

{% endtabs %}
