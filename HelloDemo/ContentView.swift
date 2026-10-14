import SwiftUI

struct ContentView: View {
    @State private var clickCount = 0

    private let gradientStart = Color(red: 0xFF / 255, green: 0x6F / 255, blue: 0x00 / 255)
    private let gradientEnd = Color(red: 0x8E / 255, green: 0x24 / 255, blue: 0xAA / 255)
    private let counterTextColor = Color(red: 0xFF / 255, green: 0xF5 / 255, blue: 0x9D / 255)
    private let buttonBackground = Color(red: 0x00 / 255, green: 0xC8 / 255, blue: 0x53 / 255)
    private let resetButtonBackground = Color(red: 0xD5 / 255, green: 0x00 / 255, blue: 0x00 / 255)

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [gradientStart, gradientEnd],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Hello World")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)

                Text("Số lần bấm: \(clickCount)")
                    .font(.system(size: 20))
                    .foregroundColor(counterTextColor)

                Button(action: {
                    clickCount += 1
                }) {
                    Text("Bấm vào tôi!")
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(buttonBackground)
                        .cornerRadius(8)
                }

                Button(action: {
                    clickCount = 0
                }) {
                    Text("Reset")
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(resetButtonBackground)
                        .cornerRadius(8)
                }
            }
            .padding(24)
        }
    }
}

#Preview {
    ContentView()
}
