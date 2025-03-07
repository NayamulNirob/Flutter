import 'package:quize_app/models/quiz_question.dart';

var questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion('What\'s the purpose of a StatefulWidget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ]),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),
  QuizQuestion('How should you update data inside of StatefulWidgets?', [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ]),

//   QuizQuestion('What is Flutter?', [
//     'A framework for building natively compiled applications',
//     'A programming language',
//     'A database',
//     'A cloud service provider',
//   ]),

//   QuizQuestion('Which programming language is used to develop Flutter apps?', [
//     'Dart',
//     'Java',
//     'Swift',
//     'Kotlin',
//   ]),

//   QuizQuestion('What is a widget in Flutter?', [
//     'A reusable component for building UI',
//     'A type of database',
//     'A testing tool',
//     'A type of API',
//   ]),

//   QuizQuestion('What is a StatefulWidget in Flutter?', [
//     'A widget that can change over time',
//     'A widget that cannot change',
//     'A widget used for animations',
//     'A widget for handling errors',
//   ]),

//   QuizQuestion('Which of the following is used to manage state in Flutter?', [
//     'Provider',
//     'Firebase',
//     'HTTP package',
//     'Flutter SDK',
//   ]),

//   QuizQuestion('Which command is used to run a Flutter app on an emulator?', [
//     'flutter run',
//     'flutter start',
//     'flutter build',
//     'flutter deploy',
//   ]),

//   QuizQuestion('What is the primary purpose of the Flutter SDK?', [
//     'To build and deploy Flutter apps',
//     'To compile code for Android apps',
//     'To manage state in Flutter apps',
//     'To store user data',
//   ]),

//   QuizQuestion('Which of the following is used to persist data in Flutter?', [
//     'SharedPreferences',
//     'Firebase Firestore',
//     'FlutterFlow',
//     'Dart SDK',
//   ]),

//   QuizQuestion(
//     'What does the "pubspec.yaml" file in a Flutter project manage?',
//     [
//       'Project dependencies and configurations',
//       'UI design',
//       'Database schema',
//       'User authentication settings',
//     ],
//   ),

//   QuizQuestion(
//     'Which widget is used for navigating between screens in Flutter?',
//     ['Navigator', 'TextField', 'Column', 'Container'],
//   ),

//   QuizQuestion('What is a StatelessWidget in Flutter?', [
//     'A widget that does not change once built',
//     'A widget that can change over time',
//     'A widget used for state management',
//     'A widget used for animations',
//   ]),

//   QuizQuestion('What is the default alignment of a Column widget in Flutter?', [
//     'Start',
//     'Center',
//     'Left',
//     'Top',
//   ]),

//   QuizQuestion('Which widget is used to display an image in Flutter?', [
//     'Image',
//     'Text',
//     'Icon',
//     'Container',
//   ]),

//   QuizQuestion('What does the "setState" method do in Flutter?', [
//     'Updates the UI to reflect changes in state',
//     'Saves data locally',
//     'Triggers animations',
//     'Logs an error message',
//   ]),

//   QuizQuestion(
//     'Which of the following is used for asynchronous programming in Flutter?',
//     ['Future', 'StatefulWidget', 'Stream', 'Callback functions'],
//   ),

//   QuizQuestion('What is Flutter’s main advantage over native development?', [
//     'Faster development with a single codebase for multiple platforms',
//     'Better performance on iOS',
//     'Supports only Android and iOS',
//     'Requires no third-party libraries',
//   ]),

//   QuizQuestion(
//     'Which method is used to call a function when the app is started?',
//     ['main()', 'build()', 'initState()', 'runApp()'],
//   ),

//   QuizQuestion('What is the purpose of the Flutter "debugPrint" method?', [
//     'To print messages in the console',
//     'To display messages in the UI',
//     'To optimize performance',
//     'To log errors',
//   ]),

//   QuizQuestion(
//     'Which package is commonly used to handle HTTP requests in Flutter?',
//     ['http', 'flutter_http', 'api_requests', 'dio'],
//   ),

//   QuizQuestion(
//     'Which widget can be used to display a list of items in Flutter?',
//     ['ListView', 'Column', 'GridView', 'Stack'],
//   ),

//   QuizQuestion('What does "Flutter hot reload" do?', [
//     'Allows you to change the code and instantly see changes without restarting the app',
//     'Reloads the entire app',
//     'Resets the app’s state',
//     'Compiles the code to machine code',
//   ]),

//   QuizQuestion(
//     'Which of these widgets is used for creating flexible layouts in Flutter?',
//     ['Flexible', 'Row', 'Column', 'Stack'],
//   ),

//   QuizQuestion('What is the role of the "InheritedWidget" in Flutter?', [
//     'Provides data to its descendant widgets',
//     'Stores user preferences',
//     'Handles network requests',
//     'Manages animation states',
//   ]),

//   QuizQuestion('What is the function of the "Navigator.push" method?', [
//     'Navigates to a new screen',
//     'Pops the current screen',
//     'Opens a modal dialog',
//     'Closes the app',
//   ]),

//   QuizQuestion('How can you manage app routes in Flutter?', [
//     'Using MaterialPageRoute',
//     'By manually coding transitions',
//     'Using the Router class',
//     'By modifying the widget tree directly',
//   ]),

//   QuizQuestion('Which Flutter widget is used for creating an app drawer?', [
//     'Drawer',
//     'BottomNavigationBar',
//     'Scaffold',
//     'ListView',
//   ]),

//   QuizQuestion('Which widget is used to create an input field for user text?', [
//     'TextField',
//     'Form',
//     'Column',
//     'Text',
//   ]),

//   QuizQuestion('What is the function of "flutter doctor" command?', [
//     'Checks the health of your development environment',
//     'Builds your app for release',
//     'Runs the app on an emulator',
//     'Compiles the Dart code',
//   ]),

//   QuizQuestion(
//     'Which of the following is used for running unit tests in Flutter?',
//     ['flutter test', 'flutter build', 'flutter deploy', 'flutter init'],
//   ),

//   QuizQuestion('What does the "async" keyword do in Flutter?', [
//     'Indicates that a function is asynchronous',
//     'Handles UI rendering',
//     'Validates input data',
//     'Manages state changes',
//   ]),

//   QuizQuestion('What is the default font used in Flutter?', [
//     'Roboto',
//     'Arial',
//     'Times New Roman',
//     'Open Sans',
//   ]),

//   QuizQuestion('What is a "FutureBuilder" widget used for in Flutter?', [
//     'To build UI based on asynchronous data',
//     'To store data locally',
//     'To manage user authentication',
//     'To create forms for data input',
//   ]),

//   QuizQuestion('What does the "await" keyword do in Flutter?', [
//     'Waits for the result of an asynchronous operation',
//     'Cancels an asynchronous operation',
//     'Initializes an object',
//     'Delays execution of a function',
//   ]),

//   QuizQuestion('What is the main purpose of "Flutter Packages"?', [
//     'To provide reusable code for common functionality',
//     'To customize the Flutter SDK',
//     'To help in UI design only',
//     'To handle network requests',
//   ]),

//   QuizQuestion(
//     'Which widget is used for creating a layout that can scroll vertically?',
//     ['ListView', 'Column', 'Stack', 'Flex'],
//   ),

//   QuizQuestion(
//     'Which command is used to upgrade Flutter to the latest version?',
//     ['flutter upgrade', 'flutter update', 'flutter get', 'flutter refresh'],
//   ),

//   QuizQuestion('What does the "dispose" method do in a StatefulWidget?', [
//     'Frees up resources used by the widget',
//     'Initializes state for the widget',
//     'Renders the widget UI',
//     'Updates the widget’s properties',
//   ]),

//   QuizQuestion('What is the purpose of "TextStyle" in Flutter?', [
//     'To style text displayed on the screen',
//     'To define the layout of a screen',
//     'To define the behavior of widgets',
//     'To manage data input validation',
//   ]),

//   QuizQuestion('How can you use an API in Flutter?', [
//     'By using the "http" package',
//     'By using Firebase',
//     'By using SQLite',
//     'By creating custom methods',
//   ]),

//   QuizQuestion('What is Flutter’s main advantage over React Native?', [
//     'Single codebase for both iOS and Android',
//     'More native API integrations',
//     'Better support for large-scale apps',
//     'Easier UI development tools',
//   ]),

//   QuizQuestion('Which widget allows for user interaction in Flutter?', [
//     'GestureDetector',
//     'Container',
//     'Column',
//     'Text',
//   ]),

//   QuizQuestion(
//     'Which of the following can be used to persist data across app restarts in Flutter?',
//     ['SharedPreferences', 'SQLite', 'Firebase', 'All of the above'],
//   ),

//   QuizQuestion(
//     'Which widget in Flutter is used for designing a responsive UI?',
//     ['LayoutBuilder', 'Container', 'Stack', 'Column'],
//   ),

//   QuizQuestion(
//     'Which of the following is used to display a loading spinner in Flutter?',
//     ['CircularProgressIndicator', 'LoaderWidget', 'ProgressBar', 'Spinner'],
//   ),

//   QuizQuestion('What is "Flutter Inspector"?', [
//     'A tool for debugging and inspecting UI layout',
//     'A tool for creating animations',
//     'A package for managing state',
//     'A tool for compiling Dart code',
//   ]),

//   QuizQuestion('Which package is used for Firebase integration in Flutter?', [
//     'firebase_core',
//     'firebase_firestore',
//     'firebase_auth',
//     'all of the above',
//   ]),

//   QuizQuestion('What is the purpose of "InheritedWidget" in Flutter?', [
//     'To pass data down the widget tree efficiently',
//     'To handle gestures',
//     'To manage state',
//     'To render custom UI components',
//   ]),

//   QuizQuestion('How do you add external dependencies in a Flutter project?', [
//     'By adding them to the pubspec.yaml file',
//     'By importing the package directly in Dart code',
//     'By running flutter install',
//     'By using Android Studio settings',
//   ]),

//   QuizQuestion(
//     'Which of the following is a popular navigation library in Flutter?',
//     [
//       'Navigator 2.0',
//       'flutter_navigation',
//       'react_navigation',
//       'flutter_routes',
//     ],
//   ),

//   QuizQuestion('What is the function of the "runApp" method?', [
//     'Runs the Flutter application',
//     'Builds a widget',
//     'Manages app routes',
//     'Handles widget state',
//   ]),

//   QuizQuestion(
//     'Which of the following is used for handling app permissions in Flutter?',
//     [
//       'permission_handler',
//       'flutter_permissions',
//       'permission_manager',
//       'flutter_permission',
//     ],
//   ),

//   QuizQuestion(
//     'Which widget in Flutter is used to create an animated transition between screens?',
//     ['PageRouteBuilder', 'FadeTransition', 'AnimatedSwitcher', 'AnimatedPage'],
//   ),

//   QuizQuestion('What is the use of the "Flutter widgets" library?', [
//     'Provides basic UI components for building Flutter apps',
//     'Stores app data locally',
//     'Handles API requests',
//     'Generates animations',
//   ]),

//   QuizQuestion('What is "flutter_native_splash" used for in Flutter?', [
//     'To create splash screens for the app',
//     'To animate UI elements',
//     'To manage network requests',
//     'To handle data persistence',
//   ]),

//   QuizQuestion('Which widget is used to create an icon button in Flutter?', [
//     'IconButton',
//     'TextButton',
//     'ElevatedButton',
//     'FlatButton',
//   ]),

//   QuizQuestion(
//     'Which widget is used to create a scrollable list of items in Flutter?',
//     ['ListView', 'GridView', 'SingleChildScrollView', 'Stack'],
//   ),

//   QuizQuestion('Which method is used to handle user input in a Flutter app?', [
//     'onPressed',
//     'onChange',
//     'onSubmit',
//     'onTap',
//   ]),

//   QuizQuestion(
//     'Which of the following is used to manage assets like images in Flutter?',
//     ['pubspec.yaml', 'assets.dart', 'flutter_assets', 'image_assets'],
//   ),

//   QuizQuestion('What is the purpose of "flutter packages get" command?', [
//     'Installs dependencies specified in pubspec.yaml',
//     'Builds the app',
//     'Generates UI code',
//     'Installs Flutter SDK',
//   ]),

//   QuizQuestion('Which of these widgets is used to add a title to the app?', [
//     'AppBar',
//     'TextField',
//     'Scaffold',
//     'Container',
//   ]),

//   QuizQuestion('Which widget is used for simple user input in Flutter?', [
//     'TextField',
//     'Form',
//     'Column',
//     'Container',
//   ]),

//   QuizQuestion('What is the purpose of the "State" class in Flutter?', [
//     'Stores the mutable state of a StatefulWidget',
//     'Handles rendering of widgets',
//     'Manages the app’s routes',
//     'Stores app data',
//   ]),

//   QuizQuestion('Which of the following is used for unit testing in Flutter?', [
//     'flutter_test',
//     'flutter_unit',
//     'flutter_check',
//     'flutter_debug',
//   ]),

//   QuizQuestion('Which of the following is used to style text in Flutter?', [
//     'TextStyle',
//     'TextWidget',
//     'TextEditor',
//     'TextDecorator',
//   ]),

//   QuizQuestion('How do you navigate between screens in Flutter?', [
//     'Using the Navigator widget',
//     'By modifying the widget tree directly',
//     'By changing the root widget',
//     'By using a routing service',
//   ]),

//   QuizQuestion(
//     'Which widget is used for designing responsive UIs in Flutter?',
//     ['LayoutBuilder', 'Container', 'Stack', 'Column'],
//   ),

//   QuizQuestion(
//     'Which of the following is used to display a loading spinner in Flutter?',
//     ['CircularProgressIndicator', 'LoaderWidget', 'ProgressBar', 'Spinner'],
//   ),

// QuizQuestion('What is the main function of the "Scaffold" widget in Flutter?', [
//   'It provides a basic structure for the app, including the AppBar and body',
//   'It defines the app’s routing logic',
//   'It handles the animation of widgets',
//   'It manages state in the app',
// ]),

// QuizQuestion('Which widget is used to display a single line of text in Flutter?', [
//   'Text',
//   'Column',
//   'Row',
//   'Stack',
// ]),

// QuizQuestion('Which class in Flutter is used for handling gestures?', [
//   'GestureDetector',
//   'TouchHandler',
//   'EventListener',
//   'TapGesture',
// ]),

// QuizQuestion('What is the primary use of the "Column" widget in Flutter?', [
//   'To arrange child widgets vertically',
//   'To arrange child widgets horizontally',
//   'To stack child widgets on top of each other',
//   'To handle user input',
// ]),

// QuizQuestion('Which of the following is a layout widget in Flutter?', [
//   'Row',
//   'ListView',
//   'TextField',
//   'Icon',
// ]),

// QuizQuestion('How can you listen for changes in the state of a Flutter app?', [
//   'Using the setState() method',
//   'By using a GestureDetector',
//   'By using a FutureBuilder',
//   'By listening to a StreamController',
// ]),

// QuizQuestion('What is the purpose of the "build" method in Flutter?', [
//   'It describes the UI layout of the widget',
//   'It updates the widget state',
//   'It manages animations',
//   'It handles user input',
// ]),

// QuizQuestion('What is the default behavior of the "Expanded" widget in Flutter?', [
//   'It expands to fill available space in a parent widget',
//   'It contracts to fit the child widget',
//   'It manages widget visibility',
//   'It rotates the widget',
// ]),

// QuizQuestion('Which of the following widgets is used to create a scrollable view in Flutter?', [
//   'ListView',
//   'Stack',
//   'Column',
//   'Container',
// ]),

// QuizQuestion('What is the primary use of the "TextEditingController" in Flutter?', [
//   'It controls the text input in a TextField',
//   'It validates the user input in forms',
//   'It stores the text to be displayed in a Text widget',
//   'It changes the text style dynamically',
// ]),

// QuizQuestion('What does the "setState()" method do in Flutter?', [
//   'It notifies the framework to rebuild the widget with new data',
//   'It schedules a timer to update the UI',
//   'It hides widgets on the screen',
//   'It manages animations',
// ]),

// QuizQuestion('Which of the following is a way to create a floating action button in Flutter?', [
//   'Using the FloatingActionButton widget',
//   'Using the IconButton widget',
//   'Using the GestureDetector widget',
//   'Using the RaisedButton widget',
// ]),

// QuizQuestion('What is the purpose of the "dispose" method in Flutter?', [
//   'It cleans up resources when a widget is removed from the tree',
//   'It builds the widget tree',
//   'It stores user preferences',
//   'It sets up default properties for a widget',
// ]),

// QuizQuestion('Which widget is used to create a horizontal scrollable list in Flutter?', [
//   'ListView.horizontal',
//   'Row',
//   'SingleChildScrollView',
//   'GridView',
// ]),

// QuizQuestion('Which of the following is a way to add padding around a widget in Flutter?', [
//   'Using the Padding widget',
//   'Using the Container widget with margin property',
//   'Using the Row widget',
//   'Using the SizedBox widget',
// ]),

// QuizQuestion('Which of the following allows asynchronous data to be displayed in Flutter?', [
//   'FutureBuilder',
//   'ListView',
//   'GridView',
//   'Text',
// ]),

// QuizQuestion('How can you create a round button in Flutter?', [
//   'By using the ElevatedButton widget with a rounded border',
//   'By using the Container widget with a shape property',
//   'By using the IconButton widget',
//   'By using the RaisedButton widget with a circle shape',
// ]),

// QuizQuestion('What is the role of the "MaterialApp" widget in Flutter?', [
//   'It initializes the app and sets the global theme and routing',
//   'It builds the user interface',
//   'It handles user input',
//   'It controls animations and transitions',
// ]),

// QuizQuestion('What is a "Stream" used for in Flutter?', [
//   'It provides a way to handle asynchronous data',
//   'It manages UI animations',
//   'It stores application data locally',
//   'It handles user authentication',
// ]),

// QuizQuestion('What does the "Navigator.pushNamed" method do?', [
//   'It navigates to a named route in the app',
//   'It pops the current screen from the navigation stack',
//   'It resets the app’s state',
//   'It triggers a widget rebuild',
// ]),

// QuizQuestion('Which of the following is used to pass data between screens in Flutter?', [
//   'Navigator.push with arguments',
//   'Navigator.pop',
//   'GestureDetector',
//   'TextField',
// ]),

// QuizQuestion('Which of the following widgets is used to create a dialog in Flutter?', [
//   'AlertDialog',
//   'DialogBox',
//   'PopupMenu',
//   'SnackBar',
// ]),

// QuizQuestion('Which widget is used for creating a scrollable column of widgets in Flutter?', [
//   'SingleChildScrollView',
//   'Column',
//   'Stack',
//   'Row',
// ]),

// QuizQuestion('Which of the following is used to navigate back in the app in Flutter?', [
//   'Navigator.pop()',
//   'Navigator.push()',
//   'Navigator.pushNamed()',
//   'Navigator.removeRoute()',
// ]),

// QuizQuestion('Which package is used to handle navigation in Flutter?', [
//   'flutter_navigation',
//   'material.dart',
//   'flutter_route',
//   'flutter_stack',
// ]),

// QuizQuestion('Which widget is used for displaying a simple text input field?', [
//   'TextField',
//   'TextFormField',
//   'Column',
//   'Form',
// ]),

// QuizQuestion('Which of the following widgets is used to display an icon in Flutter?', [
//   'Icon',
//   'Text',
//   'Container',
//   'Column',
// ]),

// QuizQuestion('Which of the following is used to manage the lifecycle of a StatefulWidget in Flutter?', [
//   'initState(), build(), dispose()',
//   'build(), update(), dispose()',
//   'setState(), updateState(), dispose()',
//   'create(), update(), delete()',
// ]),

// QuizQuestion('How can you validate a form in Flutter?', [
//   'By using a GlobalKey<FormState>',
//   'By using a TextEditingController',
//   'By using a GestureDetector',
//   'By using a StateNotifier',
// ]),

// QuizQuestion('Which widget is used to display a loading spinner in Flutter?', [
//   'CircularProgressIndicator',
//   'ProgressIndicator',
//   'LoadingWidget',
//   'ActivityIndicator',
// ]),

// QuizQuestion('Which of the following is used to create an input form with validation in Flutter?', [
//   'Form and TextFormField',
//   'TextField and Validator',
//   'Button and Text',
//   'Column and Row',
// ]),

// QuizQuestion('What is the role of the "Navigator" widget in Flutter?', [
//   'It manages the stack of routes and screens',
//   'It defines the layout of the app',
//   'It stores user preferences',
//   'It controls the theme of the app',
// ]),

// QuizQuestion('What is the purpose of the "GestureDetector" widget in Flutter?', [
//   'It detects gestures such as taps, swipes, and long presses',
//   'It handles data validation',
//   'It builds UI components',
//   'It manages app routing',
// ]),

// QuizQuestion('Which widget is used to create a card-like UI element in Flutter?', [
//   'Card',
//   'Container',
//   'Column',
//   'Text',
// ]),

// QuizQuestion('Which class is used to configure themes in Flutter?', [
//   'ThemeData',
//   'ThemeConfiguration',
//   'MaterialTheme',
//   'AppTheme',
// ]),

// QuizQuestion('Which widget is used for creating a button with a custom shape in Flutter?', [
//   'MaterialButton',
//   'FlatButton',
//   'RaisedButton',
//   'IconButton',
// ]),

// QuizQuestion('What is the purpose of "StreamBuilder" in Flutter?', [
//   'To build the UI based on the latest data from a Stream',
//   'To manage the app’s routes',
//   'To handle user input events',
//   'To display a loading spinner',
// ]),

// QuizQuestion('Which of the following is used to handle HTTP requests in Flutter?', [
//   'http package',
//   'url_launcher',
//   'connectivity package',
//   'firebase_auth',
// ]),

// QuizQuestion('What is the primary function of the "IconButton" widget in Flutter?', [
//   'To create a clickable button with an icon',
//   'To display an icon',
//   'To create a floating action button',
//   'To create a text input field',
// ]),

// QuizQuestion('Which of the following can be used to display a list of items with a custom layout in Flutter?', [
//   'CustomScrollView',
//   'ListView',
//   'Column',
//   'GridView',
// ]),

// QuizQuestion('What does the "flutter doctor" command do in Flutter?', [
//   'Checks the development environment for any issues',
//   'Runs the app on an emulator',
//   'Builds the app for release',
//   'Installs dependencies',
// ]),

// QuizQuestion('Which widget is used to display a progress bar in Flutter?', [
//   'LinearProgressIndicator',
//   'ProgressBar',
//   'CircularProgressIndicator',
//   'ActivityIndicator',
// ]),

// QuizQuestion('Which widget is used to create a simple toggle button in Flutter?', [
//   'Switch',
//   'Slider',
//   'RadioButton',
//   'Button',
// ]),

// QuizQuestion('What is the role of the "Expanded" widget in a Row widget in Flutter?', [
//   'It allows the child widget to take up remaining space',
//   'It constrains the size of the child widget',
//   'It manages the child widget’s visibility',
//   'It changes the widget color dynamically',
// ]),

// QuizQuestion('What is the purpose of the "SafeArea" widget in Flutter?', [
//   'It ensures that the UI avoids areas like the status bar or notches',
//   'It manages state in the app',
//   'It handles user input',
//   'It creates a form with validation',
// ]),

// QuizQuestion('Which package is used to add animations in Flutter?', [
//   'flutter_animations',
//   'flutter_animation_package',
//   'flutter_animate',
//   'flutter_spring',
// ]),

// QuizQuestion('Which widget is used to wrap text into multiple lines in Flutter?', [
//   'TextOverflow',
//   'Text',
//   'RichText',
//   'TextField',
// ]),

// QuizQuestion('What is the main use of the "TabController" in Flutter?', [
//   'To manage tab navigation in a TabBar',
//   'To manage gestures',
//   'To handle data input',
//   'To set the color theme for tabs',
// ]),

// QuizQuestion('Which of the following widgets is used to display a bottom navigation bar in Flutter?', [
//   'BottomNavigationBar',
//   'BottomSheet',
//   'Drawer',
//   'BottomAppBar',
// ]),

// QuizQuestion('What is the purpose of "MediaQuery" in Flutter?', [
//   'It provides information about the screen size and device orientation',
//   'It handles API requests',
//   'It manages app routes',
//   'It stores app data locally',
// ]),

// QuizQuestion('Which of the following widgets is used to create a row of widgets in Flutter?', [
//   'Row',
//   'Column',
//   'Stack',
//   'GridView',
// ]),

// QuizQuestion('Which package is used to access native device features like camera or sensors in Flutter?', [
//   'flutter_local_plugins',
//   'flutter_plugin',
//   'device_info',
//   'flutter_sensors',
// ]),

// QuizQuestion('What is the role of "CustomPainter" in Flutter?', [
//   'It allows you to draw custom graphics on the screen',
//   'It handles UI layout',
//   'It manages data storage',
//   'It animates widgets',
// ]),

// QuizQuestion('Which widget is used to create a scrollable area in Flutter?', [
//   'SingleChildScrollView',
//   'Column',
//   'Row',
//   'GridView',
// ]),

// QuizQuestion('What is the purpose of "AsyncSnapshot" in Flutter?', [
//   'It contains the current state of a Future or Stream',
//   'It stores the UI layout',
//   'It handles user input',
//   'It stores data locally',
// ]),

// QuizQuestion('Which widget is used for creating an image from a network URL in Flutter?', [
//   'Image.network',
//   'NetworkImage',
//   'Image.asset',
//   'Image.file',
// ]),

// QuizQuestion('What is the purpose of "Navigator.pushReplacement" in Flutter?', [
//   'It replaces the current screen with a new one',
//   'It adds a new screen to the stack',
//   'It pops the current screen',
//   'It navigates to the previous screen',
// ]),

// QuizQuestion('What is the purpose of the "AnimatedContainer" widget in Flutter?', [
//   'To animate changes to its properties, such as size and color',
//   'To wrap child widgets',
//   'To manage user input events',
//   'To handle state changes',
// ]),

// QuizQuestion('Which widget is used to create a grid view of items in Flutter?', [
//   'GridView',
//   'Column',
//   'Row',
//   'Stack',
// ]),

// QuizQuestion('Which widget is used to display a snack bar in Flutter?', [
//   'ScaffoldMessenger',
//   'SnackBarWidget',
//   'SnackbarWidget',
//   'ToastWidget',
// ]),

// QuizQuestion('What does the "flutter build apk" command do?', [
//   'Builds an APK file for an Android app',
//   'Runs the app in debug mode',
//   'Checks the app’s environment',
//   'Deploys the app to a device',
// ]),

// QuizQuestion('Which of the following is used to store and access small pieces of data in Flutter?', [
//   'SharedPreferences',
//   'SQLite',
//   'Firebase',
//   'CloudStorage',
// ]),

// QuizQuestion('What is the primary purpose of "ListTile" in Flutter?', [
//   'To create a row of widgets with an icon and text',
//   'To create a list of buttons',
//   'To display text',
//   'To create a scrollable list',
// ]),

// QuizQuestion('Which widget is used to create a container with constraints in Flutter?', [
//   'ConstrainedBox',
//   'Container',
//   'SizedBox',
//   'TextField',
// ]),

// QuizQuestion('What is the function of the "Navigator.pushReplacementNamed" method in Flutter?', [
//   'It navigates to a named route, replacing the current screen',
//   'It adds a new screen to the navigation stack',
//   'It pops the current screen from the navigation stack',
//   'It shows a dialog box',
// ]),

// QuizQuestion('Which widget is used to create a scrollable grid of items in Flutter?', [
//   'GridView',
//   'Row',
//   'Column',
//   'Stack',
// ]),

// QuizQuestion('What does the "runApp" function do in Flutter?', [
//   'It initializes and runs the app',
//   'It builds the widget tree',
//   'It handles user input events',
//   'It manages the navigation stack',
// ]),

// QuizQuestion('Which widget is used to display a simple text label in Flutter?', [
//   'Text',
//   'TextField',
//   'Column',
//   'Row',
// ]),

// QuizQuestion('Which widget is used to display a list of items with the ability to scroll in Flutter?', [
//   'ListView',
//   'Column',
//   'GridView',
//   'Stack',
// ]),

// QuizQuestion('What is the purpose of the "MaterialPageRoute" in Flutter?', [
//   'It defines the transition between screens',
//   'It stores navigation data',
//   'It handles user authentication',
//   'It controls widget animations',
// ]),

// QuizQuestion('Which class in Flutter is used to handle form validation?', [
//   'FormState',
//   'FormValidator',
//   'TextFormField',
//   'TextEditingController',
// ]),

// QuizQuestion('Which widget is used to create a button with custom behavior in Flutter?', [
//   'FlatButton',
//   'RaisedButton',
//   'MaterialButton',
//   'IconButton',
// ]),

// QuizQuestion('Which method is used to trigger a rebuild of a StatefulWidget in Flutter?', [
//   'setState()',
//   'rebuild()',
//   'updateState()',
//   'resetState()',
// ]),

// QuizQuestion('Which widget is used to display a rounded button in Flutter?', [
//   'RaisedButton',
//   'FlatButton',
//   'IconButton',
//   'TextButton',
// ]),

// QuizQuestion('What does the "FutureBuilder" widget do in Flutter?', [
//   'It builds the UI based on the latest snapshot of a Future',
//   'It handles user input asynchronously',
//   'It builds the widget tree in response to data changes',
//   'It manages the app’s navigation stack',
// ]),

// QuizQuestion('Which widget is used to display a horizontally scrollable list in Flutter?', [
//   'ListView.horizontal',
//   'GridView',
//   'Row',
//   'SingleChildScrollView',
// ]),

// QuizQuestion('Which class in Flutter is used to manage theme data for the app?', [
//   'ThemeData',
//   'MaterialTheme',
//   'AppTheme',
//   'AppSettings',
// ]),


];
