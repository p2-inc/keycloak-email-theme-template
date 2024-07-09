# Keycloak email theme example

## Keycloak theme template

You can use these as base template for developing a Keycloak theme locally.

### Developing custom Keycloak themes

  * Create a folder for your custom theme within the ``src/main/resources/themes`` directory, if one does not already exist. 
  * Then add a subdirectory for the theme type (e.g. ``email``, ``login``, etc.).
  * Modify the themes manifest in ``src/main/resources/META-INF/keycloak-themes.json`` to add your theme name (also the directory name.
  * Make a ``theme.properties`` file in your theme's directory. Use the template here as an example.
  * Modify any of the files within your custom theme directory. Assuming you are extending the ``base`` or ``keycloak`` theme, you only need to override the files you want to change.
  * To easily iterate without having to restart the server every time, load keycloak using `start-dev` with the included docker-compose file caching off: `docker compose up`

#### Tips

  * You can easily override the emails [here](https://github.com/keycloak/keycloak/tree/main/themes/src/main/resources/theme/base/email) by setting ``parent=base`` and it is only necessary to override the templates you want to change.
  * Override only the [template.ftl](https://github.com/keycloak/keycloak/blob/main/themes/src/main/resources/theme/base/email/html/template.ftl) to wrap the existing messages with your branding/chrome. There is an example of this in the repository.
  * Almost all message content overrides happen in the ``messages/messages_<locale>.properties`` files.
  
### Testing your theme

  * Login to the admin console at `http://localhost:8080/auth/admin` with `admin:admin`
  * Go into `Realm Settings`->`Themes` and select the theme you are working on (e.g. Login->example)
  
### Packaging the theme for deployment

  * Run `mvn package` to build a jar that can be placed in the `providers` directory of your Keycloak installation.
