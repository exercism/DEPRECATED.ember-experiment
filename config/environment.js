module.exports = function(environment) {
  var ENV;
  ENV = {
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {}
    },
    APP: {}
  };
  if (environment === 'development') {
    ENV.LOG_MODULE_RESOLVER = true;
    ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    ENV.APP.LOG_MODULE_RESOLVER = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
  }
  return ENV;
};