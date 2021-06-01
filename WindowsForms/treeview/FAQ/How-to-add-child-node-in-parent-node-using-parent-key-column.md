---
 layout: post
title: How to add the child node using parent key | WindowsForms | Syncfusion
description: How to add the childnode in parent node using the parent key column in Syncfusion Windows Forms TreeViewAdv control.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to add the child node in parent node using the parent key column

You can add the child node in parent node using parent key column in TreeViewAdv control by using Add() method. This can be done by the following below steps,

1.Initialize the DataTable with required data in combination of rows and columns.
2.Integrate the DataTable in DataSet and define the parent child relation.
3.Create the TreeNodeAdv in iteration process from DataTable and load it in TreeViewAdv control.

{% tabs %}

{% highlight C# %}

//Use a DataSet to manage the data
DataSet ds = new DataSet();

public Form1()
{
    InitializeComponent();
    // DataTable
    DataTable dt = new DataTable("AddressLists");

    //Add columns to the DataTable
    dt.Columns.Add("Name", typeof(string));
    dt.Columns.Add("Parent", typeof(string));

    //Add rows to the DataTable
    dt.Rows.Add(new string[] { "Root", "0" });
    dt.Rows.Add(new string[] { "Work", "Root" });
    dt.Rows.Add(new string[] { "Home", "Root" });
    dt.Rows.Add(new string[] { "One", "Work" });
    dt.Rows.Add(new string[] { "Two", "Work" });
    dt.Rows.Add(new string[] { "One", "Home" });
    dt.Rows.Add(new string[] { "Two", "Home" });
    dt.Rows.Add(new string[] { "Three", "Home" });
    dt.Rows.Add(new string[] { "Other", "Root" });

    //Add DataTable to the DataSet
    ds.Tables.Add(dt);
    
    //Add a relationship
    ds.Relations.Add("TreeParentChild", ds.Tables["AddressLists"].Columns["Name"],
    ds.Tables["AddressLists"].Columns["Parent"], false);
}

/// <summary>
/// To Populate TreeView
/// </summary>

public void PopulateTree(DataRow dr, TreeNodeAdv pNode)
{
    //To iterate through all the rows in the DataSet
    foreach (DataRow row in dr.GetChildRows("TreeParentChild"))
    {
        //Creating a TreeNode for each row
        TreeNodeAdv cChild = new TreeNodeAdv(row["Name"].ToString());
        //Add cChild node to the pNode
        pNode.Nodes.Add(cChild);
        //Recursively build the tree
        PopulateTree(row, cChild);
    }
}
        
/// <summary>
/// Button click event
/// </summary>
private void buttonAdv1_Click(object sender, EventArgs e)
{
    //Iterate all the rows in the DataSet
    foreach (DataRow dr in ds.Tables["AddressLists"].Rows)
    {
        if (dr["Parent"].ToString() == "0")
        {
            //Creates a TreeNode if the parent equals 0
            TreeNodeAdv root = new TreeNodeAdv(dr["Name"].ToString());
            treeViewAdv1.Nodes.Add(root);
            //Recursively builds the tree
            PopulateTree(dr, root);
        }
    }
    //Expands all the tree nodes
    treeViewAdv1.ExpandAll();
}

{% endhighlight %}

{% endtabs %}
