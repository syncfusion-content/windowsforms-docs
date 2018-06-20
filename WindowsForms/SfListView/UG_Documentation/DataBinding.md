---
layout: post
title: Data Binding
description: This section explains about the DataBinding support in SfListView.
platform: windowsforms
control: SfListView
documentation: ug
---

#Data Binding
The data source can be bound by using `SfListView.DataSource` property. The following properties control the data binding,

*	Display Member -  A property of the underlying datasource to display for SfListView. 
*	Value Member - A property to use as the actual value for the items.

{% tabs %}
{% highlight c# %}
sfListView1.DataSource = GetDataSource();
sfListView1.DisplayMember = "CountryName";
sfListView1.ValueMember = "Continent";
{% endhighlight %}
{% highlight vb %}
sfListView1.DataSource = GetDataSource()
sfListView1.DisplayMember = "CountryName"
sfListView1.ValueMember = "Continent"
{% endhighlight %}
{% endtabs %}
               
![](DataBinding_images/DataBinding_img1.png)
			    
## Events

### SourcePropertyChanged

`SourcePropertyChanged` event is raised when the CountryInfo Property value is changed, if the CountryInfo Implements the `INotifyPropertyChanged` interface. The event receives with two arguments namely sender that handles the CountryInfo and `PropertyChangedEventArgs` as object.
PropertyChangedEventArgs has below property,

`PropertyName` – It denotes the PropertyName of the changed value.

{% tabs %}
{% highlight c# %}
sfListView1.View.SourcePropertyChanged += new PropertyChangedEventHandler(View_SourcePropertyChanged);
private void View_SourcePropertyChanged(object sender, PropertyChangedEventArgs e)
{

}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.View.SourcePropertyChanged, AddressOf View_SourcePropertyChanged
Private Sub View_SourcePropertyChanged(ByVal sender As Object, ByVal e As PropertyChangedEventArgs)

End Sub
{% endhighlight %}
{% endtabs %}

### SourceCollectionChanged
`SourceCollectionChanged` event is raised when source collection is changed for example add or remove the collection. The event receives two arguments namely sender that handles `SfListView.View` object and `NotifyCollectionChangedEventArgs` as object.

NotifyCollectionChangedEventArgs has below properties,

* `Action` - It contains the current action. (i.e.) Add, Remove, Move, Replace and Reset.
* `NewItems` - It contains the list of new items involved in the change.
* `OldItems` - It contains the list of old items affected by the Action.
* `NewStartingIndex` - It contains the index at which the change occurred.
* `OldStartingIndex` - It contains the index at which the Action occurred.

{% tabs %}
{% highlight c# %}
sfListView1.View.SourceCollectionChanged += new NotifyCollectionChangedEventHandler(View_SourceCollectionChanged)
private void View_SourceCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
{

}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.View.SourceCollectionChanged, AddressOf View_SourceCollectionChanged
Private Sub View_SourceCollectionChanged(ByVal sender As Object, ByVal e As NotifyCollectionChangedEventArgs)

End Sub
{% endhighlight %}
{% endtabs %}