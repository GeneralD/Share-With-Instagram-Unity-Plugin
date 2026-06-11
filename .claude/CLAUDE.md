# Share-With-Instagram-Unity-Plugin

Legacy (2016–2017) iOS native plugin for Unity that opens a share sheet
(`UIActivityViewController`) to share text/images, including a bundled custom
Instagram `UIActivity` (`DMActivityInstagram`). Objective-C / Objective-C++.

- Status: legacy sample, not maintained; relies on deprecated iOS 9-era APIs
  (`keyWindow`) and Instagram's old document-interaction sharing — will not
  work on modern iOS/Instagram.
- `UnityPlugin/ShareWithInstagram/Unity Native Plugin/AlsoShareWithInstagram.mm`
  — plugin entry points `shareMessage(const char*)` and
  `shareImage(const char* imagePath, const char* message)` with C linkage,
  intended for Unity `[DllImport("__Internal")]`.
- `UnityPlugin/.../DMActivityInstagram/` — bundled custom UIActivity sources.
- `ShareWithInstagram/` — standalone iOS sample app using CocoaPods
  (`MGInstagram`, `PKImagePicker`, CocoaPods 1.0.1); needs `pod install`,
  open the `.xcworkspace`.
- No tests, no CI, no LICENSE file. No verified build command (era-specific
  Xcode/SDK required).
