---
layout: post
title: How to add a custom property in Windows Forms Diagram | Syncfusion®
description: Learn how to add a custom property to the Syncfusion® Windows Forms Diagram control and display it in the Property Editor.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Add a Custom Property to Diagram in Windows Forms Diagram

The below given code snippet illustrates how you can add a custom property to Diagram and display it in the Property Editor.

{% tabs %}

{% highlight c# %}

//Derived Diagram

public class MyDiagram : Syncfusion.Windows.Forms.Diagram.Controls.Diagram

{

    public override Model CreateModel()

    {

        return new QuickStart.MainForm.MyModel();

    }

}

//Derived Model where the new property is added

public class MyModel : Syncfusion.Windows.Forms.Diagram.Model

{

    public override void SetDefaultPropertyValues()

    {

        base.SetDefaultPropertyValues();

        this.SetPropertyValue("MyCustomProperty", 0);

    }

    [

    Browsable(true),

    Category("MyProperties"),

    Description("Description for MyCustomProperty")]

    public int MyCustomProperty

    {

        get

        {

            object value = this.GetPropertyValue("MyCustomProperty");

            if (value != null)

            {

                return (int)value;

            }

            return 0;

        }

    }

}

{% endhighlight %}

{% highlight vbnet %}

'Derived Diagram

Public Class MyDiagram

Inherits Syncfusion.Windows.Forms.Diagram.Controls.Diagram

Public Overrides Function CreateModel() As Model

Return New QuickStart.MainForm.MyModel()

End Function 'CreateModel

End Class

'Derived Model where the new property is added 

Public Class MyModel

Inherits Syncfusion.Windows.Forms.Diagram.Model

Public Overrides Sub SetDefaultPropertyValues()

MyBase.SetDefaultPropertyValues()

Me.SetPropertyValue("MyCustomProperty", 0)

End Sub 'SetDefaultPropertyValues 

Public ReadOnly Property MyCustomProperty() As Integer

Get

Dim value As Object = Me.GetPropertyValue("MyCustomProperty")

If Not (value Is Nothing) Then

Return Fix(value)

End If

Return 0

End Get

End Property

End Class 'MyModel 

{% endhighlight %}

{% endtabs %}

