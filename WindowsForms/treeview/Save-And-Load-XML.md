---
 layout: post
title: Save and Load XML in Windows Forms TreeView control | Syncfusion
description: Learn about Save and Load XML support in Syncfusion Windows Forms TreeView control and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# Save and Load XML in Windows Forms TreeView

`TreeViewAdv` does not have direct option to load/save from XML file. This below section will help to load/save TreeViewAdv from XML.


{% tabs %}
{% highlight c# %}

/// <summary>

/// To load TreeViewAdv from XML File

/// </summary>

private void LoadTreeViewAdvXML()
{
    XmlDocument xDoc = new XmlDocument();
    xDoc.Load("TreeView.xml");
    treeViewAdv1.Nodes.Clear();
    treeViewAdv1.Nodes.Add(new
    TreeNodeAdv(xDoc.DocumentElement.Name));
    TreeNodeAdv tNode = new TreeNodeAdv();
    tNode = (TreeNodeAdv)treeViewAdv1.Nodes[0];
    LoadFromXML(xDoc.DocumentElement, tNode);
    treeViewAdv1.ExpandAll();
}
private void LoadFromXML(XmlNode xmlNode, TreeNodeAdv treeNode)
{
    XmlNode xNode;
    TreeNodeAdv tNode;
    XmlNodeList xNodeList;
    if (xmlNode.HasChildNodes) 
    {
        xNodeList = xmlNode.ChildNodes;
        for (int x = 0; x <= xNodeList.Count - 1; x++)
        {
            xNode = xmlNode.ChildNodes[x];
            treeNode.Nodes.Add(new TreeNodeAdv(xNode.Name));
            tNode = treeNode.Nodes[x];
            LoadFromXML(xNode, tNode);
        }
    }
    else
    {
        //Retrieve child nodes of root node
        string text = GetAttributeText(xmlNode, "name");
        if (string.IsNullOrEmpty(text))
                    text = (xmlNode.OuterXml).Trim();
        if (treeNode.Text != text)
                    treeNode.Text = text;
        treeNode.Nodes.Clear();
    }
}
       
/// <summary>

/// To write details in XML Elements

/// </summary>
private XmlTextWriter XmlTextWriter;

/// <summary>

/// To save TreeViewAdv node information to XML File

/// </summary>
public void ExportToXML(TreeViewAdv tree, string filename)
{
    XmlTextWriter = new XmlTextWriter(filename, System.Text.Encoding.UTF8);
    XmlTextWriter.WriteStartDocument();
    XmlTextWriter.WriteStartElement(treeViewAdv1.Nodes[0].Text);
    foreach (TreeNodeAdv node in tree.Nodes)
    {
        SaveToXML(node.Nodes);
    }
    XmlTextWriter.WriteEndElement();
    XmlTextWriter.Close();
}

/// <summary>

/// Iterate function helps to save TreeNodeAdv information to XML

/// </summary>
private void SaveToXML(TreeNodeAdvCollection menu)
{
    foreach (TreeNodeAdv node in menu)
    {
        if (node.Nodes.Count > 0)
        {
            XmlTextWriter.WriteStartElement(node.Text);
            SaveToXML(node.Nodes);
            XmlTextWriter.WriteEndElement();
        }
        else
        {
            XmlTextWriter.WriteString(node.Text);
        }
    }
}

{% endhighlight %}

{% highlight VB %}

''' <summary>

''' To load TreeViewAdv from XML File

''' </summary>
Private Sub LoadTreeViewAdvXML()
Dim xDoc As New XmlDocument()
xDoc.Load("TreeView.xml")
treeViewAdv1.Nodes.Clear()
treeViewAdv1.Nodes.Add(New TreeNodeAdv(xDoc.DocumentElement.Name))
Dim tNode As New TreeNodeAdv()
tNode = CType(treeViewAdv1.Nodes(0), TreeNodeAdv)
LoadFromXML(xDoc.DocumentElement, tNode)
treeViewAdv1.ExpandAll()
End Sub
Private Sub LoadFromXML(ByVal xmlNode As XmlNode, ByVal treeNode As TreeNodeAdv)
Dim xNode As XmlNode
Dim tNode As TreeNodeAdv
Dim xNodeList As XmlNodeList
If xmlNode.HasChildNodes Then
xNodeList = xmlNode.ChildNodes
For x As Integer = 0 To xNodeList.Count - 1
xNode = xmlNode.ChildNodes(x)
treeNode.Nodes.Add(New TreeNodeAdv(xNode.Name))
tNode = treeNode.Nodes(x)
LoadFromXML(xNode, tNode)
Next x
Else
Dim text As String = GetAttributeText(xmlNode, "name")
If String.IsNullOrEmpty(text) Then text = (xmlNode.OuterXml).Trim()
If treeNode.Text IsNot text Then treeNode.Text = text
treeNode.Nodes.Clear()
End If End Sub

''' <summary>

''' To write details in XML Elements

''' </summary>
Private XmlTextWriter As XmlTextWriter

''' <summary>

''' To save TreeViewAdv node information to XML File

''' </summary>
Public Sub ExportToXML(ByVal tree As TreeViewAdv, ByVal filename As String)
XmlTextWriter = New XmlTextWriter(filename, System.Text.Encoding.UTF8)
XmlTextWriter.WriteStartDocument()
XmlTextWriter.WriteStartElement(treeViewAdv1.Nodes(0).Text)
For Each node As TreeNodeAdv In tree.Nodes
SaveToXML(node.Nodes)
Next node
XmlTextWriter.WriteEndElement()
XmlTextWriter.Close()
End Sub

''' <summary>

''' Iterate function helps to save TreeNodeAdv information to XML

''' </summary>

Private Sub SaveToXML(ByVal menu As TreeNodeAdvCollection)
For Each node As TreeNodeAdv In menu
If node.Nodes.Count > 0 Then
XmlTextWriter.WriteStartElement(node.Text)
SaveToXML(node.Nodes)
XmlTextWriter.WriteEndElement()
Else
XmlTextWriter.WriteString(node.Text)
End If
Next node
End Sub

{% endhighlight %}
{% endtabs %}

You can download the sample [here](http://www.syncfusion.com/downloads/support/directtrac/general/ze/TREEVI~1932187720).
