import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goreto_app/providers/bloc_providers.dart';
import 'package:goreto_app/utils/font_scale.dart';
import 'package:goreto_app/utils/local_storage/app_shared_preferences.dart';
import 'package:goreto_app/utils/scroll_behavior_configuration.dart';

import 'bloc/theme/theme_bloc.dart';
import 'bloc_observer/app_bloc-observer.dart';
import 'core/app/app_states/app_states.dart';
import 'core/app/constants/app_text.dart';
import 'core/app/theme/app_themes.dart';
import 'core/enums/enums.dart';
import 'core/function/app_version.dart';
import 'core/routes/route_config.dart';
import 'core/routes/route_generator.dart';
import 'core/services/di_injection/di_injection.dart';

Future<void> initMainCommon({required Flavor flavor}) async {
  await initServices(flavor: flavor);
  runApp(const GoreTo());
}

initServices({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPreferences.sharedPrefInit();
  // await dotenv.load(fileName: ".env");
  initDependencies();
  await AppVersion.fetchAppVersion();
  // FlavorConfig.create(
  //     baseUrl: isProdFlavor ? EnvConfig.prodServerUrl : EnvConfig.betaServerUrl,
  //     flavor: flavor);
  Bloc.observer = AppBlocObserver();
}

class GoreTo extends StatelessWidget {
  const GoreTo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.blocProvider,
      child: MediaQuery(
        data: FontScale.scaleSize(context: context),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              scrollBehavior: ScrollBehaviorConfiguration(),
              navigatorKey: AppStates.globalKey,
              title: AppText.appName,
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: state.themeMode,
              initialRoute: RouteConfig.initialRoute,
              onGenerateRoute: RouteGenerator.generateRoute,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
