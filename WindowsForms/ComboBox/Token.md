---
layout: post
title: Token in Windows Forms ComboBox control | Syncfusion
description: Learn about Token support in Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Token in Windows Forms ComboBox (SfComboBox)

Token represents the selected item(s) in combobox. The selected items are displayed in rounded-polygon shape with close icon. This option also helps to select multiple items without using check box and remove the token at run time. 

The [EnableToken](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_EnableToken) property determines whether the selected item(s) in the combobox should be displayed as token. And, the [SelectedItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_SelectedItems) property holds the tokens collection.

{% tabs %}
{% highlight c# %}
sfComboBox1.EnableToken = true;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.EnableToken = True
{% endhighlight %}
{% endtabs %}

![Token support enabled in SfComboBox](Token_images/Token_img1.png)

The important characteristics of the token support are as follows.

{{'**Searching**'| markdownify }}- Items can be searched from the combobox by entering appropriate characters in the text area.

{{'**Adding**'| markdownify }}- When an item is selected from the combobox, the item will be added as token in text area and removed from the drop-down area. 

{{'**Removing**'| markdownify }}- By clicking the remove icon, the appropriate item will be removed from the text area, and it will be added automatically back to the drop-down area.

{{'**AutoSizing**'| markdownify }}- Text area height will be increased automatically based on the placement of the selected items.

## Token appearance

The appearance of token can be customized using the [TokenStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.Styles.ComboBoxVisualStyle.html#Syncfusion_WinForms_ListView_Styles_ComboBoxVisualStyle_TokenStyle) property. It includes the background color, border color, foreground color, close button color, and font.

{% tabs %}
{% highlight c# %}
sfComboBox1.Style.TokenStyle.BackColor = Color.Aqua;
sfComboBox1.Style.TokenStyle.BorderColor = Color.Red;
sfComboBox1.Style.TokenStyle.ForeColor = Color.Black;
sfComboBox1.Style.TokenStyle.CloseButtonBackColor = Color.Black;
sfComboBox1.Style.TokenStyle.Font = new Font(“Arial”, 10F, FontStyle.Bold);
{% endhighlight %}
{% highlight vb %}
sfComboBox1.Style.TokenStyle.BackColor = Color.Aqua
sfComboBox1.Style.TokenStyle.BorderColor = Color.Red
sfComboBox1.Style.TokenStyle.ForeColor = Color.Black
sfComboBox1.Style.TokenStyle.CloseButtonBackColor = Color.Black
sfComboBox1.Style.TokenStyle.Font = New Font(“Arial”, 10F, FontStyle.Bold)
{% endhighlight %}
{% endtabs %}

![Customizing the TokenStyle](Token_images/Token_img2.png)

## Keyboard access

* Using the <kbd>Down Arrow</kbd>, <kbd>Up Arrow</kbd>, and <kbd>Enter</kbd> keys, item can be selected from the combobox.
* Using the <kbd>Backspace</kbd> key, the last positioned token will be removed from the text area.
* When the <kbd>Esc</kbd> key is pressed, the drop-down area will be closed if it has been opened already. 

## Events Fired When Selecting and Deselecting Tokens 

The events [SelectedValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_SelectedValueChanged)event is triggered when tokens are selected or deselected in the SfComboBox control.

{% tabs %}
{% highlight c# %}

private List<object> _previousSelectedTokens; 
private Label label;  

SfComboBox sfComboBox1 = new SfComboBox
{
    EnableToken = true,
    DisplayMember = "Name",
    ValueMember = "Id",
    Size = new Size(300, 30),
    DataSource = new List<dynamic>
   {
    new { Id = 1, Name = "Item1" },
    new { Id = 2, Name = "Item2" },
    new { Id = 3, Name = "Item3" }
   }
};

sfComboBox1.Style.TokenStyle.Font = new Font("Arial", 9.75F, FontStyle.Regular, GraphicsUnit.Point);

// Initialize Label
label = new Label
{
    Width = 200,
    Location = new Point(10, 110)
};

// Initialize selected items and previous tokens
sfComboBox1.SelectedItems.Add(sfComboBox1.DropDownListView.View.DisplayItems[0]);
_previousSelectedTokens = sfComboBox1.SelectedItems.Cast<dynamic>().ToList();

sfComboBox1.SelectedValueChanged += SfComboBox1_SelectedValueChanged;

this.Controls.Add(sfComboBox1);
this.Controls.Add(label);

private void TokenComboBox_SelectedValueChanged(object sender, EventArgs e)
{
    var comboBox = sender as SfComboBox;

    // Get current and previous tokens
    var currentSelectedTokens = comboBox.SelectedItems.Cast<dynamic>().ToList();
    var addedTokens = currentSelectedTokens.Except(_previousSelectedTokens).ToList();
    var removedTokens = _previousSelectedTokens.Except(currentSelectedTokens).ToList();

    // Update previous tokens
    _previousSelectedTokens = currentSelectedTokens;

    // Handle added tokens
    foreach (var token in addedTokens)
    {
       label.Text = $"Token Added: {token.Name}";
    }

    // Handle removed tokens
    foreach (var token in removedTokens)
    {
       label.Text = $"Token Removed: {token.Name}";
    }
}

{% endhighlight %}
{% highlight vb %}

Private _previousSelectedTokens As List(Of Object)
Private label As Label

' Initialize SfComboBox
Dim sfComboBox1 As New SfComboBox With {
    .EnableToken = True,
    .DisplayMember = "Name",
    .ValueMember = "Id",
    .Size = New Size(300, 30),
    .DataSource = New List(Of Object) From {
        New With {.Id = 1, .Name = "Item1"},
        New With {.Id = 2, .Name = "Item2"},
        New With {.Id = 3, .Name = "Item3"}
    }
}

sfComboBox1.Style.TokenStyle.Font = New Font("Arial", 9.75F, FontStyle.Regular, GraphicsUnit.Point)

' Initialize Label
label = New Label With {
    .Width = 200,
    .Location = New Point(10, 110)
}

' Initialize selected items and previous tokens
sfComboBox1.SelectedItems.Add(sfComboBox1.DropDownListView.View.DisplayItems(0))
_previousSelectedTokens = sfComboBox1.SelectedItems.Cast(Of Object)().ToList()

AddHandler sfComboBox1.SelectedValueChanged, AddressOf TokenComboBox_SelectedValueChanged

Me.Controls.Add(sfComboBox1)
Me.Controls.Add(label)


Private Sub TokenComboBox_SelectedValueChanged(sender As Object, e As EventArgs)
    Dim comboBox = TryCast(sender, SfComboBox)

    ' Get current and previous tokens
    Dim currentSelectedTokens = comboBox.SelectedItems.Cast(Of Object)().ToList()
    Dim addedTokens = currentSelectedTokens.Except(_previousSelectedTokens).ToList()
    Dim removedTokens = _previousSelectedTokens.Except(currentSelectedTokens).ToList()

    ' Update previous tokens
    _previousSelectedTokens = currentSelectedTokens

    ' Handle added tokens
    For Each token In addedTokens
        label.Text = $"Token Added: {token.Name}"
    Next

   ' Handle removed tokens
    For Each token In removedTokens
        label.Text = $"Token Removed: {token.Name}"
    Next
End Sub

{% endhighlight %}
{% endtabs %}

![Event fired when Selecting/Unselecting token item](Token_images/Token_Event.gif)