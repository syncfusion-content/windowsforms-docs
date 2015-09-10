---
layout: post
title: How-to-set-spacing-between-the-browsing-buttons | WindowsForms | Syncfusion
description: how to set spacing between the browsing buttons?
platform: WindowsForms
control: Wizard
documentation: ug
---

# How to set spacing between the browsing buttons?

The WizardControl internally uses the GridBagLayout to arrange the navigation buttons.

You could insert spaces around the buttons using the Insets property. The GridBagLayout.GetConstraintsRef returns the object containing the constraints for that particular control. Specifying an Insets value as shown below to this, would create padding around this control.

{% highlight c# %}



this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.NextButton).Insets = new Insets(5, 5, 5, 5);

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.BackButton).Insets = new Insets(5, 5, 0, 5);

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.CancelButton).Insets = new Insets(0, 5, 5, 5);  

{% endhighlight %}

{% highlight vbnet %}



Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.NextButton).Insets= New Insets(5, 5, 5, 5)

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.BackButton).Insets= New Insets(5, 5, 0, 5)

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.CancelButton).Insets = New Insets(0, 5, 5, 5)

{% endhighlight %}

