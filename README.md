# ai-os-vnpt-dev

Workspace ai-os-vnpt — dev

## Demo apps (tooling test)

Hai app demo "Hello Demo" dùng để thử nghiệm luồng build + test fleet (`device_build` / `device_test`), không phải tính năng sản phẩm chính thức. Cả 2 cùng hiển thị "Hello World" + counter tăng khi bấm nút, dùng chung palette màu.

- **Android** — Gradle project, source tại [`app/`](app), build bằng `./gradlew assembleDebug`.
- **iOS** — Xcode project, source tại [`HelloDemo/`](HelloDemo), build bằng `xcodebuild` với scheme `HelloDemo`.

> Cả 2 project (`HelloDemo.xcodeproj` + file config Gradle) nằm ở thư mục gốc repo vì `device_build` chỉ tìm Xcode/Gradle project ở root, không hỗ trợ subdirectory.
