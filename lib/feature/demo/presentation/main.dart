import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template/config/theme/app_text_styles.dart';
import 'package:template/config/theme/app_themes.dart';
import '../application/demo_notifier.dart';

class DemoPage extends ConsumerWidget {
  const DemoPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final demoState = ref.watch(demoNotifier);
    final demoAction = ref.read(demoNotifier.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(demoState.demo!),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter : ${demoState.counter}",
            ),
            MaterialButton(
              color: AppColors.colorPrimary,
              onPressed: () {
                demoAction.incrementCounter();
              },
              child: Text("Increment Counter", style: AppTextStyles.titleWhite),
            ),
            MaterialButton(
              color: AppColors.colorSuccess,
              onPressed: () {
                demoAction.fetchUser();
              },
              child: Text("Get User", style: AppTextStyles.titleWhite),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: demoState.users!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(demoState.users![index].name ?? ""),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
