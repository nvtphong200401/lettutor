import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CourseDetailScreen extends HookWidget {
  const CourseDetailScreen({super.key, required this.title, required this.courseUrl});
  final String title;
  final String courseUrl;

  @override
  Widget build(BuildContext context) {
    debugPrint(context.router.currentPath);
    // final webViewController = useMemoized(() => WebViewController());
    // useEffect(() {
    //   webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    //   webViewController.setNavigationDelegate(NavigationDelegate(
    //     onNavigationRequest: (request) {
    //       return NavigationDecision.navigate;
    //     },
    //   ));
    //   webViewController.loadRequest(Uri.parse(courseUrl));
    //   return null;
    // }, [webViewController]);
    // return SfPdfViewer.network(
    //     'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf');
    return Scaffold(
      body: SfPdfViewer.network(courseUrl),
      appBar: AppBar(
        foregroundColor: ColorName.primary,
        title: Text(
          title,
          style:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ColorName.primary),
        ),
      ),
    );
  }
}
