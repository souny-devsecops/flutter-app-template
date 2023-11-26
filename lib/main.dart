import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:template/config/enviroment/enviroment_config.dart';
import 'package:template/core/constants/api_path.dart';
import 'config/routes/app_router.dart';
import 'config/routes/route_utils.dart';
import 'config/theme/app_size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'config/theme/app_themes.dart';
import 'core/services/translate_service.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppSizeConfig().init(context);
    final router = ref.watch(goRouterProvider);
    final locale = ref.watch(localeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Template',
      theme: theme(),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key, required this.title});
  final String title;
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppEnvironment.envName.name,
            ),
            Text(ApiPath.baseUrl),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push(PAGES.demo.screenPath);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
