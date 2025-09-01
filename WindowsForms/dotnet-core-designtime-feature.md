---
layout: post
title: .NET Core | DesignTime | Windows Forms | Syncfusion®
description: Learn about Microsoft's WinForms Designer SDK Package for .NET Core Design-Time Features, usage, and key advantages.
platform: windowsforms
control: .NET Core
documentation: ug
---

# .NET Core Design-Time Features

## Overview

We have expanded design-time support—such as Smart Tags, Custom Collection Editors, and Custom Forms for UITypeEditor—to include controls targeting .NET 6 and higher, which were previously available only in the .NET Framework.

## Why We Use the WinForms Designer SDK
Microsoft has introduced the **WinForms Designer SDK** NuGet package to support custom design-time experiences in Visual Studio for .NET Core and later versions. This SDK replaces the traditional designer APIs that were previously part of the .NET Framework and Windows OS.

The new Designer SDK offers several key advantages:

* Independent of the operating system
* Not reliant on the .NET Framework
* Fully integrated with Visual Studio

It provides essential extension points and base classes that allow developers to implement advanced design-time features such as, **Smart Tags, Custom Collection Editors, Custom Forms for UITypeEditor**.

These features are now available for controls targeting .NET 6 and higher.

To enable this functionality, we have included the **WinForms Designer SDK** as a dependency in our control NuGet packages starting from this version **v26.1.35**. This ensures a consistent and enhanced design-time experience across modern .NET platforms.

## Control Package Details
We have added the **WinForms Designer SDK** as a dependency in the following control packages. Please refer to the table below for details:

<table>
<tr>

<th>
Control Package name
</th>
<th>
Designer SDK Dependency Added
</th>
</tr>
<tr>
<td>
Syncfusion.Tools.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Base
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Diagram.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Gauge.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Grouping.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Maps.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.PivotTable.WinForms
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.SfInput.WinForms
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.Spreadsheet.Windows
</td>
<td>
Yes
</td>
</tr>
<tr>
<td>
Syncfusion.TreeMap.Windows
</td>
<td>
Yes
</td>
</tr>
</table>

N> The listed package assemblies are built against the Designer SDK to provide integrated support for designer functionalities.