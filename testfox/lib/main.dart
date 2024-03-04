import 'package:flutter/material.dart';
import 'package:testfox/pages/async_page.dart';
import 'package:testfox/pages/home_page.dart';
import 'package:testfox/pages/profile_page.dart';
import 'package:testfox/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const HomePage(),

      //Creamos las rutas para movilizarnos entre pantallas
      routes: {
        '/homepage': (context) => const HomePage(),
        '/profilepage': (context) => const ProfilePage(),
        '/settingspage': (context) => const SettingPage(),
        '/asyncpage': (context) => const AsyncPage(),
      },
    );
  }
}

////////////////////////////////////////////////////////////
/* QUESTIONS */
/* 
  1. WHAT IS A WIDGET IN FLUTTER?
      Is a container that can keep different components, for example if we have a page with bottoms,
      but this buttoms are re-usables, we can create a widget that will contain this bottom
      to use it in other page like react components.

  2. HOW DO YOU MANAGE STATE IN A STATEFUL WIDGET?
      first of all we have to know what sort of component we have beacuse in a stateless widget
      is not permitted to put setState on it, we have to change to stateFull, knowing that
      setSate is used to rebuild our widget to watch the changes it has when our widget 
      do something to make this component change it state.

  3. DESCRIBE HOW TO NAVIGATE BETWEEN DIFFERENT SCREEN IN FLUTTER
      I've been seeking information and i found the most common way to do it,
      creating routes to simplify the work of navigator.push() with the fuction
      in every page.

  4. EXPLAIN THE DIFFERENCE BETWEEN ASYNC/AWAIT AND FLUTTER.THEN() FOR HANDLING
    ASYNCHRONOUS OPERATIONS
      ASYNC/AWAIT: is more readable way to handle asynchronous code, especially when you have
      multiple async operations in sequence.
      FLUTTER.THEN(): is more traditional when you want to keep the asynchronous operation 
      and its handling code more separate.

  5. HOW WOULD YOU IMPLEMENT A SCROLLABLE LIST OF ITEMS IN FLUTTER USING THE LISTVIEW
    WIDGET?
      First of all we have to create a list of items to show, in this case I create a 
      database with dummy data inside just to represent the real list data, then 
      we have to use our widget inse a ListView.builder() to create the scrollable
      list of items charging from the database.

  6. COMPARE AND CONTRAST DEIFFERENR STATE MANAGEGMENT APPROACHES IN FLUTTER (E.G., PROVIDER,
    BLOC, RIVERPOOL). PROVIDE A ESCENARIO WHERE EACH MIGTH BE PREFERRED.
      I haven't done examples with this but I've been seeking information and i found this
      example:
        
      1. Provider:

        Description: Provider is a simple and lightweight state management solution built on top of 
        InheritedWidgets. It's suitable for small to medium-sized applications and offers excellent 
        performance.

        Scenario: Provider is suitable for applications with a relatively simple state management 
        requirement, such as managing theme changes, user authentication, or managing small sets 
        of application-wide state.

      2. Bloc (Business Logic Component):

        Description: Bloc is a pattern that separates the presentation layer from business logic. 
        It uses Streams to manage state and offers a clear separation of concerns, making it 
        suitable for larger applications with complex state management requirements.

        Scenario: Bloc is preferred for applications with complex business logic and large 
        amounts of asynchronous data handling, such as applications that require real-time 
        updates, data synchronization across multiple screens, or applications with complex forms 
        and validation logic.

      3. Riverpod:

        Description: Riverpod is an advanced state management solution and a successor to Provider. 
        It offers a more intuitive API and improved performance compared to Provider. Riverpod 
        provides global state management and dependency injection capabilities.

        Scenario: Riverpod is ideal for applications with complex dependency injection 
        requirements, where components need access to multiple providers, or where there's 
        a need for dynamic scoping and more granular control over state changes.

  7. How can you implement animations in Flutter? 
      1. We have to choose the animations type, implicit, explicit, hero or custom
      2. Select the animation, varety of build-in animations widgets provided by flutter.
      3. We have to create the animation controller to manage it.
      4. Define the start and ending values to the widget.
      5. We have to Wrap your animation logic within StatefulWidget or StatefulWidgetMixin.
      6. Trigger animations by calling methods like forward(), reverse(), or animateTo() on 
          AnimationController.
      7. then dispose of AnimationControllers and listeners to prevent memory leaks when the widget 
          is removed from the widget tree.
      8. Finally test it.

  8. Explain the process of creating a custom widget in Flutter.
  9. Describe the importance of testing in Flutter
      esting in Flutter is essential for building robust and high-quality applications. 
      Unit testing validates the functionality of individual code units, while widget 
      testing ensures the correctness and responsiveness of UI components


 */