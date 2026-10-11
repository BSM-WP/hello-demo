# ai-os-vnpt-dev

Workspace ai-os-vnpt — dev

## Demo apps (tooling test)

Hai app demo "Hello Demo" dùng để thử nghiệm luồng build + test fleet (`device_build` / `device_test`), không phải tính năng sản phẩm chính thức. Cả 2 cùng hiển thị "Hello World" + counter tăng khi bấm nút, dùng chung palette màu.

- **Android** — Gradle project tại thư mục gốc repo (`app/`), build bằng `./gradlew assembleDebug`.
- **iOS** — Xcode project tại [`ios/HelloDemo/`](ios/HelloDemo), build bằng `xcodebuild` với scheme `HelloDemo`.
