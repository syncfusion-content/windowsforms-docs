---
layout: post
title: Resource | Windows Forms | Syncfusion
description: resource
platform: windowsforms
control: ProjIO
documentation: ug
---

# Resource

Resources class can be used to create resources and add them to Projects. However, creating resources do not assign them to tasks. One has to explicitly assign the resources to tasks using Assignment class (4.4).Using the Resources class, one can create, add, and modify resources to projects. It can also be used to retrieve resource information.

## Properties, Methods, and Events Tables for Task

### Constructors

_Table_ _10_: _Resource Constructor_

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
Resource.Resource()</td><td>
Initializes a new instance of the Resource class.</td></tr>
</table>

### Properties

_Table_ _11_: _Resource Properties_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
UID</td><td>
Gets or sets the unique identifier of the resource</td></tr>
<tr>
<td>
ID</td><td>
Gets or sets the position identifier of the resource within the list of resources</td></tr>
<tr>
<td>
Name</td><td>
Gets or sets the name of the resource</td></tr>
<tr>
<td>
Type</td><td>
Gets or sets the type of resource</td></tr>
<tr>
<td>
IsNull</td><td>
True if the resource is null</td></tr>
<tr>
<td>
Initials</td><td>
Gets or sets the initials of the resource</td></tr>
<tr>
<td>
Phonetics</td><td>
Gets or sets the phonetic spelling of the resource name.  For use with Japanese only.</td></tr>
<tr>
<td>
NTAccount</td><td>
Gets or sets the NT account associated with the resource</td></tr>
<tr>
<td>
MaterialLabel</td><td>
Gets or sets the unit of measure for the material resource</td></tr>
<tr>
<td>
Code</td><td>
Gets or sets the code or other information about the resource</td></tr>
<tr>
<td>
Group</td><td>
Gets or sets the group to which the resource belongs</td></tr>
<tr>
<td>
WorkGroup</td><td>
Gets or sets the type of workgroup to which the resource belongs</td></tr>
<tr>
<td>
EmailAddress</td><td>
Gets or sets the email address of the resource</td></tr>
<tr>
<td>
Hyperlink</td><td>
Gets or sets the title of the hyperlink associated with the resource</td></tr>
<tr>
<td>
HyperlinkAddress</td><td>
Gets or sets the hyperlink associated with the resource</td></tr>
<tr>
<td>
HyperlinkSubAddress</td><td>
Gets or sets the document bookmark of the hyperlink associated with the resource</td></tr>
<tr>
<td>
MaxUnits</td><td>
Gets or sets the maximum number of units that the resource is available</td></tr>
<tr>
<td>
PeakUnits</td><td>
Gets or sets the largest number of units assigned to the resource at any time</td></tr>
<tr>
<td>
OverAllocated</td><td>
True if the resource is over allocated.</td></tr>
<tr>
<td>
AvailableFrom</td><td>
Gets or sets the first date that the resource is available.</td></tr>
<tr>
<td>
AvailableTo</td><td>
Gets or sets the last date the resource is available.</td></tr>
<tr>
<td>
Start</td><td>
Gets or sets the scheduled start date of the resource.</td></tr>
<tr>
<td>
Finish</td><td>
Gets or sets the scheduled finish date of the resource.</td></tr>
<tr>
<td>
CanLevel</td><td>
True if the resource can be leveled.</td></tr>
<tr>
<td>
AccrueAt</td><td>
Gets or sets how cost is accrued against the resource.</td></tr>
<tr>
<td>
Work</td><td>
Gets or sets the total work assigned to the resource across all assigned tasks.</td></tr>
<tr>
<td>
RegularWork</td><td>
Gets or sets the amount of non-overtime work assigned to the resource.</td></tr>
<tr>
<td>
OvertimeWork</td><td>
Gets or sets the amount of overtime work assigned to the resource.</td></tr>
<tr>
<td>
ActualWork</td><td>
Gets or sets the amount of actual work performed by the resource.</td></tr>
<tr>
<td>
RemainingWork</td><td>
Gets or sets the amount of remaining work required to complete all assigned tasks.</td></tr>
<tr>
<td>
ActualOvertimeWork</td><td>
Gets or sets the amount of actual overtime work performed by the resource.</td></tr>
<tr>
<td>
RemainingOvertimeWork</td><td>
Gets or sets the amount of remaining overtime work required to complete all tasks.</td></tr>
<tr>
<td>
PercentWorkComplete</td><td>
Gets or sets the percentage of work completed across all tasks.</td></tr>
<tr>
<td>
StandardRate</td><td>
Gets or sets the standard rate of the resource. This value is as of the current date if a rate table exists for the resource.</td></tr>
<tr>
<td>
StandardRateFormat</td><td>
Gets or sets the units used by Microsoft Project to display the standard rate.</td></tr>
<tr>
<td>
Cost</td><td>
Gets or sets the total project cost for the resource across all assigned tasks.</td></tr>
<tr>
<td>
OvertimeRate</td><td>
Gets or sets the overtime rate of the resource. This value is as of the current date if a rate table exists for the resource.</td></tr>
<tr>
<td>
OvertimeRateFormat</td><td>
Gets or sets the units used by Microsoft Project to display the overtime rate.</td></tr>
<tr>
<td>
OvertimeCost</td><td>
Gets or sets the total overtime cost for the resource including actual and remaining overtime costs.</td></tr>
<tr>
<td>
CostPerUse</td><td>
Gets or sets the cost per use of the resource. This value is as of the current date if a rate table exists for the resource.</td></tr>
<tr>
<td>
ActualCost</td><td>
Gets or sets the actual cost incurred by the resource across all assigned tasks.</td></tr>
<tr>
<td>
ActualOvertimeCost</td><td>
Gets or sets the actual overtime cost incurred by the resource across all assigned tasks.</td></tr>
<tr>
<td>
Remaining Cost</td><td>
Gets or sets the remaining projected cost of the resource to complete all assigned tasks.</td></tr>
<tr>
<td>
RemainingOvertimeCost</td><td>
Gets or sets the remaining projected overtime cost of the resource to complete all assigned tasks.</td></tr>
<tr>
<td>
WorkVariance</td><td>
Gets or sets the difference between the baseline work and the work as minutes x 1000.</td></tr>
<tr>
<td>
CostVariance</td><td>
Gets or sets the difference between the baseline cost and the cost.</td></tr>
<tr>
<td>
SV</td><td>
Gets or sets the earned value schedule variance, through the project status date.</td></tr>
<tr>
<td>
CV </td><td>
Gets or sets the earned value cost variance, through the project status date.</td></tr>
<tr>
<td>
ACWP</td><td>
Gets or sets the actual cost of the work performed by the resource for the project to-date.</td></tr>
<tr>
<td>
CalendarUID</td><td>
Gets or sets the resource calendar. Refers to a valid UID in the Calendars collection.</td></tr>
<tr>
<td>
Notes</td><td>
Gets or sets the text notes associated with the resource.</td></tr>
<tr>
<td>
BCWS</td><td>
Gets or sets the budget cost of work scheduled for the resource.</td></tr>
<tr>
<td>
BCWP</td><td>
Gets or sets the budgeted cost of the work performed by the resource for the project to-date.</td></tr>
<tr>
<td>
IsGeneric</td><td>
True if the resource is generic.</td></tr>
<tr>
<td>
IsInactive</td><td>
True if the resource is set to inactive.</td></tr>
<tr>
<td>
IsEnterprise</td><td>
True if the resource is an Enterprise resource.</td></tr>
<tr>
<td>
BookingType</td><td>
Gets or sets the booking type of the resource.</td></tr>
<tr>
<td>
ActualWorkProtected</td><td>
Gets or sets the duration through which actual work is protected.</td></tr>
<tr>
<td>
ActualOvertimeWorkProtected</td><td>
Gets or sets the duration through which actual overtime work is protected.</td></tr>
<tr>
<td>
ActiveDirectoryGUID</td><td>
Gets or sets the Active Directory GUID for the resource.</td></tr>
<tr>
<td>
CreationDate</td><td>
Gets or sets the date the resource was created.</td></tr>
<tr>
<td>
ExtendedAttribute</td><td>
Gets or sets the value of an extended attribute.</td></tr>
<tr>
<td>
Baseline</td><td>
Gets or sets the baseline values for the resources.</td></tr>
<tr>
<td>
OutlineCode</td><td>
Gets or sets the value of an outline code.</td></tr>
<tr>
<td>
IsCostResource</td><td>
True if the resource is a cost resource.</td></tr>
<tr>
<td>
AssnOwner</td><td>
Gets or sets the name of the assignment owner.</td></tr>
<tr>
<td>
AssnOwnerGuid</td><td>
Gets or sets the GUID of the assignment owner.</td></tr>
<tr>
<td>
IsBudget</td><td>
True if the resource is a budget resource.</td></tr>
<tr>
<td>
AvailabilityPeriods</td><td>
Gets or sets the collection of periods during which the resource is available.</td></tr>
<tr>
<td>
Rates</td><td>
Gets or sets the collection of periods and the rates associated with each one.</td></tr>
<tr>
<td>
TimePhasedData</td><td>
Gets or sets the time phased data.</td></tr>
</table>

### Methods

_Table_ _12_: _Resource Methods_

<table>
<tr>
<th>
Method </th><th>
Description </th></tr>
<tr>
<td>
Equals</td><td>
Returns a value indicating whether this instance is equal to a specified object.</td></tr>
<tr>
<td>
GetHashCode</td><td>
Serves as a hash function for Resource type.</td></tr>
<tr>
<td>
GetType</td><td>
Gets the type of the current instance.</td></tr>
<tr>
<td>
ToString</td><td>
Returns a string that represents the current object.</td></tr>
</table>

## Adding Resources to a Project

Resources property exposed by Project class represents the list of all the Resource objects in a project. This property can be used to add resources.

The following code snippet illustrates adding resources to a project.

{% highlight c# %}
// Creating an instance of the Project
Project project = new Project();
// Creating resource
Resource resource = new Resource();
resource.Name = "Resource1";
// Adding resource to project
project.Resources.Add(resource);

{% endhighlight %}

{% highlight vbnet %}
'Creating an instance of the Project
Dim project As Project = New Project()
' Creating resource
Dim resource As Resource = New Resource()
resource.Name = "Resource1"
' Adding resource to Project
project.Resources.Add(resource)

{% endhighlight %}

## Writing Resources to a Project

Resources property exposed by Project class represents the list of all the Resource objects in a project. This property can be used to update resources in a project.

The following code shows how to write resources to a project.

{% highlight c# %}



// Creating an instance of the Project

Project project = new Project();



// Creating resource

Resource resource = new Resource();

resource.Name = "Resource1";



// Adding resource to project

project.Resources.Add(resource);



// Calculating Resource IDs and UIDs

project.CalculateResourceIDs();



// Saving the project

project.Save("Project With Resources.xml");

{% endhighlight %}

{% highlight vbnet %}

' Creating an instance of the Project

Dim project As Project = New Project()



' Creating resource

Dim resource As Resource = New Resource()

resource.Name = "Resource1"



' Adding resource to Project

project.Resources.Add(resource)



' Calculating Resource IDs and UIDs

project.CalculateResourceIDs()



' Saving the project

project.Save(@"D:\Project With Resources.xml")

{% endhighlight %}