---
layout: post
title: Customization | AutoComplete Component for Windows Forms | Syncfusion
description: This section explains about the customization of AutoComplete.
platform: WindowsForms
control: AutoComplete
documentation: ug
---

# Customization

This section explains about the customization of the AutoComplete component.

## Item customization
### Appearance 

The appearance of the AutoComplete popup window and the items can be customized using the following properties:
<table>
<tr>
<th>
AutoComplete properties</th><th>
Description</th></tr>
<tr>
<td>
{{'[HeaderForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_HeaderForeColor)' || markdownify}} </td><td>
Specifies the HeaderForeColor of the AutoCompletePopup.</td></tr>
<tr>
<td>
{{'[HeaderForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_HeaderForeColor)' || markdownify}} </td><td>
Specifies the item text ForeColor of the AutoCompletePopup.</td></tr>
<tr>
<td>
{{'[HeaderFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_HeaderFont)' || markdownify}} </td><td>
Specifies the header font of the AutoCompletePopup.</td></tr>
<tr>
<td>
{{'[ItemFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_ItemFont)' || markdownify}} </td><td>
Specifies the item font of the AutoCompletePopup.</td></tr>
<tr>
<td>
{{'[HeaderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_HeaderStyle)' || markdownify}} </td><td>
Specifies the AutoCompletePopup column header style.</td></tr>
</table>

{% tabs %}

{% highlight C# %}
    // Specifies the header fore color of the AutoComplete popup.
    this.autoComplete1.HeaderForeColor = Color.Red;

    // Specifies the item fore color of the AutoComplete popup.
    this.autoComplete1.TextColor = Color.Blue;

    // Specifies the font for ColumnHeader in the AutoComplete popup.
    this.autoComplete1.HeaderFont = new System.Drawing.Font("Arial Black", 10.25F);

    // Specifies the font of items in the AutoComplete Popup.
    this.autoComplete1.ItemFont = new System.Drawing.Font("Monotype Corsiva", 9.25F);

    // Specifies the style of ColumnHeader in the AutoComplete popup.
    this.autoComplete1.HeaderStyle = ColumnHeaderStyle.Clickable;

{% endhighlight %}

{% highlight VB %}

    'Specifies the header fore color of the AutoComplete popup.
    Me.autoComplete1.HeaderForeColor = Color.Red

    'Specifies the item fore color of the AutoComplete popup.
    Me.autoComplete1.TextColor = Color.Blue

    'Specifies the font of the ColumnHeader in the AutoComplete popup.
    Me.autoComplete1.HeaderFont = New System.Drawing.Font("Arial Black", 10.25F)

    'Specifies the font of the items in the AutoComplete popup.
    Me.autoComplete1.ItemFont = New System.Drawing.Font("Monotype Corsiva", 9.25F)

    'Specifies the style of ColumnHeader in the AutoComplete popup.
    Me.autoComplete1.HeaderStyle = ColumnHeaderStyle.Clickable 

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Maximum number of suggestions](Customization_images/AutoComplete_ItemCustomization.png)

## Popup customization
### Close button

To show or hide the `CloseButton` at the bottom-left of the DropDownContainer, use the [ShowCloseButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_ShowCloseButton) property. The default value of this property is `true`.

N> The AutoComplete dropdown can be closed by calling the [CloseDropDown](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_CloseDropDown) method.

### Resize gripper

To show or hide the resizing gripper at the bottom-right of the DropDownContainer, use the [ShowGripper](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_ShowGripper) property. The default value of this property is `true`.

### Column Header

To show or hide the column header, use the [ShowColumnHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_ShowColumnHeader) property.


{% tabs %}

{% highlight C# %}

this.autoComplete1.ShowCloseButton = false;
this.autoComplete1.ShowGripper = false;
this.autoComplete1.ShowColumnHeader = true;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.ShowCloseButton = False
Me.autoComplete1.ShowGripper = False
Me.autoComplete1.ShowColumnHeader = True

{% endhighlight %}

{% endtabs %}

### Size Settings

The properties that can control the height and width of the AutoCompletePopup are as follows.

<table>
<tr>
<th>
AutoComplete properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[AdjustHeightToItemCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_AdjustHeightToItemCount)' || markdownify }} </td><td>
Specifies whether the height of the dropdown should be adjusted automatically based on the number of items.</td></tr>
<tr>
<td>
{{ '[AutoPersistentDropDownSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_AutoPersistentDropDownSize)' || markdownify }}</td><td>
The dropdown size of Autocomplete component is automatically persistent when this property is set to true.</td></tr>
<tr>
<td>
{{ '[PreferredHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_PreferredHeight)' || markdownify }}</td><td>
Specifies preferred height for the dropdown displayed by the AutoComplete component when AdjustHeightToItemCount property is false. The default value of this property is 200.</td></tr>
<tr>
<td>
{{ '[PreferredWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_PreferredWidth)' || markdownify }}</td><td>
Specifies preferred width for the dropdown displayed by the AutoComplete component when AdjustHeightToItemCount property is false. The default value of this property is -1.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.autoComplete1.AdjustHeightToItemCount = false;
this.autoComplete1.AutoPersistentDropDownSize = true;
this.autoComplete1.PreferredHeight = 100;
this.autoComplete1.PreferredWidth = 300;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.AdjustHeightToItemCount = False
Me.autoComplete1.AutoPersistentDropDownSize = True
Me.autoComplete1.PreferredHeight = 100
Me.autoComplete1.PreferredWidth = 300

{% endhighlight %}

{% endtabs %}

## Visual styles 

The built-in themes for professional representation of AutoComplete are as follows.

### Office2019Colorful

Sets the Office2019Colorful theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.ThemeName = "Office2019Colorful";

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.ThemeName = "Office2019Colorful"

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Office2019Colorful theme](Customization_images/AutoComplete_Office2019Col.png)


### HighContrastBlack

Sets the HighContrastBlack theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.ThemeName = "HighContrastBlack";

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.ThemeName = "HighContrastBlack"

{% endhighlight %}

{% endtabs %}

 ![Windows Forms AutoComplete HighcontrastBlack theme](Customization_images/AutoComplete_Highcontrast.png)

### Office2016Colorful

Sets the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.Style = AutoCompleteStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.Style = AutoCompleteStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Office2016Colorful theme](Customization_images/AutoComplete_Office2016Col.png)

### Office2016White

Sets the Office2016White theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.Style = AutoCompleteStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.Style = AutoCompleteStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Office2016White theme](Customization_images/AutoComplete_Office2016white.png)

### Office2016Black

Sets the Office2016Black theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.Style = AutoCompleteStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.Style = AutoCompleteStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Office2016White theme](Customization_images/AutoComplete_Office2016white.png)

### Office2016DarkGray

Sets the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.Style = AutoCompleteStyle.Office2016DarkGray;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.Style = AutoCompleteStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Office2016DarkGray theme](Customization_images/AutoComplete_Office2016darkgray.png)

### Metro

Sets the Metro theme.

{% tabs %}

{% highlight C# %}

this.autoComplete1.Style = AutoCompleteStyle.Metro;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.Style = AutoCompleteStyle.Metro

{% endhighlight %}

{% endtabs %}

![Windows Forms AutoComplete Metro theme](Customization_images/AutoComplete_Metro.png)

### Default

Sets the default theme.

## Persistence

The history list of AutoComplete component can be saved in the following formats:

* Binary Format
* XML Format
* IsolatedStorage medium
* MemoryStream
* PersistState property

The AutoComplete component has a fully built-in serialization feature that provides automatic serialization for the AutoComplete's history list. The serialization mechanism is implemented using the standardized Syncfusion.Windows.Forms.AppStateSerializer component that acts as a central coordinator for all the Essential tools components and provides options to read or write to different media such as the default isolated storage, XML file, XML stream, binary file, binary stream, and the Windows Registry.

### Persisting AutoComplete's data in the default storage

The data of AutoComplete component can be persisted by setting the [AutoSerialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_AutoSerialize) property to `true`. It specifies whether the AutoComplete component can persist its data. This information is stored in the isolated storage.

{% tabs %}

{% highlight C# %}

this.autoComplete1.AutoSerialize = true;

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.AutoSerialize = True

{% endhighlight %}

{% endtabs %}

### Persisting in XML file

To save and load the AutoComplete data in XML.

{% tabs %}

{% highlight C# %}

using Syncfusion.Runtime.Serialization;

// To save
AppStateSerializer aser = new AppStateSerializer(SerializeMode.XMLFile, @"C:\info.xml");
this.autoComplete1.SaveCurrentState(aser);

// To load
AppStateSerializer aser = new AppStateSerializer(SerializeMode.XMLFile, @"C:\info.xml");
this.autoComplete1.LoadCurrentState(aser);
{% endhighlight %}


{% highlight VB %}

Imports Syncfusion.Runtime.Serialization

' To save
Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "C:\info.xml")
Me.autoComplete1.SaveCurrentState(aser)

' To load
Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "C:\info.xml")
Me.autoComplete1.LoadCurrentState(aser)

End Sub()
{% endhighlight %}

{% endtabs %}

### Persisting in memory stream

It serializes the data into a memory stream. The following methods are storing and retrieving data in AutoComplete.

#### Storing state

The current internal list information is stored to the persistence medium using the [SaveCurrentState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_SaveCurrentState_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) method. 

{% tabs %}

{% highlight C# %}

MemoryStream ms = new MemoryStream();
AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);
this.autoComplete1.SaveCurrentState(aser);
aser.PersistNow();

{% endhighlight %}

{% highlight VB %}

Dim ms As MemoryStream = New MemoryStream()
Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)
Me.autoComplete1.SaveCurrentState(aser)
aser.PersistNow()

{% endhighlight %}

{% endtabs %}

### Retrieving state

Retrieving state reads the previously serialized internal history list using the [LoadCurrentState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoComplete.html#Syncfusion_Windows_Forms_Tools_AutoComplete_LoadCurrentState_Syncfusion_Runtime_Serialization_SerializeMode_System_Object_) method.

{% tabs %}
{% highlight C# %}

// Code to retrieve data(stream) from database.
MemoryStream ms = new MemoryStream(val);
ms.Position = 0;
AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);
this.autoComplete1.LoadCurrentState(aser);

{% endhighlight %}

{% highlight VB %}

' Code to retrieve data(stream) from database.

Dim ms As MemoryStream = New MemoryStream(value)
ms.Position = 0
Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)
this.autoComplete1.LoadCurrentState(aser);

{% endhighlight %}

{% endtabs %}

#### To serialize in binary format

{% tabs %}

{% highlight C# %}

// To save
AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFile,"myfile");
this.autoComplete1.SaveCurrentState(aser);
aser.PersistNow();

// To load
AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFile,"myfile");
this.autoComplete1.LoadCurrentState(aser);

{% endhighlight %}

{% highlight VB %}

' To save

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.autoComplete1.SaveCurrentState(aser)

aser.PersistNow()

' To load
Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFile, "myfile")
Me.autoComplete1.LoadCurrentState(aser)

{% endhighlight %}

{% endtabs %}

#### To serialize in isolated storage medium

{% tabs %}

{% highlight C# %}

// To save
AppStateSerializer aser = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");
this.autoComplete1.SaveCurrentState(aser);
aser.PersistNow();

// To load
AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");
this.autoComplete1.LoadCurrentState(aser);

{% endhighlight %}

{% highlight VB %}

' To save
Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")
Me.autoComplete1.SaveCurrentState(aser)
aser.PersistNow()

' To load
Private serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")
Me.autoComplete1.LoadCurrentState(aser)

{% endhighlight %}

{% endtabs %}

A sample that demonstrates the Persistence features is available [here](https://github.com/SyncfusionExamples/AutoCompleteModes_in_AutoComplete_Component/tree/master/Persistence)
