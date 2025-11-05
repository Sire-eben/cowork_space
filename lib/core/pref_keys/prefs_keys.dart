enum PrefsKeys {
  token('token-pref-key'),
  loggedIn('is-signed-in'),
  loggedOut('is-signed-out'),
  termsAndConditions('terms-and-conditions'),
  biometricLogin('biometrics-pref-key'),
  onboard('onboard-pref-key'),
  lastLocation('last-location');

  const PrefsKeys(this.key);

  final String key;
}
