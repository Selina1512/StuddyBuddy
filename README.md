# studdybuddy

## Abstract
StuddyBuddy is a productivity app designed to help students manage their academic workload effectively. It allows users to add exams and coursework to a to-do list, where they can mark tasks as completed. The app provides detailed information about each task and offers a weekly overview, helping students organize their study schedule and keep track of deadlines.
## Problem solved

StuddyBuddy addresses the common challenges students face in college and university, such as disorganization and stress, which often lead to procrastination and poor academic performance. Many students struggle to keep track of their coursework and exam schedules, leading to last-minute cramming and unfinished assignments. By using StuddyBuddy, students can gain a clear overview of their tasks, helping them stay motivated and on track to meet their academic goals.

### Persona
The target audience for StuddyBuddy includes university and college students who are seeking better ways to organize their exams and coursework. These students often feel overwhelmed, stressed, and anxious about their academic responsibilities. They may fear falling behind their peers or failing exams, but they hope to achieve good grades with efficient time management. StuddyBuddy provides them with an easy-to-use scheduling tool that simplifies the process of planning and executing their study plans.

## Screens
### Welcoming Screen
![](C:\studybuddy\assets\screens\welcoming_screen.png "optional-title")

The welcome screen greets users when they open the app for the first time, prompting them to create a new task with their StudyBuddy.
### Welcoming Screen with dialog box
![](C:\studybuddy\assets\screens\dialog_box.png "optional-title")
When users click the plus button, they are prompted to specify whether they are adding an exam or coursework, along with the name of the task.

### Creating a new task
![](C:\studybuddy\assets\screens\create_new_tasks.png "optional-title")![create_new_tasks](https://github.com/user-attachments/assets/c0797534-e09f-4c17-92c5-02977f064e27)

After the dialog box, users can enter task details, including the description, deadline, estimated time required to complete it, and the days they plan to study or work on the task.

### Welcoming Screen when tasks have been created 
![](C:\studybuddy\assets\screens\tasks.png "optional-title")

Once tasks are created, the user can view all their exams and coursework in one place. They can click on any task to see more details. The app shows the number of days left until each task's deadline, helping users prioritize their workload. Completing tasks is rewarding, as it gives students a sense of accomplishment and motivation.

### deadline details
![](C:\studybuddy\assets\screens\detail.png "optional-title")

When a task is selected, users can view its details, including the description and deadline.

### weekly overview
![](C:\studybuddy\assets\screens\detail.png "optional-title")

This page shows users what they need to study or work on each day, enabling them to plan their week efficiently. This overview helps prevent procrastination and keeps students organized.


## Architecture
The app follows a feature-first architecture, where each page is composed of a model, controller, and view. The model handles data management, the controller manages application logic, and the view is responsible for presenting data to the user.
