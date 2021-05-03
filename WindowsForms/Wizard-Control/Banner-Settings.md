---
layout: post
title: Banner Settings in Windows Forms Wizard | Syncfusion
description: Learn about Banner Settings support in Syncfusion Windows Forms Wizard Control, its elements and more details.
platform: WindowsForms
control: Wizard
documentation: ug
---

# Banner Settings in Windows Forms Wizard

The controls inside the Banner Control include Banner Panel, Title, description and a picture box. The section will walk you through the properties which customizes these controls.

### Banner panel

A Banner Panel is a simple gradient panel which holds a Title label, a Description label and a Picture box controls.

* **Property**

* [Banner](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_Banner)
* [Description](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_Description)
* [Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_Title)

N> The [Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_Title) and [Description](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_Description) settings can be set for individual Wizard Pages using [WizardPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardPage.html).[Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_Title) and WizardPage.Description properties respectively. See _Wizard Page Settings.

{% tabs %}

{% highlight C# %}



this.wizardControl1.Banner = this.pictureBox2;

this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));

this.label1.Text = "Page Title";

this.label2.Text = "This is the description of the Wizard Page";

this.gradientPanel1.Controls.Add(this.label1);

this.gradientPanel1.Controls.Add(this.label2);

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.Banner = Me.pictureBox2 

Me.pictureBox2.Image = DirectCast((resources.GetObject("pictureBox2.Image")), System.Drawing.Image) 

Me.label1.Text = "Page Title" 

Me.label2.Text = "This is the description of the Wizard Page" 

Me.gradientPanel1.Controls.Add(Me.label1) 

Me.gradientPanel1.Controls.Add(Me.label2)

{% endhighlight %}

{% endtabs %}

![Banner panel](Wizard-Package_images/Wizard-Package_img9.jpeg)



N> The appearance of a Banner panel can be customized using the properties of the gradient panel. See_ Border styles _for border settings of a Banner Panel.

### Layout of the banner controls

The below properties control the layout of the respective banner controls.

* [AutoLayoutBanner](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_AutoLayoutBanner)
* [AutoLayoutDescription](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_AutoLayoutDescription)
* [AutoLayoutTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardControl.html#Syncfusion_Windows_Forms_Tools_WizardControl_AutoLayoutTitle)

{% tabs %}

{% highlight C# %}



this.wizardControl1.AutoLayoutBanner = true;

this.wizardControl1.AutoLayoutDescription = true;

this.wizardControl1.AutoLayoutTitle = true;

{% endhighlight %}

{% highlight VB %}



Me.wizardControl1.AutoLayoutBanner = True

Me.wizardControl1.AutoLayoutDescription = True

Me.wizardControl1.AutoLayoutTitle = True

{% endhighlight %}

{% endtabs %}



### Title text

The font style and the fore color for the Title text can be edited through [Label.Font](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.font?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Font) and [Label.ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?view=netframework-4.7.2) property.

![Title text](Wizard-Package_images/Wizard-Package_img11.jpeg)

{% tabs %}

{% highlight C# %}



//Setting Font Style for the Label

this.label1.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Bold);

this.label1.ForeColor = System.Drawing.Color.DarkBlue;

{% endhighlight %}

{% highlight VB %}



'Setting Font Style for the Label

Me.label1.Font = New System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Bold)

this.label1.ForeColor = System.Drawing.Color.DarkBlue;

{% endhighlight %}

{% endtabs %}

![Font color customization](Wizard-Package_images/Wizard-Package_img12.jpeg)



#### Description text

The appearance of the description text for a wizard control can be edited using the description label properties.

* [Font](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.font?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Font)
* [ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?view=netframework-4.7.2)

![Description text](Wizard-Package_images/Wizard-Package_img13.jpeg)

{% tabs %}

{% highlight C# %}



//Setting Font Style for the Label

this.label1.Font = new System.Drawing.Font("Verdana", 8F);

this.label1.ForeColor = System.Drawing.Color.DarkBlue;

{% endhighlight %}

{% highlight VB %}



'Setting Font Style for the Label

Me.label1.Font = New System.Drawing.Font("Verdana", 8F)

this.label1.ForeColor = System.Drawing.Color.DarkBlue

{% endhighlight %}

{% endtabs %}

![Description text](Wizard-Package_images/Wizard-Package_img14.jpeg)



N> A WizardControl can have only one page title label and one page description label. We can change only the text of these two labels for individual pages using [WizardPage.Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardPage.html#Syncfusion_Windows_Forms_Tools_WizardPage_Title) and WizardPage.Description properties and not their appearance. Hence Font and ForeColor settings will be similar in all the page.

