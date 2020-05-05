# Flutter Summary Notes
* Dart & Material
* React Similiarities

## Dart
- import material `import 'package:flutter/material.dart';`
- Every dart applicaton has a main function. Typically, it's placed in `main.dart`:
    ```dart 
        void main() => runApp(MyApp());
    ```
- [Can do `runApp(MaterialApp())` but hot reload would not read new changes](https://stackoverflow.com/questions/51312843/what-is-the-difference-between-runappnew-myapp-and-runappnew-materialapp).

#### Variables
- Use `const` when you know the explicit value.
    - E.g. `const numPairs = 10;`
- Use `final` when you don't explicitly know the value but can use a function to obtain it. 
  - The value cannot be reassigned. 
  - Similar to `const` in JavaScript. 
  - E.g. `const wordPair = DateTime.now();`
- You can use types before defining your variables.
  - E.g. `int index`;
- Arrays are called **lists** in Dart.

#### Packages
- Can be found on `pub.dev`.
- Common ones are:
  - [english_words](https://pub.dev/packages/english_words)


#### Operators
- `~/` is division returning an int.
- `is` returns True if the object has the specified type.
- `as` to cast types.

## React Similiarities
- However:
  - Components are replaced by **widgets**.
  - `render()` is replaced by `build(Build Context context)`:
     ```dart
     @override
     Widget build(BuildContext context) {
        return
            ...
     }
- Like React, it contains stateless (immutable states) and stateful (mutable states) widgets.
- The skeleton code of a **statless** widget: 
    - [property](https://api.flutter.dev/flutter/material/MaterialApp-class.html#instance-properties) can be home, route, etc.
    - [MaterialComponent](https://flutter.dev/docs/development/ui/widgets/material) can be Text, Button, etc.
    - `@override` is not required but is added for readability.
```dart
    class MyApp extends StatelessWidget { 
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                ..., 
                property: MaterialComponent(
                    ...
                ), 
                ...
            )
        }
    } 
 ```
 - The skeleton code of a **stateful** widget:
 ```dart

 // Define the stateful widget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

// Define the state for the stateful widget
class RandomWordsState extends State<RandomWords> {
  Widget _buildList() {
    ...
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
      appBar: AppBar(
        title: Text('Wordpair Generator')
      )
    );
  }
}
 ```

 ## Properties
 - Common ones are:
    - `home` displays the UI
    - `route` ...

## MaterialComponent Widgets
- Building UI's can be thought of as **widget trees**. 
- Common ones are:
    - `Scaffold` are high-level widgets that allows  multiple children widgets to be contained within it.

