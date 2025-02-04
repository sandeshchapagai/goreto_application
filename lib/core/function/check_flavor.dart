import '../configs/flavor_config.dart';
import '../enums/enums.dart';

bool get isDevEnvironment => FlavorConfig.shared.flavor == Flavor.dev;
bool get isProdEnvironment => FlavorConfig.shared.flavor == Flavor.prod;
