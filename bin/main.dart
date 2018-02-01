import 'package:jaguar/jaguar.dart';
import 'package:path/path.dart' as p;

main(List<String> arguments) async {
  final server = new Jaguar(port: 10001);

  // Serve with prefix stripped. Similar to 'alias' in Nginx.
  server.staticFiles('/static/*', 'static');

  // Serve with prefix intact. Similar to 'root' in Nginx.
  server.staticFiles('/img/*', 'static', stripPrefix: false);

  // Example with no correlation between request uri and target path
  server.staticFiles('/media/img/*', p.join('static', 'img'));

  // Example that serves only one file
  server.staticFile('/hello', p.join('static', 'hello.txt'));
  await server.serve();
}
