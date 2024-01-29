function fn() {

  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var configMichael = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return configMichael;

    var configJair = {
      baseUrl_encryptions:
                "https://apic-gw-smp.apps.integracion.grupoib.local",
              headers_encryptions: {
                "Content-Type": "application/x-www-form-urlencoded",
              },
              body: {
                username: "uBseGenUat",
                password: "Ibk20$",
                grant_type: "password",
                client_id: "1167d40f120c1eb40934176be4aa",
                client_secret: "65d4925a0b4c8b9249c4ddeae3393",
                scope: "SMP",
              },
    }



}



