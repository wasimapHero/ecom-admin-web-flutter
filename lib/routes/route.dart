class TRoutes {
  static const firstScreen = '/';
  static const secondScreen = '/second-screen/';
  static const secondScreenWithDirectParameters = '/second-screen/:userValue';
  static const responsiveDesignPageScreen = '/responsive-design-page/';



  static const login = '/login';
  static const forgetPassword = '/forget-password';
  static const resetPassword = '/reset-password';
  static const dashboard = '/dashboard';
  static const media = '/media';

  static const banners = '/banners';
  static const createBanner = '/create-banner';
  static const editBanner = '/edit-banner';

  static const products = '/products';
  static const createProduct = '/create-product';
  static const editProduct = '/edit-poduct';

  static const brands = '/brands';
  static const createbrand = '/create-brand';
  static const editbrand = '/edit-brand';

  static const customers = '/customers';
  static const createCustomer = '/create-customer';
  static const editCustomer = '/edit-customer';

  static const orders = '/orders';
  static const createOrder = '/create-order';
  static const editOrder = '/edit-order';
  
    static List sideMenuItems = [
    // firstScreen, secondScreen, secondScreenWithDirectParameters, responsiveDesignPageScreen
    dashboard
  ];
}