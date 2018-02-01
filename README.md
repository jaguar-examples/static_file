# static_file

Example to demonstrate serving static files using Jaguar. Uses `staticFiles`
method on `Jaguar` object.

```dart
import 'package:jaguar/jaguar.dart';
import 'package:path/path.dart' as p;

main(List<String> arguments) async {
  final server = new Jaguar(port: 10001);

  // Serve with prefix stripped. Similar to 'alias' in Nginx.
  server.staticFiles('/static/*', 'static');

  await server.serve();
}
```

# Instructions

Instructions can be found at: [Serving static files](https://github.com/Jaguar-dart/jaguar/wiki/Serving-static-files)

