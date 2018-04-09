---
layout: post
title: How to add a new data row to the Data table at runtime | WindowsForms | Syncfusion
description: How to add a new data row to the Data table at runtime
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Add a New Data Row to the Data Table at Runtime

This method sets internal table data based on AutoComplete.DataSource property. You can do this by calling the SetTableData() method as follows.

{% tabs %}
{% highlight C# %}

DataTable dt;
private void Form1_Load(object sender, System.EventArgs e)
{
    dt = new DataTable("select");
    dt.Columns.Add("Countries");
    dt.Columns.Add("states");
    dt.Rows.Add(new object[] { "NorthCarolina" });
    dt.Rows.Add(new object[] { "India " });
    dt.Rows.Add(new object[] { "New York " });
    dt.Rows.Add(new object[] { "Washington " });
    dt.Rows.Add(new object[] { "London" });
    dt.Rows.Add(new object[] { "Canada" });
    autoComplete1.DataSource = dt;
}
private void button1_Click(object sender, System.EventArgs e)
{
    dt.Rows.Add(new object[] { "new1" });
    dt.Rows.Add(new object[] { "new2" });

//sets the internal table data based on the AutoComplete.DataSource property. 
    this.autoComplete1.SetTableData();
}

{% endhighlight %}

{% highlight vb %}

Private dt As DataTable
Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    dt = New DataTable("select")
    dt.Columns.Add("Countries")
    dt.Columns.Add("states")
    dt.Rows.Add(New Object() {"NorthCarolina"})
    dt.Rows.Add(New Object() {"India "})
    dt.Rows.Add(New Object() {"New York "})
    dt.Rows.Add(New Object() {"Washington "})
    dt.Rows.Add(New Object() {"London"})
    dt.Rows.Add(New Object() {"Canada"})
    autoComplete1.DataSource = dt
End Sub
Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    dt.Rows.Add(New Object() {"new1"})
    dt.Rows.Add(New Object() {"new2"})
    Me.autoComplete1.SetTableData()
End Sub
{% endhighlight %}
{% endtabs %}
