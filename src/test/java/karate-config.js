function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    Name: 'Book_API_Details',
    baseUrl : 'https://simple-books-api.glitch.me',
    accessToken : '97fba7552895db0cc6771b48962f375c6d14e48646f72c8b15cd2cd8519b300a',
    orderId: 'At4JXZ-UannIVebljllDg'

  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}