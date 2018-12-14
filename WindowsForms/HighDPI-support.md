---
layout: post
title: High DPI support | Windows Forms | Syncfusion
description: This section explains about how the high DPI support provides for our Syncfusion Windows Forms controls
platform: WindowsForms
control: General
documentation: ug
---

# High DPI Support

DPI stands for Dots Per Inch is the number of pixels or points rendered in one inch on the interface. The high DPI displays are displayed with an increased number of pixel density compared to the default or standard DPI screen.

## DPI awareness

Desktop application fall into two categories based on the DPI awareness:

* Non-DPI aware application
* DPI aware application

### Non-DPI aware application

Non-DPI aware applications always render at 96 DPI, scale it up to the actual DPI, and leave entire scaling to the operating system. It keeps your application layout intact at the cost of quality - blurred images and more.

Refer to the following DataGrid sample demo screenshot that runs under 192 DPI with blurred text and icons.

![windows forms High DPI support with default scaling](HighDPI_images/HighDPI_img1.jpeg)

### DPI aware application

The applications render themselves based on the actual DPI of a screen and provide a much better visual experience. The controls or applications needs manual implementation, such DPI awareness by retrieving the current monitor DPI value, scaling its content, applying different icon sets, and more. 

The following DataGrid sample demo screenshot runs under 192 DPI, you can see the better quality of text and icon.

![windows forms High DPI support with DPI scaling](HighDPI_images/HighDPI_img2.jpeg)

## DPI compatibility

To access your applications DPI compatibility, test your application at a variety of resolutions with different high DPI settings.

The following table provides a recommended set of DPI settings and minimum resolutions to consider when testing the DPI awareness level.

<table>
<tr>
<td>
{{'**DPI**'| markdownify }}
</td>
<td>
{{'**Scaling**'| markdownify }}
</td>
<td>
{{'**Minimum resolution**'| markdownify }}
</td>
</tr>
<tr>
<td>
96
</td>
<td>
100%
</td>
<td>
1024*720
</td>
</tr>
<tr>
<td>
120
</td>
<td>
125%
</td>
<td>
1280*960
</td>
</tr>
<tr>
<td>
144
</td>
<td>
150%
</td>
<td>
1536*1080
</td>
</tr>
<tr>
<td>
192
</td>
<td>
200%
</td>
<td>
2048*1440
</td>
</tr>
</table>

The application or control created in 96 DPI value must be properly changed based on the current DPI values when trying to use the control or application to other DPI values.

## DPI scaling

The DPI scaling mechanism calculates the scaling difference between the system that form has been designed on and the running system. This DPI scaling will only trigger if your application declares to be DPI aware. Otherwise, the system will be rendered in the default DPI (96 DPI) sandbox and bitmap scaling of the OS will be used.

You have probably noticed the following two properties:

* [AutoScaleDimensions](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.containercontrol.autoscaledimensions?view=netframework-4.7.2#System_Windows_Forms_ContainerControl_AutoScaleDimensions): The Visual Studio designer will serialize the dimensions of the unit used for comparison either font or DPI. When running the form with different DPI settings, its dimensions will be obtained and compared against the serialized dimensions. The scaling factor is computed based on that, then it is applied.
* [AutoScaleMode](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.containercontrol.autoscalemode?view=netframework-4.7.2#System_Windows_Forms_ContainerControl_AutoScaleMode): Indicates the method to calculate the scale factor. Depending on it, the scaling mechanism will calculate the scale factor according to the dimensions of the system font or system DPI. If the AutoScaleMode is set to `None`, the automatic scaling will be disabled. When the scale factor is calculated, the framework calls the scale method of form which basically recalculates the size and the location of child controls on it. Their scale method is also called as properly scale.

{% tabs %}
{% highlight c# %}

this.AutoScaleDimensions = new System.Drawing.SizeF(5F, 12F);
this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
{% endhighlight %}

{% highlight vb %}
Me.AutoScaleDimensions = New System.Drawing.SizeF(5F, 12F)
Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
{% endhighlight %}
{% endtabs %}

## Enable high DPI support

To turn your desktop application into DPI-aware and add `app.manifest` file, follow the steps:

1.Right click the sample project.

2.Click `Add`, select `New Item` or press the `CTRL+SHIFT+A` shortcut.

3.Search for the **Application Manifest File** item and click `Add`.

![windows forms High DPI showing adding manifest file](HighDPI_images/HighDPI_img3.jpeg)

4.When setting the `dpiAware` to true, the control will be drawn using the current DPI value. In this, the font size and image size will be automatically increased. The high DPI controls can be enabled by the following code snippet.

{% tabs %}
{% highlight xaml %}

  <application xmlns="urn:schemas-microsoft-com:asm.v3">
    <windowsSettings>
      <dpiAware xmlns="http://schemas.microsoft.com/SMI/2005/WindowsSettings">true</dpiAware>
    </windowsSettings>
  </application>

{% endhighlight xaml %}
{% endtabs %}

5.Most of the Syncfusion controls support high DPI through manifest file. But, the following Syncfusion controls provides the high DPI support by adding both manifest file and enabling the [DpiAware](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~DpiAware.html) property.

* GridControl
* GridGroupingControl
* GridDataBoundGrid
* GridListControl

{% tabs %}
{% highlight c# %}

//To enable DpiAware in GridControl
gridControl.DpiAware = true;

//To enable DpiAware in GridDataBoundGrid control
gridDataBoundGrid1.DpiAware = true;

//To enable DpiAware in GridGroupingControl
this.gridGroupingControl1.TableControl.DpiAware = true;

//To enable DpiAware in GridListControl
gridListControl1.Grid.DpiAware = true;

{% endhighlight %}

{% highlight vb %}
'To enable DpiAware in GridControl
gridControl.DpiAware = True

'To enable DpiAware in GridDataBoundGrid control
gridDataBoundGrid1.DpiAware = True

'To enable DpiAware in GridGroupingControl
Me.gridGroupingControl1.TableControl.DpiAware = True

'To enable DpiAware in GridListControl
gridListControl1.Grid.DpiAware = True

{% endhighlight %}
{% endtabs %}