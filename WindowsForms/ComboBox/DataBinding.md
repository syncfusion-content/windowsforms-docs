---
layout: post
title: DataBinding | SfComboBox | WinForms | Syncfusion
description: This section deals with explain about the DataBinding support in SfComboBox control on WinForms platform
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Data Binding in Windows Forms ComboBox (SfComboBox)

The data source can be bound by using the [DataSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfComboBox~DataSource.html) property. The following properties controls the data binding:

* `DisplayMember`: To display the underlying datasource for [SfComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfComboBox.html).
* `ValueMember`: To use as the actual value for the items. 

{% tabs %}
{% highlight c# %}
//Bind the data source to combo box control
List<State> list = GetData();
sfComboBox1.DataSource = list;
//Bind the Display member and Value member to the data source
sfComboBox1.DisplayMember = "LongName";
sfComboBox1.ValueMember = "ShortName";

List<State> GetData()
{
    List<State> states = new List<State>();
    states.Add(new State("Alaska", "AK"));
    states.Add(new State("Arizona", "AZ"));
    states.Add(new State("Colorado", "CO"));
    return states;
}

public class State
{
    private string shortName;
    private string longName;

    public State(string LongName, string ShortName)
    {
        this.longName = LongName;
        this.shortName = ShortName;
    }

    public string ShortName
    {
        get { return shortName; }
    }

    public string LongName
    {
        get { return longName; }
    }
}

{% endhighlight %}
{% highlight vb %}
'Bind the data source to combo box control
Dim list As List(Of State) = GetData()
sfComboBox1.DataSource = list
'Bind the Display member and Value member to the data source
sfComboBox1.DisplayMember = "LongName"
sfComboBox1.ValueMember = "ShortName"

Private Function GetData() As List(Of State)
    Dim states As List(Of State) = New List(Of State)()
    states.Add(New State("Alaska", "AK"))
    states.Add(New State("Arizona", "AZ"))
    states.Add(New State("Colorado", "CO"))
    Return states
End Function

Public Class State
    Private shortName As String
    Private longName As String

    Public Sub New(ByVal LongName As String, ByVal ShortName As String)
        Me.longName = LongName
        Me.shortName = ShortName
    End Sub

    Public ReadOnly Property ShortName As String
        Get
            Return ShortName
        End Get
    End Property

    Public ReadOnly Property LongName As String
        Get
            Return LongName
        End Get
    End Property
End Class
{% endhighlight %}
{% endtabs %}

## See Also

[How to disable some items WinForms ComboBox dropdown?](https://www.syncfusion.com/kb/11254/how-to-disable-some-items-winforms-combobox-dropdown)