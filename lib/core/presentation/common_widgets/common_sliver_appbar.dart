import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../gen/assets.gen.dart';

class CommonSliverAppbarTitle extends HookWidget {
  const CommonSliverAppbarTitle({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final isSliverAppBarExpanded = useState(false);
    useEffect(() {
      void onScroll() {
        isSliverAppBarExpanded.value = scrollController.offset > 400 - kToolbarHeight;
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    if (isSliverAppBarExpanded.value) return Assets.images.appLogo.svg(height: 45);
    return const SizedBox.shrink();
  }
}
