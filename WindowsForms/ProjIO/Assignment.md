---
layout: post
title: Assignment
description: assignment
platform: WindowsForms
control: ProjIO
documentation: ug
---

# Assignment

Assignment class is used to bind resources to tasks. It can also be used to retrieve the details of the task and resource that are bound together.

## Properties, Methods, and Events Tables for Task

### Constructors

_Table_ _13_: _Assignment Constructor_

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
Assignment.Assignment()</td><td>
Initializes a new instance of Assignment class.</td></tr>
</table>

### Properties

_Table_ _14_: _Assignment Properties_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
UID</td><td>
Gets or sets the unique identifier of the assignment.</td></tr>
<tr>
<td>
TaskUID</td><td>
Gets or sets the unique identifier of the task.</td></tr>
<tr>
<td>
ResourceUID</td><td>
Gets or sets the unique identifier of the resource.</td></tr>
<tr>
<td>
PercentWorkComplete</td><td>
Gets or sets the amount of work completed on the assignment.</td></tr>
<tr>
<td>
ActualCost</td><td>
Gets or sets the actual cost incurred on the assignment.</td></tr>
<tr>
<td>
ActualFinish</td><td>
Gets or sets the actual finish date of the assignment.</td></tr>
<tr>
<td>
ActualOvertimeCost</td><td>
Gets or sets the actual overtime cost incurred on the assignment.</td></tr>
<tr>
<td>
ActualOvertimeWork</td><td>
Gets or sets the actual amount of overtime work incurred on the assignment.</td></tr>
<tr>
<td>
ActualStart</td><td>
Gets or sets the actual start date of the assignment.</td></tr>
<tr>
<td>
ActualWork</td><td>
Gets or sets the actual amount of work incurred on the assignment.</td></tr>
<tr>
<td>
ACWP</td><td>
Gets or sets the actual cost of work performed on the assignment to-date.</td></tr>
<tr>
<td>
Confirmed</td><td>
Whether the Resource has accepted all of his or her assignments.</td></tr>
<tr>
<td>
Cost</td><td>
Gets or sets the projected or scheduled cost of the assignment.</td></tr>
<tr>
<td>
CostRateTable</td><td>
Gets or sets the cost rate table used for the assignment.</td></tr>
<tr>
<td>
CostVariance</td><td>
Gets or sets the difference between the cost and baseline cost for a resource.</td></tr>
<tr>
<td>
CV</td><td>
Gets or sets the earned value cost variance.</td></tr>
<tr>
<td>
Delay</td><td>
Gets or sets the amount that the assignment is delayed.</td></tr>
<tr>
<td>
Finish</td><td>
Gets or sets the scheduled finish date of the assignment.</td></tr>
<tr>
<td>
FinishVariance</td><td>
Gets or sets the variance of the assignment finish date from the baseline finish date.</td></tr>
<tr>
<td>
Hyperlink</td><td>
Gets or sets the title of the hyperlink associated with the assignment.</td></tr>
<tr>
<td>
HyperlinkAddress</td><td>
Gets or sets the hyperlink associated with the assignment.</td></tr>
<tr>
<td>
HyperlinkSubAddress</td><td>
Gets or sets the document bookmark of the hyperlink associated with the assignment.</td></tr>
<tr>
<td>
WorkVariance</td><td>
Gets or sets the variance of assignment work from the baseline work as minutes x 1000.</td></tr>
<tr>
<td>
HasFixedRateUnits</td><td>
Whether the Units are Fixed Rate.</td></tr>
<tr>
<td>
FixedMaterial</td><td>
Whether the consumption of the assigned material resource occurs in a single, fixed amount.</td></tr>
<tr>
<td>
LevelingDelay</td><td>
Gets or sets the delay caused by leveling.</td></tr>
<tr>
<td>
LevelingDelayFormat</td><td>
Gets or sets the format for expressing the duration of the delay.</td></tr>
<tr>
<td>
LinkedFields</td><td>
Whether the Project is linked to another OLE object.</td></tr>
<tr>
<td>
MileStone</td><td>
Whether the assignment is a milestone.</td></tr>
<tr>
<td>
Notes</td><td>
Gets or sets the text notes associated with the assignment.</td></tr>
<tr>
<td>
Overallocated</td><td>
Whether the assignment is over allocated.</td></tr>
<tr>
<td>
OvertimeCost</td><td>
Gets or sets the sum of the actual and remaining overtime cost of the assignment.</td></tr>
<tr>
<td>
OvertimeWork</td><td>
Gets or sets the scheduled overtime work scheduled for the assignment.</td></tr>
<tr>
<td>
PeakUnits</td><td>
Gets or sets the largest number of units that a resource is assigned for a task.</td></tr>
<tr>
<td>
RateScale</td><td>
Gets or sets the time unit for the usage rate of the material resource assignment.</td></tr>
<tr>
<td>
RegularWork</td><td>
Gets or sets the amount of non-overtime work scheduled for the assignment.</td></tr>
<tr>
<td>
RemainingCost</td><td>
Gets or sets the remaining projected cost of completing the assignment.</td></tr>
<tr>
<td>
RemainingOvertimeCost</td><td>
Gets or sets the remaining projected overtime cost of completing the assignment.</td></tr>
<tr>
<td>
RemainingOvertimeWork</td><td>
Gets or sets the remaining overtime work scheduled to complete the assignment.</td></tr>
<tr>
<td>
RemainingWork</td><td>
Gets or sets the remaining work scheduled to complete the assignment.</td></tr>
<tr>
<td>
ResponsePending</td><td>
Whether a response has been received for a TeamAssign message.</td></tr>
<tr>
<td>
Start</td><td>
Gets or sets the scheduled start date of the assignment.</td></tr>
<tr>
<td>
Stop</td><td>
Gets or sets the date that the assignment was stopped.</td></tr>
<tr>
<td>
Resume</td><td>
Gets or sets the date that the assignment resumed.</td></tr>
<tr>
<td>
StartVariance</td><td>
Gets or sets the variance of the assignment start date from the baseline start date.</td></tr>
<tr>
<td>
Summary</td><td>
Whether the task is a summary task.</td></tr>
<tr>
<td>
SV</td><td>
Gets or sets the earned value schedule variance, through the project status date.</td></tr>
<tr>
<td>
Units</td><td>
Gets or sets the number of units for the assignment.</td></tr>
<tr>
<td>
UpdateNeeded</td><td>
Whether the resource assigned to a task needs to be updated as to the status of the task.</td></tr>
<tr>
<td>
VAC</td><td>
Gets or sets the difference between baseline cost and total cost.</td></tr>
<tr>
<td>
Work</td><td>
Gets or sets the amount of scheduled work for the assignment.</td></tr>
<tr>
<td>
WorkContour</td><td>
Gets or sets the work contour of the assignment.</td></tr>
<tr>
<td>
BCWS</td><td>
Gets or sets the budgeted cost of work on the assignment.</td></tr>
<tr>
<td>
BCWP</td><td>
Gets or sets the budgeted cost of work performed on the assignment to-date.</td></tr>
<tr>
<td>
BookingType</td><td>
Gets or sets the booking type of the assignment.</td></tr>
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
CreationDate</td><td>
Gets or sets the date the assignment was created.</td></tr>
<tr>
<td>
AssnOwner</td><td>
Gets or sets the name of the assignment owner.</td></tr>
<tr>
<td>
AssnOwnerGuid</td><td>
Gets or sets the GUID of the assignment owner</td></tr>
<tr>
<td>
BudgetCost</td><td>
Gets or sets the budgeted amount for cost resources on this assignment.</td></tr>
<tr>
<td>
BudgetWork</td><td>
Gets or sets the budgeted work amount for work or material resources on this assignment.</td></tr>
<tr>
<td>
ExtendedAttribute</td><td>
Gets or sets the value of an extended attribute.  </td></tr>
<tr>
<td>
Baseline</td><td>
Gets or sets the collection of baseline values associated with the assignment.</td></tr>
<tr>
<td>
F404000 – F4040C8</td><td>
Gets or sets Project 2010 assignment enterprise custom field elements.</td></tr>
<tr>
<td>
TimePhasedData</td><td>
Gets or sets the time phased data associated with the assignment.</td></tr>
</table>

### Methods

_Table_ _15_: _Assignment Methods_

<table>
<tr>
<th>
Method </th><th>
Description </th></tr>
<tr>
<td>
Equals</td><td>
Returns a value indicating whether this instance is equal to a specified object</td></tr>
<tr>
<td>
GetHashCode</td><td>
Serves as a hash function for Assignment type</td></tr>
<tr>
<td>
GetType</td><td>
Gets the type of the current instance</td></tr>
<tr>
<td>
ToString</td><td>
Returns a string that represents the current object</td></tr>
</table>

## Adding Assignments to a Project

Assignments are used to bind the task and resources. Project class exposes Assignments collection that represents the list of all the Assignment objects in a project. This property can be used to add assignment. 

The code below shows adding assignments to a project:

{% highlight c# %}



// Creating an instance of the Project

Project project = new Project();



// Creating a task

Task task = new Task();

task.Name = "Task1";



// Adding the task to project

project.RootTask.Children.Add(task);



// Calculating Task ID

project.CalculateTaskIDs();



// Creating a resource

Resource resource = new Resource();

resource.Name = "Resource1";



// Adding resource to project

project.Resources.Add(resource)



// Calculating Resource ID

project.CalculateResourceIDs()



// Creating an instance of Assignment

Assignment assignment = new Assignment();

assignment.UID = 1;



// Assigning resource to task

assignment.Task = task;

assignment.Resource = resource;



// Adding resource to project

project.Resources.Add(resource);

{% endhighlight %}

{% highlight vbnet %}

' Creating an instance of Project

Dim project As Project = New Project()



' Creating an instance of Task

Dim task As Task = New Task()

task.Name = "Task1"



' Adding the task to project

project.RootTask.Children.Add(task)



' Calculating Task ID

project.CalculateTaskIDs()



' Creating an instance of Resource

Dim resource As Resource = New Resource()

resource.Name = "Resource1"



' Adding resource to project

project.Resources.Add(resource)



' Calculating Resource ID

project.CalculateResourceIDs()



' Creating an instance of Assignment

Dim assignment As Assignment = New Assignment()

assignment.UID = 1



' Assigning tasks and resource to assignment

assignment.Task = task

assignment.Resource = resource



' Adding an assignment to a project

project.Assignments.Add(assignment)

{% endhighlight %}

The project created using the above code will look as shown in the following Microsoft Project screenshot.

![](Assignment_images/Assignment_img1.jpeg)