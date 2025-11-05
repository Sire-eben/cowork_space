if [[ "$1" == *watch* ]]; then
    flutter packages pub run build_runner watch --delete-conflicting-outputs
else
    flutter packages pub run build_runner build --delete-conflicting-outputs
fi

git config --global http.postBuffer 524288000

git config --global http.maxRequestBuffer 524288000

git config --global core.compression 0

export PATH="$PATH":"$HOME/.pub-cache/bin" && flutterfire configure

 flutter clean && flutter pub get && cd ios && pod install && cd .. && flutter build appbundle
 flutter clean && flutter build appbundle

 import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity: FlutterFragmentActivity() {}

/Users/mac/Library/Android/sdk/platform-tools/adb pair 192.168.8.100:37209
/Users/mac/Library/Android/sdk/platform-tools/adb connect 192.168.8.100:32777

dart pub global activate flutterfire_cli
dart pub global flutterfire configure

/Users/mac/Library/Android/sdk/platform-tools/adb pair 192.168.8.100:34583
/Users/mac/Library/Android/sdk/platform-tools/adb connect 192.168.8.100:33207

keytool -list -v -keystore /Users/mac/StudioProjects/student-app/android/app/upload-keystore.jks -alias upload -storepass allroutes2025 -keypass allroutes2025