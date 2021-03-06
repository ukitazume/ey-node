/**
 * New Relic agent configuration.
 *
 * See lib/config.defaults.js in the agent distribution for a more complete
 * description of configuration variables and their potential values.
 */
var EYConfig = require('ey_config');
EYConfiga.Config('./config/newrelic_development.json');
// if (process.env.RAILS_ENV == 'development') {
// }
exports.config = {
  /**
   * Array of application names.
   */
  app_name: EYConfig.get('base', 'app_environment_name'),
  /**
   * Your New Relic license key.
   */
  license_key: EYConfig.get("New Relic", 'license_key'),
  logging: {
    /**
     * Level at which to log. 'trace' is most useful to New Relic when diagnosing
     * issues with the agent, 'info' and higher will impose the least overhead on
     * production applications.
     */
    level: 'info'
  }
}
