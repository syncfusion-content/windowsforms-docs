---
layout: post
title: Feature | WindowsForms | Syncfusion
description: Feature
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Feature

This section explains all the design time feature of MessageBoxAdv.

## Details Pane

This pane helps to view the detail message about the text shown in the MessageBoxAdv.

**Details View**

{% tabs %}

{% highlight C# %}

//Details Pane

result = MessageBoxAdv.Show(this,"Hello World!", CaptionText, MessageBoxButtons.OK, SelectedIcon, SelectedIcon.Size,"details");
{% endhighlight %}

{% highlight VB %}

'Details Pane

result = MessageBoxAdv.Show(Me,"Hello World!", CaptionText, MessageBoxButtons.OK, SelectedIcon, SelectedIcon.Size,"details")

{% endhighlight %}

{% endtabs %}

Ex: Detail Pane Figure

![](MessageBoxAdv_images/MessageBoxAdv_img18.jpg) 

Eg: Collapsed Pane

![](MessageBoxAdv_images/MessageBoxAdv_img19.jpg) 

## Button Support

By default, the MessageBox only has the one Ok button, but this can be changed, in case you want to ask your user a question and not just show a piece of information. Also notice how I use multiple lines in this message, by using a line break character (\n):
You control which buttons are displayed by using a value from the **MessageBoxButtons** enumeration - in this case, a Yes, No and Cancel button is included. The following values, which should be self-explanatory, can be used:

•	Ok

•	OkCancel

•	YesNo

•	YesNoCancel

•	RetryCancel

•	AbortRetryIgnore


**Ok**

This option helps to show the MessageBoxAdv with Ok Button.

{% tabs %}

{% highlight C# %}

//MessageBox with Ok Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OK);

{% endhighlight %}

{% highlight VB %}

'MessageBox with Ok Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OK)

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img20.jpg) 
 
**OkCancel**

This option helps to show the MessageBoxAdv with combination of Ok and Cancel Button.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Ok,Cancel Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OKCancel);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Ok,Cancel Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OKCancel)

{% endhighlight %}

{% endtabs %}
 
 ![](MessageBoxAdv_images/MessageBoxAdv_img21.jpg) 

**YesNo**

This option helps to show the MessageBoxAdv with combination of  Yes and No Button.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Yes and No Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.YesNo);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Yes And No Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.YesNo)

{% endhighlight %}

{% endtabs %} 

![](MessageBoxAdv_images/MessageBoxAdv_img22.jpg) 

**YesNoCancel**

This option helps to show the MessageBoxAdv with combination of Yes,No and Cancel Button.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Yes,No and Cancel Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.YesNoCancel);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Yes,No And Cancel Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.YesNoCancel)

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img23.jpg) 
 
**RetryCancel**

This option helps to show the MessageBoxAdv with combination of Retry and Cancel Button.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Retry and Cancel Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.RetryCancel);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Retry And Cancel Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.RetryCancel)

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img24.jpg) 

**AbortRetryIgnore**

This option helps to show the MessageBoxAdv with combination of Abort, Retry and Ignore Button.

{% tabs %}

{% highlight C# %}

//MessageBox with combination of Abort,Retry and Ignore Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.AbortRetryIgnore);

{% endhighlight %}

{% highlight VB %}

'MessageBox with combination of Abort,Retry And Ignore Button
MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.AbortRetryIgnore)

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img25.jpg) 

## Icon Customization

MessageBoxAdv control provides support to add the custom image. It can be shown or invoked using the MessageBoxAdv show method.

{% tabs %}

{% highlight C# %}

//Icon Support

MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OKCancel,this.imageListAdv1.Images[0],new Size(50, 50));

{% endhighlight %}

{% highlight VB %}

'Icon Support

MessageBoxAdv.Show("Metro Theme Customization", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OKCancel,this.imageListAdv1.Images[0],new Size(50, 50))

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img26.jpg) 

## MultiLineText Support

MessageBoxAdv provides MultiLine support to display the multiple lines of Text. It can be achieved using the Show method and multiple lines of text provided in it.

{% tabs %}

{% highlight C# %}

 MessageBoxAdv.Show("Lorem ipsum dolor sit amet, lacus amet amet ultricies. Quisque mi venenatis morbi libero, orci dis, mi ut et class porta, massa ligula magna enim, aliquam orci vestibulum tempus. Turpis facilisis vitae consequat, cum a a, turpis dui consequat massa in dolor per, felis non amet. Auctor eleifend in omnis elit vestibulum, donec non elementum tellus est mauris, id aliquam, at lacus, arcu pretium proin lacus dolor et. Eu tortor, vel ultrices amet dignissim mauris vehicula. Lorem tortor neque, purus taciti quis id. Elementum integer orci accumsan minim phasellus vel.", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OKCancel);

{% endhighlight %}

{% highlight VB %}

 MessageBoxAdv.Show("Lorem ipsum dolor sit amet, lacus amet amet ultricies. Quisque mi venenatis morbi libero, orci dis, mi ut et class porta, massa ligula magna enim, aliquam orci vestibulum tempus. Turpis facilisis vitae consequat, cum a a, turpis dui consequat massa in dolor per, felis non amet. Auctor eleifend in omnis elit vestibulum, donec non elementum tellus est mauris, id aliquam, at lacus, arcu pretium proin lacus dolor et. Eu tortor, vel ultrices amet dignissim mauris vehicula. Lorem tortor neque, purus taciti quis id. Elementum integer orci accumsan minim phasellus vel.", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OKCancel)

{% endhighlight %}

{% endtabs %}
 
![](MessageBoxAdv_images/MessageBoxAdv_img27.jpg) 

## Right To left Support

MessageBoxAdv support the RightToLeft support which aligns the content of the messageboxadv in right to left manner or Left to Right Manner.

{% tabs %}

{% highlight C# %}

MessageBoxAdv.RightToLeft = RightToLeft.Yes;
MessageBoxAdv.Show("Right To Left support","This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OK);

{% endhighlight %}

{% highlight VB %}

MessageBoxAdv.RightToLeft = RightToLeft.Yes
MessageBoxAdv.Show("Right To Left support", "This is Syncfusion MessageBoxAdv Control", MessageBoxButtons.OK)

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img28.jpg) 

## Dialog Result

This support helps to display the result of the MessageBoxButton .

{% tabs %}

{% highlight C# %}

CustomButtons = new string[] { "Okay", "Cancel", "Help" };
DlgRtTxtBox.Text = CustomButtons[clickedIndex - 1];

{% endhighlight %}

{% highlight VB %}

CustomButtons = New String()
{
"Okay", "Cancel", "Help"
}

DlgRtTxtBox.Text = CustomButtons(clickedIndex - 1)

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img29.jpg) 

![](MessageBoxAdv_images/MessageBoxAdv_img30.jpg) 

## Localization Support

Localization is the process of making application multilingual by formatting the content according to the cultures. MessageBoxAdv control can be localized in any Languages, based on application requirement by following below steps.

Step 1: Need to initialize the LocalizationProvider class, inherited from the ILocalizationProvider interface, before the initializeComponent call in the constructor of an application.

Step 2: It will add the GetLocalizedString function in the LocalizationProvider class.It is needed to provide the Localization content, for the required components used in MessageBoxAdv control.

For example:
Here, MessageBoxAdv control is localized in German Language.
The following code demonstrates the same:

{% tabs %}

{% highlight C# %}

//Call the Localizer
LocalizationProvider.Provider = new Localizer();
MessageBoxAdv.Show("Metro Theme Anpassung", "Das ist Syncfusion MessageBoxAdv Control", MessageBoxButtons.AbortRetryIgnore);

// localizer inherits the interface ILocationProvider
public class Localizer : ILocalizationProvider
{
#region ILocalizationProvider Members

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{
switch (name)
{

#region MessageBoxAdv

///<summary
///<summary>
///Retry Button in German Language
///</summary>
case ResourceIdentifiers.Retry:
return "Wiederholen";

///<summary>
///Abort Button in German Language
///</summary>
///
case ResourceIdentifiers.Abort:
return "Abbrechen";

///<summary>
///Ignore Button in German Language
///</summary>

case ResourceIdentifiers.Ignore:
return "Ignorae";

///<summary>
/// default
///</summary>

default:
return string.Empty;
#endregion
}
}

#endregion
}

{% endhighlight %}

{% highlight VB %}

' call the localizer
LocalizationProvider.Provider = New Localizer()
'MessageBox show
MessageBoxAdv.Show("Metro Theme Anpassung", "Das ist Syncfusion MessageBoxAdv Control", MessageBoxButtons.AbortRetryIgnore)
'localizer inherits the interface of ILocationProvider
Public Class Localizer
Implements ILocalizationProvider

'MessageBoxAdv Localization
#Region "ILocalizationProvider MemberS"

Public Function GetLocalizedString(ByVal culture As System.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) As String Implements ILocalizationProvider.GetLocalizedString
Select Case name

'''<summary>
'''Retry Button in German Language
'''</summary>
Case ResourceIdentifiers.Retry
Return "Wiederholen"

'''<summary>
'''Abort Button in German Language
'''</summary>
Case ResourceIdentifiers.Abort
Return "Abbrechen"

'''<summary>
'''Ignore Button in German Language
'''</summary>
Case ResourceIdentifiers.Ignore
Return "ignorieren"
'''<summary>
''' default
'''</summary>
Case Else
Return String.Empty

End Select
End Function

#End Region
End Class

{% endhighlight %}

{% endtabs %}

![](MessageBoxAdv_images/MessageBoxAdv_img31.jpg) 