import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CourseDetailScreen extends HookWidget {
  const CourseDetailScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final webViewController = useMemoized(() => WebViewController());
    useEffect(() {
      webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
      webViewController.setNavigationDelegate(NavigationDelegate(
        onNavigationRequest: (request) {
          return NavigationDecision.navigate;
        },
      ));
      webViewController.loadRequest(Uri.parse(
          'https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afileFoods%20You%20Love.pdf'));
      return null;
    }, [webViewController]);
    // return SfPdfViewer.network(
    //     'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf');
    return Scaffold(
      body: WebViewWidget(controller: webViewController),
      appBar: AppBar(
        foregroundColor: ColorName.textColor,
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
