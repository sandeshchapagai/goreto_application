import 'flavor_config.dart';

class ApiConfig {
  static final serverUrl = FlavorConfig.shared.baseUrl;
  static final baseUrl = serverUrl;

  static const httpUrl = "https://";
  static const generalUrl = "/general";
  static const trueUrl = "true";
  static const falseUrl = "false";

  //Authorization
  static const bearer = "Bearer";

  //Socket
  static final orderSocketUrl = baseUrl + orderUrl;
  static final userSocketUrl = baseUrl + userUrl;
  static final restaurantSocketUrl = baseUrl + restaurantUrl;
  static final invitationSocketUrl = baseUrl + inviteUrl;
  static const socketTransport = ['websocket'];

  //Location Url
  static const currentLocationUrl = "ipwho.is";

  //Assets Url
  static const assetUrl = "/asset";
  static const assetsForQueryUrl = "?assetFor=";

  //Http Method
  static const post = "POST";
  static const put = "PUT";
  static const patch = "PATCH";

  //Update
  static const updateUrl = "/update";

  //Delete
  static const deleteUrl = "/delete";

  //Validate
  static const validateUrl = "/validate";

  //Query
  static const textQueryUrl = "?text=";
  static const spaceIdQueryUrl = "?spaceId=";
  static const roleIdQueryUrl = "?roleId=";
  static const tableIdQueryUrl = "?tableId=";
  static const customerIdQueryUrl = "?customerId=";
  static const supplierIdQueryUrl = "?supplierId=";
  static const userIdQueryUrl = "?userId=";
  static const positionQueryUrl = "?position=";
  static const queryUrl = "?query=";
  static const isActiveUrl = "?isActive=";
  static const isActiveQueryUrl = "&isActive=";
  static const pageQueryUrl = "?page=";
  static const pageUrl = "&page=";
  static const takeUrl = "&take=20";
  static const typeQueryUrl = "?type=";
  static const orderIdQueryUrl = "?orderId=";
  static const sortType = "&sortType=";
  static const sortby = "&sortBy=";
  static const subMenuId = "&subMenuId=";

  //WhatsApp
  static const whatsAppPrefixUrl = "https://wa.me/";
  static const emailPrefixUrl = "mailto:";

  //Auth
  static const authUrl = "/auth";
  static const emailUrl = "/email";
  static const phoneUrl = "/phone";
  static const verifyUrl = "/verify";
  static const loginUrl = "/login";
  static const setupUrl = "/setup";
  static const googleUrl = "/google";
  static const logoutUrl = "/logout";
  static const registerUrl = "/register";
  static const forgetPasswordUrl = "/forgetPassword";

  //User
  static const userUrl = "/user";
  static const passwordUrl = "/password";
  static const changeUrl = "/change";
  static const rxpinUrl = "/rxpin";
  static const userNameQueryUrl = "?username=";

  //Restaurant
  static const restaurantUrl = "/restaurant";
  static const typesUrl = "/types";
  static const createUrl = "/create";
  static const switchUrl = "/switch";
  static const resourcesUrl = "/resources";
  static const resetUrl = "/reset";
  static const subDomain = "/subdomain";
  static const leaveRestaurant = "/leaveRestaurant";

  //Table and Space
  static const summaryUrl = "/summary";
  static const spaceUrl = "/space";
  static const tableUrl = "/table";
  static const categoryUrl = "/category";
  static const tablesUrl = "/tables";
  static const devTableQrKey = "restrox.dev";
  static const prodTableQrKey = "restro.link";
  static const enUrl = "/en";
  static const dishPositionUrl = "/dishposition";
  static const tablePositionUrl = "/tablePosition";

  //Menu
  static const menuUrl = "/menu";

  //QR Code
  static const qrCodePrefixUrl = "https://quickchart.io/qr$textQueryUrl";
  static const formatQueryUrl = "&format=";
  static const marginQueryUrl = "&margin=";
  static const bgColorQueryUrl = "&light=";

  //Staff
  static const staffUrl = "/staff";
  static const inviteUrl = "/invite";
  static const staffUserUrl = "?username=";
  static const acceptUrl = "/accept";
  static const rejectUrl = "/reject";
  static const staffsUrl = "/staffs";

  //Role
  static const roleUrl = "/role";
  static const permissionsUrl = "/permissions";

  // Transfer ownership
  static const transferOwnershipUrl = "/transfer-ownership";

  // Printer
  static const printerUrl = "/printer";

  //Customer
  static const customerUrl = "/customer";
  static const customerQueryUrl = "&customerId=";
  static const customersUrl = "/customers";

  //Customer
  static const supplierUrl = "/supplier";
  static const supplierQueryUrl = "&supplierId=";
  static const suppliersUrl = "/suppliers";

  //Activity
  static const activityUrl = "/activity";

  // Service
  static const serviceUrl = "/service";
  static const servicesUrl = "/services";
  static const dineInUrl = "/dineIn";
  static const dineInAltUrl = "/dine-in";
  static const deliveryUrl = "/delivery";

  // Search
  static const andQueryUrl = "&query=";

  // Sub-Menu
  static const subMenuUrl = "/submenu";
  static const categoryPositionUrl = "/categoryposition";
  static const dishesUrl = "/dishes";
  static const subMenusUrl = "/submenus";

  // Dish
  static const dishUrl = "/dish";
  static const menusetPricesUrl = "/menusetprices";
  static const pricesUrl = "/prices";
  static const assignTaxUrl = "/assignTax";
  static const assignKotUrl = "/assignKot";

  //Addons
  static const addonsUrl = "/addons";

  //Images
  static const imageKeyUrl = "image";
  static const photosKeyUrl = "photos";
  static const logoKeyUrl = "logo";

  // Menu Set
  static const menuSetUrl = "/menuset";
  static const menuSetIdQueryUrl = "?menusetId=";

  //Order
  static const orderUrl = "/order";
  static const categoriesUrl = "/categories";
  static const categoryIdQueryUrl = "&categoryId=";
  static const kotUrl = "/kot";
  static const itemUrl = "/item";
  static const statusUrl = "?status=";
  static const orderStatusUrl = "?orderStatus=";
  static const activeOrderUrl = "/activeOrder";
  static const cancelUrl = "/cancel";
  static const printUrl = "/print";
  static const moveUrl = "/move";

  //Cash and Banks
  static const paymentUrl = "/payment";
  static const accountUrl = "/account";
  static const modeUrl = "/mode";
  static const defaultUrl = "/default";
  static const paymentModesUrl = "/paymentModes";

  //Department
  static const departmentUrl = "/department";

  //invite web staff
  static const sendUsernameUrl = "/send-username";

  // Settings
  static const settingsUrl = "/settings";

  // invoice
  static const invoiceUrl = "/invoice";
  static const invoiceConfigUrl = "/invoiceConfig";
  static const legalUrl = "/legal";

  //subscription
  static const subscriptionUrl = "/subscription";
  static const activeUrl = "/active";

  // tax
  static const taxUrl = "/tax";
  static const taxesUrl = "/taxes";
  static const positionUrl = "/position";

  //Checkout
  static const checkoutUrl = "/checkout";
  static const configUrl = "/config";

  // transaction
  static const transactionUrl = "/transaction";
  static const transactionPaymentStatus = ["Partial", "Unpaid"];
  static const overview = "/overview";

  //Kot Type
  static const kotTypeUrl = "/kotType";

  //Connect
  static const connectSettingsUrl = "/connect-settings";
  static const subdomainQueryUrl = "?subdomain=";
  static const connectUrl = "connect";

  //Notification Setting
  static const notificationSettingUrl = "/notificationSetting";

  //Inventory
  static const measuringUnitUrl = "/measuringUnit";
  static const stockUrl = "/stock";
  static const groupUrl = "/group";

  //Reports
  static const reportsUrl = "/reports";
  static const salesMasterUrl = "/salesMaster";
  static const incomeStatementUrl = "/incomeStatement";

  // Release Note
  static const releaseNoteUrl = "/release-note";

  //Trail Balance
  static const trailBalanceUrl = "/trialBalance";

  //Consumption
  static const consumptionUrl = "/consumptions";
  static const dropdownUrl = "/dropdown";

  // Income Exepnse
  static const incomeExpenseUrl = "/incomeExpense";

  // Account Head
  static const accountHeadUrl = "/accountHead";
  static const parentUrl = "&parent=";

  //Dashboard
  static const dashboardUrl = "/dashboard";
  static const financeUrl = "/finance";
  static const monthlyUrl = "/monthly";
  static const todayUrl = "/today";
  static const statusUrls = "/status";
  static const bestSellingCategoriesUrl = "/bestSellingCategories";
  static const salesBySubmenuUrl = "/salesBySubmenu";
  static const topSellingTableUrl = "/topSellingTable";
  static const topSellingDishUrl = "/topSellingDish";
  static const topSellingAddonsUrl = "/topSellingAddons";

  // Payment
  static const paymentInOutUrl = "/paymentInOut";
  static const allocationsUrl = "/allocations";
  static const partyTypeQueryUrl = "&partyType=";
  static const partyIdQueryUrl = "&partyId=";
  static const forQueryUrl = "&for=";

  //Order Activity
  static const orderActivityStatus = [
    "orderCreated",
    "orderKotCreated",
    "orderKotStatusUpdated",
    "orderItemStatusUpdated",
    "orderTypeUpdated",
    "orderCheckedOut",
    "orderCancelled"
  ];

  // Transfer balance
  static const balanceTransferUrl = "/balanceTransfer";

  //Daybook
  static const daybookUrl = "/daybook";
  static const currentUrl = "/current";
  static const closeUrl = "/close";
}
