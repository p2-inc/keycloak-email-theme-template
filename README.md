# Keycloak email theme example

<!-- phasetwo:banner:start - managed by p2-inc/shared-github-actions, edit there -->
[![license](https://img.shields.io/badge/license-Apache--2.0-blue)](COPYING) [![docs](https://img.shields.io/badge/docs-phasetwo.io-blue)](https://phasetwo.io/docs/getting-started/email/)

📚 [Documentation](https://phasetwo.io/docs/getting-started/email/) • 🚀 [Hosted Keycloak](https://dash.phasetwo.io/?utm_source=github&utm_medium=readme&utm_campaign=keycloak-email-theme-template) • 🤖 [Keycloak Skills](https://github.com/p2-inc/keycloak-skills) • 💬 [Support](mailto:support@phasetwo.io)

> [!TIP]
> **Run this in our cloud, no setup needed.** Phase Two hosts Keycloak with all of our extensions built in. [Try it free with your own cluster →](https://dash.phasetwo.io/?utm_source=github&utm_medium=readme&utm_campaign=keycloak-email-theme-template)
>
> **Using a coding agent?** Add the Phase Two Keycloak skills ([launch post](https://phasetwo.io/blog/keycloak-skills-mcp-launch)) to Claude Code, Cursor or Codex so your agent can set up passwordless login, SSO, organizations and clusters for you:
>
> ```sh
> # Install the skills (connects to our hosted MCP server)
> claude plugin marketplace add p2-inc/keycloak-skills
> claude plugin install phasetwo@keycloak-skills
> # Or connect to the MCP server directly
> claude mcp add --transport http keycloak https://mcp.phasetwo.io/mcp
> ```
<!-- phasetwo:banner:end -->

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
