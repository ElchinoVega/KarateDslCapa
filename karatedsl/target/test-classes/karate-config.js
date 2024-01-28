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
      baseUrl_token_L:
                "https://apic-gw-smp.apps.ocpsbx.integracion.grupoib.local",
              headers_token_L: {
                "Content-Type": "application/x-www-form-urlencoded",
                Authorization:
                  "Bearer AAIgMTE2N2Q0MGYxMjBjMWViNDA5MzQxNzYzYWUxYmU0YWH2s2XAfN6Ajc8cgq52M0B6B6y2uz3tQSVZWF4e_5wCpY5WQqk8hFx6XHle6wwGUO1iReHMjykQ6JG-TWWuYV-3",
              },
              body_token_L: {
                username: "uBseGenUat",
                password: "Ibk2018$",
                grant_type: "password",
                client_id: "1167d40f120c1eb409341763ae1be4aa",
                client_secret: "65d4925a0b4c8b9249c4ddea027e3393",
                scope: "SMP",
              },
    }

     var configJose = {
          baseUrl_token_L:
                    "https://apic-gw-smp.apps.ocpsbx.integracion.grupoib.local",
                  headers_token_L: {
                    "Content-Type": "application/x-www-form-urlencoded",
                    Authorization:
                      "Bearer AAIgMTE2N2Q0MGYxMjBjMWViNDA5MzQxNzYzYWUxYmU0YWH2s2XAfN6Ajc8cgq52M0B6B6y2uz3tQSVZWF4e_5wCpY5WQqk8hFx6XHle6wwGUO1iReHMjykQ6JG-TWWuYV-3",
                  },
                  body_token_L: {
                    username: "uBseGenUat",
                    password: "Ibk2018$",
                    grant_type: "password",
                    client_id: "1167d40f120c1eb409341763ae1be4aa",
                    client_secret: "65d4925a0b4c8b9249c4ddea027e3393",
                    scope: "SMP",
                  },
        }

         var configManuel = {
              baseUrl_token_L:
                        "https://apic-gw-smp.apps.ocpsbx.integracion.grupoib.local",
                      headers_token_L: {
                        "Content-Type": "application/x-www-form-urlencoded",
                        Authorization:
                          "Bearer AAIgMTE2N2Q0MGYxMjBjMWViNDA5MzQxNzYzYWUxYmU0YWH2s2XAfN6Ajc8cgq52M0B6B6y2uz3tQSVZWF4e_5wCpY5WQqk8hFx6XHle6wwGUO1iReHMjykQ6JG-TWWuYV-3",
                      },
                      body_token_L: {
                        username: "uBseGenUat",
                        password: "Ibk2018$",
                        grant_type: "password",
                        client_id: "1167d40f120c1eb409341763ae1be4aa",
                        client_secret: "65d4925a0b4c8b9249c4ddea027e3393",
                        scope: "SMP",
                      },
            }

}



