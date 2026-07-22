---
layout: post
title: Suggestions in Windows Forms AI AssistView control | Syncfusion
description: Learn about the suggestion feature that displays AI-driven suggestions in the bottom right corner of the AI AssistView control.
platform: windowsforms
control: SfAIAssistView
documentation: ug
---

# Suggestions in Windows Forms AI AssistView

Use the [`Suggestions`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.AIAssistView.SfAIAssistView.html#Syncfusion_WinForms_AIAssistView_SfAIAssistView_Suggestions) property to display AI-driven suggestions in the bottom-right corner of the AssistView, so users can quickly respond or select from relevant options.

## ViewModel

The following `ViewModel` populates `Chats` with a sample conversation and updates the `Suggestion` collection once the bot response is added. The collection is mutated in place (via `Add`) so the bound `ObservableCollection` notifies the UI of the change:

{% tabs %}

{% highlight c# %}
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;
using Syncfusion.WinForms.AIAssistView;

public class ViewModel : INotifyPropertyChanged
{
    private ObservableCollection<object> chats;
    private Author currentUser;
    private ObservableCollection<string> suggestion;

    public ViewModel()
    {
        this.Chats = new ObservableCollection<object>();
        this.CurrentUser = new Author { Name = "John" };
        this.Suggestion = new ObservableCollection<string>();
        this.GenerateMessages();
    }

    private async Task GenerateMessages()
    {
        this.Chats.Add(new TextMessage { Author = CurrentUser, Text = "What is Windows Forms?" });
        await Task.Delay(1000);
        this.Chats.Add(new TextMessage
        {
            Author = new Author { Name = "Bot" },
            Text = "Windows Forms (also known as WinForms) is a graphical user interface (GUI) framework developed by Microsoft for building desktop applications for the Windows operating system."
        });

        // Mutate the existing collection so the bound UI updates automatically
        this.Suggestion.Add("What is the future of WinForms?");
        this.Suggestion.Add("How does WinForms handle UI rendering?");
    }

    public ObservableCollection<string> Suggestion
    {
        get { return this.suggestion; }
        set
        {
            this.suggestion = value;
            RaisePropertyChanged(nameof(Suggestion));
        }
    }

    public ObservableCollection<object> Chats
    {
        get { return this.chats; }
        set
        {
            this.chats = value;
            RaisePropertyChanged(nameof(Chats));
        }
    }

    public Author CurrentUser
    {
        get { return this.currentUser; }
        set
        {
            this.currentUser = value;
            RaisePropertyChanged(nameof(CurrentUser));
        }
    }

    public void RaisePropertyChanged(string propName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propName));
    }

    public event PropertyChangedEventHandler PropertyChanged;
}
{% endhighlight %}

{% endtabs %}

## Binding the Suggestions Property

Bind the control's `Suggestions` property to the `ViewModel.Suggestion` collection:

{% tabs %}

{% highlight c# %}
public partial class Form1 : Form
{
    ViewModel viewModel;

    public Form1()
    {
        InitializeComponent();
        viewModel = new ViewModel();

        SfAIAssistView sfAIAssistView1 = new SfAIAssistView();
        sfAIAssistView1.Location = new System.Drawing.Point(41, 40);
        sfAIAssistView1.Size = new System.Drawing.Size(818, 457);
        sfAIAssistView1.Dock = DockStyle.Fill;
        this.Controls.Add(sfAIAssistView1);

        sfAIAssistView1.DataBindings.Add("Messages", viewModel, "Chats", true, DataSourceUpdateMode.OnPropertyChanged);
        sfAIAssistView1.DataBindings.Add("Suggestions", viewModel, "Suggestion", true, DataSourceUpdateMode.OnPropertyChanged);
    }
}
{% endhighlight %}

{% endtabs %}

![WindowsForms AI AssistView control Suggestions](aiassistview_images/windowsforms_aiassistview_suggestions.png)

## Handling Suggestion Clicks

The `SuggestionSelected` event occurs when a user clicks a suggestion displayed in the AI AssistView. Use this event to retrieve the selected suggestion text and perform custom actions, such as sending the suggestion as a new prompt, generating a response, or updating the conversation.

The selected item is available through the `Item` property of the `SuggestionSelectedEventArgs`.

{% tabs %}

{% highlight c# %}

sfAIAssistView1.SuggestionSelected += AiAssistView_SuggestionSelected;

private void AiAssistView_SuggestionSelected(
    object sender,
    SuggestionSelectedEventArgs e)
{
    string suggestionText = e.Item?.ToString();

    if (string.IsNullOrWhiteSpace(suggestionText))
        return;

    // Handle the selected suggestion.
    // For example, add it as a user message or forward it to an AI service.

    viewModel.Chats.Add(new TextMessage
    {
        Author = viewModel.CurrentUser,
        Text = suggestionText
    });
}

{% endhighlight %}

{% endtabs %}