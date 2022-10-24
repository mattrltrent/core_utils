# A package containing helpful utility functions and widgets for Flutter projects.

-> Submit an issue [here](https://github.com/mattrltrent/core_utils/issues).
-> Create a pull request [here](https://github.com/mattrltrent/core_utils/pulls).
-> Contact me via email [here](mailto:me@matthewtrent.me).

<img src="https://github.com/mattrltrent/core_utils/blob/main/resources/example.gif?raw=true" style="display: inline"/>

## Functions: Numbers

### Checks if the integer passed is plural.

```dart
bool isPlural(int number);

Example: 13 -> true
```

### Converts large numbers into smaller representations with letters.

```dart
String largeNumberFormatter(
int  number, {
String  billionLetter  =  "b",
String  millionLetter  =  "m",
String  thousandLetter  =  "k",
});
```

Example: 1,812,398 -> "1.8m"

### Adds a postfix to numbers.

```dart
String numberPostfix(int number);
```

Example: 4 -> "4th"

## Functions: Sizing

### Height fraction of screen, up to a set point.

```dart
double heightBreakpointFrac(Buildcontext context, double fraction, double lockPoint);
```

Example: If you set fraction as 1/4, then this will return 1/4 \* screen
height up to the point that you set as lockPoint.

### Width fraction of screen, up to a set point.

```dart
double widthBreakpointFrac(Buildcontext context, double fraction, double lockPoint);
```

Example: If you set fraction as 1/4, then this will return 1/4 \* screen
width up to the point that you set as lockPoint.

### Height fraction of screen.

```dart
double  heightFrac(BuildContext  context, double  fraction);
```

Example: If you set fraction as 1/5, then it will return
1/5 \* screen height.

### Width fraction of screen.

```dart
double  widthFrac(BuildContext  context, double  fraction);
```

Example: If you set fraction as 1/5, then it will return
1/5 \* screen width.

### Height excluding top or bottom safe area.

```dart
double  heightWithoutSafeArea(BuildContext  context,{bool  withoutTopSafeArea  =  true, bool  withoutBottomSafeArea  =  true});
```

Example: Will return the height of the screen excluding
either the top or bottom safe area heights.

### Number until limit.

```dart
double  numberUntilLimit(double number, double limit);
```

Example: If number is the screen width and limit is 200, then this will
return the screen width until limit is reached, then it will just
return 200.

## Functions: Types

### Checks if value is null.

```dart
bool  isNull(dynamic value);
```

Example: If null is passed, this will return true. Otherwise, it
would return false.

### Checks if value is not null.

```dart
bool  notNull(dynamic value);
```

Example: If "14" is passed, this will return true.

## Functions: Validators

### Passed String is empty checker.

```dart
bool emptyValidator(String value);
```

Example: If " " is passed, then it will return false.

### Passed list of Strings is empty checker.

```dart
bool  multipleEmptyValidator(List<String> values);
```

Example: If ["test1", "test2", " "] is passed, then it will return false;

## Widgets: Sizing

### Mobile, Tablet, and Desktop view builder.

```dart
ResponsiveView(
	 mobile: Scaffold(...),
	 tablet: Scaffold(...),
	 desktop: Scaffold(...),
);
```

Example: Builds out 3 different views based on screen width breakpoints.
Breakpoint values can be customized.

### SizedBox same height as bottom safe area.

```dart
SimulatedBottomSafeArea(
	 heightMultiplier: 2,
);
```

Example: Returns a SizedBox with the height of the bottom
safe area \* heightMultiplier. Useful for lists where you desire
them to be scrolled without being wrapped with a SafeArea, but
don't want the last list item to be obscured by it. Usually, placed at
the end of a long list of widgets.

## Additional Info

- The package is always open to improvements, suggestions, and additions!

- I'll deal with PRs and issues as soon as I can!
