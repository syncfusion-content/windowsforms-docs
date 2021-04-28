---
layout: post
title: Data Binding in Windows Forms MultiColumn TreeView | Syncfusion
description: Learn about Data Binding support in Syncfusion Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

MultiColumnTreeView does not have direct option to load/save from XML file. This below section will help to load/save MultiColumnTreeView from XML.

**Example**

{% tabs %}

{% highlight c# %}

  private void LoadTreeViewAdvXML()
        {
            XmlDocument xDoc = new XmlDocument();
            xDoc.Load("TreeView.xml");
            multiColumnTreeView1.Nodes.Clear();
            multiColumnTreeView1.Nodes.Add(new
          TreeNodeAdv(xDoc.DocumentElement.Name));
            TreeNodeAdv tNode = new TreeNodeAdv();
            tNode = (TreeNodeAdv)multiColumnTreeView1.Nodes[0];
            LoadFromXML(xDoc.DocumentElement, tNode);
            multiColumnTreeView1.ExpandAll();
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
                treeNode.Text = xmlNode.OuterXml.Trim();
        }

        /// <summary>
        /// To write details in XML Elements
        /// </summary>
        private XmlTextWriter XmlTextWriter;

        /// <summary>
        /// To save MultiColumnTreeView node information to XML File
        /// </summary>
        public void ExportToXML(MultiColumnTreeView tree, string filename)
        {
            XmlTextWriter = new XmlTextWriter(filename, System.Text.Encoding.UTF8);
            XmlTextWriter.WriteStartDocument();
            XmlTextWriter.WriteStartElement(multiColumnTreeView1.Nodes[0].Text);
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

{% highlight vb %}

    Private Sub LoadTreeViewAdvXML()
        Dim xDoc As XmlDocument = New XmlDocument()
        xDoc.Load("TreeView.xml")
        multiColumnTreeView1.Nodes.Clear()
        multiColumnTreeView1.Nodes.Add(New TreeNodeAdv(xDoc.DocumentElement.Name))
        Dim tNode As TreeNodeAdv = New TreeNodeAdv()
        tNode = CType(multiColumnTreeView1.Nodes(0), TreeNodeAdv)
        LoadFromXML(xDoc.DocumentElement, tNode)
        multiColumnTreeView1.ExpandAll()
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
            Next
        Else
            treeNode.Text = xmlNode.OuterXml.Trim()
        End If
    End Sub

    Private XmlTextWriter As XmlTextWriter

    Public Sub ExportToXML(ByVal tree As MultiColumnTreeView, ByVal filename As String)
        XmlTextWriter = New XmlTextWriter(filename, System.Text.Encoding.UTF8)
        XmlTextWriter.WriteStartDocument()
        XmlTextWriter.WriteStartElement(multiColumnTreeView1.Nodes(0).Text)

        For Each node As TreeNodeAdv In tree.Nodes
            SaveToXML(node.Nodes)
        Next

        XmlTextWriter.WriteEndElement()
        XmlTextWriter.Close()
    End Sub

    Private Sub SaveToXML(ByVal menu As TreeNodeAdvCollection)
        For Each node As TreeNodeAdv In menu

            If node.Nodes.Count > 0 Then
                XmlTextWriter.WriteStartElement(node.Text)
                SaveToXML(node.Nodes)
                XmlTextWriter.WriteEndElement()
            Else
                XmlTextWriter.WriteString(node.Text)
            End If
        Next
    End Sub

{% endhighlight %}

{% endtabs %}