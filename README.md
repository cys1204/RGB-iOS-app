# RGB Color Picker (SwiftUI)

這是一個使用 **SwiftUI** 開發的輕量級 iOS 應用程式，旨在透過直覺的滑桿控制，讓使用者即時探索與調整 RGB 顏色數值。

## 🌟 特色功能

* **即時預覽更新**：當你拖動 R、G、B 滑桿時，背景顏色會同步產生變化。
* **精確數值顯示**：標籤會即時將 0.0 - 1.0 的浮點數轉換為標準的 **0 - 255** RGB 整數。
* **響應式介面**：使用 `ZStack` 與 `VStack` 構建，確保在不同尺寸的 iPhone 上都能擁有良好的視覺比例。
* **模組化設計**：將數值顯示邏輯抽離至獨立的 `ShowWords` 子視圖，提高代碼的可讀性。

## 📸 介面演示
<p align="center">
  <img src="https://github.com/user-attachments/assets/3065d824-9518-4ada-8124-af00a923e638" width="250" alt="RGB Color Picker 介面演示">
</p>
<p align="center"><i>RGB 滑桿調整與即時背景顏色預覽</i></p>

## 🛠 Tech Stack

* **語言**: Swift
* **框架**: SwiftUI
* **開發工具**: Xcode 13.0+
* **最低配置**: iOS 15.0+

## 📂 專案結構

```text
.
├── RGBApp.swift        # 應用程式進入點
└── ContentView.swift   # 主要 UI 與邏輯 (包含核心 Slider 與 ShowWords View)
```

## 🚀 如何運行
複製此儲存庫 (Repository)：

Bash
git clone [https://github.com/YourUsername/RGB-Picker.git](https://github.com/YourUsername/RGB-Picker.git)
使用 Xcode 開啟 .xcodeproj 或專案資料夾。

選擇一個 iOS 模擬器或連接你的實體 iPhone。

按下 Cmd + R 即可開始運行。

## 💡 程式碼亮點
在 ContentView.swift 中，我們透過 @State 屬性包裝器來驅動介面更新。當滑桿改變狀態時，SwiftUI 會自動重新渲染背景：

```text
Swift
Color(red: redValue, green: greenValue, blue: blueValue)
    .edgesIgnoringSafeArea(.all)
```

並透過自定義元件 ShowWords 來處理數值轉換邏輯：

```text

Swift
struct ShowWords: View {
    var color: String
    var value: Double
    var body: some View {
        HStack {
            Text(color + " : \(Int(value * 255.0))")
                .font(.title)
                .fontWeight(.light)
        }.frame(width: 100).fixedSize()
    }
}
```

## ✍️ 作者
**CYS**
