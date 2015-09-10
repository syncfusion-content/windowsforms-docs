---
layout: post
title: Browse-Buttons | WindowsForms | Syncfusion
description: browse buttons
platform: WindowsForms
control: Wizard
documentation: ug
---

# Browse Buttons

The default buttons which are available for the Wizard control are Back, Next, Cancel and Help. The Next and the Back buttons facilitates users to navigate between wizard pages. 

N> You can navigate between the pages at Design Time also. See Page Navigation at Design time topic for more details.

### Button Visibility

By default, all the buttons are visible for all the Wizard pages. To change their visibility, use the below properties in individual pages.

Table 947: Property Table

<table>
<tr>
<th>
Wizard Page Property</th><th>
Description</th></tr>
<tr>
<td>
BackVisible</td><td>
Specifies whether to display the 'Back' button.</td></tr>
<tr>
<td>
CancelVisible</td><td>
Specifies whether to display 'Cancel' the button.</td></tr>
<tr>
<td>
FinishVisible</td><td>
Specifies whether to display the 'Finish' button.</td></tr>
<tr>
<td>
HelpVisible</td><td>
Specifies whether to display the 'Help' button.</td></tr>
<tr>
<td>
NextVisible</td><td>
Specifies whether to display the 'Next' button.</td></tr>
</table>

N> When you use more than one wizard page, you may set the BackVisible property of the first page to true to hide the back button.

{% highlight c# %}



this.wizardControlPage1.BackVisible = true;

this.wizardControlPage1.NextVisible = true;

this.wizardControlPage1.CancelVisible = true;

this.wizardControlPage1.HelpVisible = true;

this.wizardControlPage1.FinishVisible = true;

{% endhighlight %}

{% highlight vbnet %}



Me.wizardControlPage1.BackVisible = True

Me.wizardControlPage1.NextVisible = true

Me.wizardControlPage1.CancelVisible = True

Me.wizardControlPage1.HelpVisible = true

Me.wizardControlPage1.FinishVisible = True

{% endhighlight %}

You can enable or disable the buttons using the respective button enabled properties.

Table 948: Property Table

<table>
<tr>
<th>
WizardControlPage Property</th><th>
Description</th></tr>
<tr>
<td>
BackEnabled</td><td>
Specifies whether the state of 'Back' button should be enabled or disabled.</td></tr>
<tr>
<td>
CancelEnabled</td><td>
Specifies whether the state of 'Cancel' button should be enabled or disabled.</td></tr>
<tr>
<td>
FinishEnabled</td><td>
Specifies whether the state of 'Finish' button should be enabled or disabled.</td></tr>
<tr>
<td>
HelpEnabled</td><td>
Specifies whether the state of 'Help' button should be enabled or disabled.</td></tr>
<tr>
<td>
NextEnabled</td><td>
Specifies whether the state of 'Next' button should be enabled or disabled.</td></tr>
</table>

###Adding Finish Button

In order to display the 'Finish' button in the last wizard page, user should set CancelOverFinish property in the WizardControlPage Collection Editor to false. This property determines if the Cancel button is positioned over the Finish button. If this property is set to true, it will override the FinishVisible property. 

{% highlight c# %}

this.finishPage.CancelOverFinish = false;

{% endhighlight %}

{% highlight vbnet %}

Me.finishPage.CancelOverFinish = False

{% endhighlight %}

A sample which includes button settings is available in the below sample installation location.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

{% seealso %}
How to set spacing between the browsing buttons?


{% endseealso %}

### Adding and Reordering Buttons

#### Adding new Button to a Page

The following code snippet shows how to add a button to the wizard control browse buttons.

{% highlight c# %}



// To add a new button 

Button btn = new Button(); 

btn.Text = "New Button"; 

// Add button to the WizardControl

this.wizardControl1.Controls.Add(btn); 

// Set the constraints for the newly created Button 

this.wizardControl1.GridBagLayout.GetConstraintsRef(btn).GridPosX = 6; 

this.wizardControl1.GridBagLayout.GetConstraintsRef(btn).GridPosY = 5; 

{% endhighlight %}

{% highlight vbnet %}



' To add a new button 

Private btn As Button = New Button()

Private btn.Text = "New Button"

'Add button to the WizardControl

Me.wizardControl1.Controls.Add(btn)

' Set the constraints for the newly created Button 

Me.wizardControl1.GridBagLayout.GetConstraintsRef(btn).GridPosX = 6

Me.wizardControl1.GridBagLayout.GetConstraintsRef(btn).GridPosY = 5

{% endhighlight %}

![](Wizard-Package_images/Wizard-Package_img23.jpeg)



#### Reordering the Button Sequence

In order to change the position of the buttons, user should handle the GridPosX property and change the position programmatically.

N> Wizard control automatically sets position for some buttons after page change. Setting the position for controls manually, is not supported in those cases.

{% highlight c# %}



//Setting the GridPosX property for changing the position of buttons

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.BackButton).GridPosX = 5;

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.NextButton).GridPosX = 6;

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.CancelButton).GridPosX = 4;

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.FinishButton).GridPosX = 3;

this.wizardControl1.GridBagLayout.GetConstraintsRef(this.wizardControl1.HelpButton).GridPosX = 2; 

{% endhighlight %}

{% highlight vbnet %}



'Setting the GridPosX property for changing the position of buttons

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.BackButton).GridPosX = 5

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.NextButton).GridPosX = 6

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.CancelButton).GridPosX = 4

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.FinishButton).GridPosX= 3

Me.wizardControl1.GridBagLayout.GetConstraintsRef(Me.wizardControl1.HelpButton).GridPosX = 2

{% endhighlight %}

![](Wizard-Package_images/Wizard-Package_img25.jpeg)



#### Button Appearance

The default browse buttons are the normal windows button controls. Appearance of the buttons can be controlled using the properties available. Some appearance properties are listed below.

Table 949: Property Table

<table>
<tr>
<th>
Button Property</th><th>
Description</th></tr>
<tr>
<td>
FlatStyle</td><td>
Sets the appearance of the button control. The flat style are, Flat,Popup, Standard and System.</td></tr>
<tr>
<td>
FlatAppearance</td><td>
Sets the appearance of the border, color for mouse state and check state. This setting will be effective only when FlatStyle is set to Flat.</td></tr>
<tr>
<td>
Font</td><td>
Sets the Font Style for the button text.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the fore color for the button text.</td></tr>
<tr>
<td>
Image</td><td>
Sets an image icon for the button.</td></tr>
<tr>
<td>
ImageAlign</td><td>
Specifies the image alignment in the control.</td></tr>
<tr>
<td>
ImageIndex</td><td>
Specifies the image index for the button, when ImageList property is used.</td></tr>
<tr>
<td>
ImageList</td><td>
Specifies the image list.</td></tr>
<tr>
<td>
Text</td><td>
Specifies the button text.</td></tr>
<tr>
<td>
TextAlign</td><td>
Specifies the alignment of the text.</td></tr>
<tr>
<td>
TextImageRelation</td><td>
Specifies the relative location of the image to the text on the button.</td></tr>
</table>


{% highlight c# %}



//Sets the flat style settings for the Cancel button

this.wizardControl1.CancelButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;

this.wizardControl1.CancelButton.ForeColor = System.Drawing.Color.SteelBlue;

this.wizardControl1.CancelButton.FlatAppearance.BorderSize = 1;

this.wizardControl1.CancelButton.FlatAppearance.BorderColor = System.Drawing.Color.DarkBlue;

this.wizardControl1.CancelButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.PowderBlue;

{% endhighlight %}

{% highlight vbnet %}



'Sets the flat style settings for the Cancel button

Me.wizardControl1.CancelButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat 

Me.wizardControl1.CancelButton.ForeColor = System.Drawing.Color.SteelBlue

this.wizardControl1.CancelButton.FlatAppearance.BorderSize = 1;

this.wizardControl1.CancelButton.FlatAppearance.BorderColor = System.Drawing.Color.DarkBlue;

this.wizardControl1.CancelButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.PowderBlue;

{% endhighlight %}

![](Wizard-Package_images/Wizard-Package_img26.jpeg)



N> You can access the properties of CancelButton, FinishButton, HelpButton and NextButton using WizardControl.CancelButton, WizardControl.FinishButton, WizardControl.HelpButton and WizardControl.NextButton properties respectively.

![](Wizard-Package_images/Wizard-Package_img28.jpeg)



