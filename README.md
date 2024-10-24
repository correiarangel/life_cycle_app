### Hi there Hello welcome ;] 

[Linkedin Always On](https://www.linkedin.com/in/marcos-fabiano-correia-rangel/)

#### Flutter Developer

# life_cycle_app

The **life_cycle_app** was created for educational purposes to demonstrate the life cycle of a stateful widget in a practical way.

# Understanding the Widget Life Cycle in Flutter

**Marcos Rangel**

**Full article** -> [Understanding the Widget Lifecycle in Flutter](https://medium.com/@okcomputer.use.linux/entendendo-o-ciclo-de-vida-de-widgets-no-flutter-123284ff381e)

---

Hello, DEVs! Today we are going to explore the life cycle of a Widget in Flutter and the methods responsible for managing this cycle. Understanding how this process works will greatly help in making decisions about when and where to execute specific actions within a widget. Additionally, knowing the life cycle allows us to develop more performant and robust applications.

Let’s explore the stages of this life cycle and illustrate them with a diagram.

## Types of Widgets in Flutter

### Stateless

This type of widget doesn’t manage state. In other words, it doesn’t hold values that may change over its life cycle. Its responsibility is solely to display data on the application’s interface.

### Stateful

For this type of widget, the life cycle is essential to ensure the dynamic behavior of the application. Stateful widgets come into existence, perform their function, and are discarded.
When we use a `StatefulWidget`, it creates a `State` object where all the widget's mutable state is stored. The `setState` method must be used to notify that the internal state has changed, allowing the widget to "rebuild" with updated values.

If you're unclear about the difference between a `StatelessWidget` and a `StatefulWidget`, it’s a good idea to take a step back and review this concept. It is crucial knowledge for working with Flutter.

## Life Cycle Structure

The life cycle of a widget in Flutter can be visualized in several main stages. Below is a diagram illustrating this cycle:

```
             StateWidget
                   
                    createState()
                         | 
                         V
                    initState() 
                         |
                         V
                   
                didChangeDependencies()
                         |
                         V 
                          
                       state()   <--------------|
                         |                      |   
                         V                      |
           |---------> Build()                  |  
           |             |                      |                                        
           |             V                      | 
           |                                    |
didUpdateWidget() <-- Widget() --> setState()---|
                         |
                         V
                   
                    Deactivate()
                         |
                         V
                   
                     dispose()

```

### Run Project Android/iOS

- flutter clean
- flutter pub get
- flutter run

## Flutter Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
