---
layout: post
title: Using-UndoRedo
description: using undo/redo
platform: windowsform
control: GridControl
documentation: ug
---

# Using Undo/Redo

Essential Grid supports Undo/Redo functionalities similar to the one achieved with MS-Office type application. To handle this functionality, a stack is maintained internally in Essential Grid to save the changes handled through which the following tasks can be accomplished by the users directly.

* Allows to control the stack - when to save/unsave the changes and when to rollback changes.
* Allows to create new transactions and control each individual transaction (like cancelling, rollback) without affecting the others.

The Undo/Redo architecture is extensible thereby allowing the users to derive base class and add some more requirements to the Essential Grid.

## The Basics

Essential Grid  has GridCommandStack class that implements support for the Undo/Redo commands in a grid. Depending upon the grid settings, as a user makes changes to the grid these changes will be tracked in stack structures, which will be found in the GridCommandStack class. This class has methods that will allow you to undo the last action, redo the last undone action and batch transactions so that a series of actions can be undone or redone in a single step. 

The CommandStack property of the GridControl class will return a reference to GridCommandStack object that is associated with a grid. It is through this property that you can access the Undo/Redo support in an Essential Grid. For example, you can use the enabled property of the CommandStack to control whether or not the grid is supporting an Undo/Redo at any given moment. Here is the code sample that shows you some CommandStack properties.




{% highlight c#  %}


//Turns off the Undo buffer. 

this.gridControl1.CommandStack.Enabled = false;



//Turns on the Undo buffer.

this.gridControl1.CommandStack.Enabled = true;



//Clears the Undo buffer.

this.gridControl1.CommandStack.UndoStack.Clear();



//Clears the Redo buffer.

this.gridControl1.CommandStack.RedoStack.Clear();



//Clears both Undo and Redo buffers.

this.gridControl1.CommandStack.Clear();



{% endhighlight   %}
{% highlight vbnet  %}



'Turns off the Undo buffer.  

Me.gridControl1.CommandStack.Enabled = False



'Turns on the Undo buffer.

Me.gridControl1.CommandStack.Enabled = True



'Clears the Undo buffer.

Me.gridControl1.CommandStack.UndoStack.Clear()



'Clears the Redo buffer.

Me.gridControl1.CommandStack.RedoStack.Clear()



'Clears both Undo and Redo buffers.

Me.gridControl1.CommandStack.Clear()
{% endhighlight   %}

## Transactions

A transaction is a series of steps that should be treated as a single action in the Undo/Redo architecture. For example, you may have a record-oriented grid where you may want to group any changes in the current row as one transaction. This way when the user wants to undo the last change, all the changes in the row are undone. It is possible to group a series of actions into a single Undo/Redo step through the use of these three GridCommandStack methods: BeginTrans, CommitTrans and RollBack. 

A call to BeginTrans will mark the start of a series of actions that are to be treated as a single Undo/Redo step. Once BeginTrans has begun, all the changes are marked as being a member of a single transaction until either CommitTrans or RollBack is called. CommitTrans signals a successful end to the transaction. A call to RollBack will cause all the changes in the current transaction to be undone and will end the transaction processing. RollBack call will return the grid to the same state that it was immediately prior to the call to BeginTrans.

It is possible to nest transactions. If you are in the middle of a transaction, it is OK to call BeginTrans again. But, when such nested transactions are undone, they are treated as part of a single parent transaction.

## Derived Commands

Undo/Redo architecture of the Essential Grid is complete when shipped with the product. If, for some reason, you need to handle special grid requirements that cannot be performed with the standard implementation, Undo/Redo architecture is extensible. To extend it, you need to derive custom command classes from either the abstract class SyncfusionCommand or the abstract class GridModelCommand. In your derived class, you will need to add whatever members you need in order to track enough state information that will allow you to Undo/Redo the action that is being done. Then you have to implement an execute method and other abstract members of the base class. If you do a search in the Essential Grid source code for GridModelCommand, you will see many examples of the derived command classes.

Once you have your derived SyncfusionCommand class, whenever the action is taken, you will have to create a proper instance of your derived SyncfusionCommand class and add it to GridControl.CommandStack.UndoStack. Thus when Essential Grid needs to undo this action, your command will pop from the UndoStack, and its execute method will be called indicating that this action needs to be undone (Also, at this point Essential Grid will add this same instance to RedoStack so that the action can later be redone if necessary).

