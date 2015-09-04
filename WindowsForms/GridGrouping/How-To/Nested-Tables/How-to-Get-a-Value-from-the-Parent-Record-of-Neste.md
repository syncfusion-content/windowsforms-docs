---
layout: post
title: How-to-Get-a-Value-from-the-Parent-Record-of-Neste
description: how to get a value from the parent record of nested table when the dropdown list is clicked
platform: windowsforms
control: How To
documentation: ug
---

# How to Get a Value from the Parent Record of Nested Table when the Dropdown List is Clicked

Through the nested table's ParentRecord.GetValue() method, the value of the parent record of nested table can be retrieved when we are in the nested table. In QueryCellStyleInfo event, the parent record's value is retrieved as an object. With the object, the sources of the nested tables are changed. The code for QueryCellStyleInfo event is as follows.




{% highlight C# %}


private void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)

{

       if(e.TableCellIdentity.Column != null && e.TableCellIdentity.Column.MappingName == "dropCol" && e.TableCellIdentity.DisplayElement is GridRecordRow)

       {

            object o = e.TableCellIdentity.DisplayElement.ParentChildTable.ParentNestedTable.ParentRecord.GetValue("check");

            this.gridGroupingControl1.TableModel.ResetVolatileData();

            if(o!=System.DBNull.Value && o != null && (bool)o)

            {

                  e.Style.DataSource = colors;

                  e.Style.DisplayMember = "color";

                  e.Style.ValueMember = "color";

                  e.Style.CellType = "GridListControl";

            }

            else

            {

                  e.Style.DataSource = shapes;

                  e.Style.DisplayMember = "shape";

                  e.Style.ValueMember = "shape";

                  e.Style.CellType = "GridListControl";

            }

       }

}


{% endhighlight %}



{% highlight vbnet %}

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs)

       If Not e.TableCellIdentity.Column Is Nothing AndAlso e.TableCellIdentity.Column.MappingName = "dropCol" AndAlso TypeOf e.TableCellIdentity.DisplayElement Is GridRecordRow Then

            Dim o As Object = e.TableCellIdentity.DisplayElement.ParentChildTable.ParentNestedTable.ParentRecord.GetValue("check")

            Me.gridGroupingControl1.TableModel.ResetVolatileData()

            If Not o Is System.DBNull.Value AndAlso Not o Is Nothing AndAlso CBool(o) Then

                   e.Style.DataSource = colors

                   e.Style.DisplayMember = "color"

                   e.Style.ValueMember = "color"

                   e.Style.CellType = "GridListControl"

            Else

                   e.Style.DataSource = shapes

                   e.Style.DisplayMember = "shape"

                   e.Style.ValueMember = "shape"

                   e.Style.CellType = "GridListControl"

            End If

        End If

End Sub


{% endhighlight %}
