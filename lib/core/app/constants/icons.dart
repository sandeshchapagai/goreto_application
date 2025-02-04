const baseIconPath = 'assets/icons/';

final kSearchIcon = _getBasePath("Search.svg");
final kMapIcon = _getBasePath("Map.svg");
final kShopIcon = _getBasePath("Shop.svg");
final kProfileIcon = _getBasePath("Profile.svg");
final kSettingIcon = _getBasePath("Setting.svg");
final kDownloadIcon = _getBasePath('Download.svg');
final kGemsIcon = _getBasePath('Gems.svg');

final kNearByIcon = _getBasePath('NearBy.svg');
final kWaterFallIcon = _getBasePath('WaterFall.svg');
final kSaveIcon = _getBasePath('Save.svg');

String _getBasePath(String name) => baseIconPath + name;
