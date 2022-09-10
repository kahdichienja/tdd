class EnvironmentConfig {
  static const ENVIRONMENT_VAR = String.fromEnvironment(
    'ENVIRONMENT_VAR',
    defaultValue: 'STAGING',
  );
}
