import ProjectDescription

public extension Project {
    static let baseinfoPlist: [String: InfoPlist.Value] = [
        "CFBundleShortVersionString": "1.0.3",
        "CFBundleVersion": "1",
        "CFBundleDevelopmentRegion": "ko",
        "CFBundleIdentifier": "com.RecorDream.Release",
        "UILaunchStoryboardName": "LaunchScreen",
        "CFBundleDisplayName": "RecorDream",
        "LSApplicationQueriesSchemes": ["kakaokompassauth", "kakaolink","instagram-stories"],
        "UIApplicationSceneManifest": [
            "UIApplicationSupportsMultipleScenes": false,
            "UISceneConfigurations": [
                "UIWindowSceneSessionRoleApplication": [
                    [
                        "UISceneConfigurationName": "Default Configuration",
                        "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                    ],
                ]
            ]
        ],
        "UIStatusBarStyle": "UIStatusBarStyleLightContent",
        "UIViewControllerBasedStatusBarAppearance": false,
        "UIAppFonts": [
            "Item 0": "Pretendard-Black.otf",
            "Item 1": "Pretendard-Bold.otf",
            "Item 2": "Pretendard-ExtraBold.otf",
            "Item 3": "Pretendard-ExtraLight.otf",
            "Item 4": "Pretendard-Light.otf",
            "Item 5": "Pretendard-Medium.otf",
            "Item 6": "Pretendard-Regular.otf",
            "Item 7": "Pretendard-SemiBold.otf",
            "Item 8": "Pretendard-Thin.otf"
        ],
        "App Transport Security Settings": ["Allow Arbitrary Loads": true],
        "NSAppTransportSecurity": ["NSAllowsArbitraryLoads": true],
        "NSMicrophoneUsageDescription": "음성을 통해 꿈을 기록하기 위해서는 마이크 이용 권한이 필요합니다.",
        "Supports opening documents in place": true,
        "Application supports iTunes file sharing": true,
        "ITSAppUsesNonExemptEncryption": false,
        "UIBackgroundModes": ["fetch",
                              "remote-notification",
                              "audio"],
        "CFBundleURLTypes": [
                                [
                                    "CFBundleTypeRole": "Editor",
                                    "CFBundleURLSchemes": ["kakao000e1e31f022f98fbe16c76ab287abd1"]
                                ]
                            ],
    ]
}
