import SwiftUI

struct HomeView: View {
    @State private var clickCount = 0

    var onLogout: () -> Void

    private let gradientColors = [
        Color(red: 0xFF / 255, green: 0x2D / 255, blue: 0x95 / 255),
        Color(red: 0xFF / 255, green: 0x6F / 255, blue: 0x00 / 255),
        Color(red: 0xFF / 255, green: 0xD6 / 255, blue: 0x00 / 255),
    ]
    private let milestoneColors = [
        Color(red: 0xFF / 255, green: 0xF5 / 255, blue: 0x9D / 255),
        Color(red: 0x69 / 255, green: 0xF0 / 255, blue: 0xAE / 255),
        Color(red: 0x82 / 255, green: 0xB1 / 255, blue: 0xFF / 255),
        Color(red: 0xFF / 255, green: 0x80 / 255, blue: 0xAB / 255),
    ]
    private let incrementButtonBackground = Color(red: 0x00 / 255, green: 0xC8 / 255, blue: 0x53 / 255)
    private let decrementButtonBackground = Color(red: 0x29 / 255, green: 0x79 / 255, blue: 0xFF / 255)
    private let resetButtonBackground = Color(red: 0xD5 / 255, green: 0x00 / 255, blue: 0x00 / 255)

    private var counterTextColor: Color {
        let milestone = abs(clickCount) / 10
        return milestoneColors[milestone % milestoneColors.count]
    }

    var body: some View {
        ZStack {
            LinearGradient(
                colors: gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                HStack {
                    Text("Xin chào 👋")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)

                    Spacer()

                    Button(action: onLogout) {
                        Text("Đăng xuất")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.horizontal, 14)
                            .padding(.vertical, 8)
                            .background(Color.black.opacity(0.25))
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 8)

                Spacer()

                Text("Hello World")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)

                Text("Số lần bấm: \(clickCount)")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(counterTextColor)
                    .animation(.easeInOut, value: clickCount)

                HStack(spacing: 16) {
                    Button(action: { clickCount -= 1 }) {
                        Text("➖ Giảm")
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background(decrementButtonBackground)
                            .cornerRadius(8)
                    }

                    Button(action: { clickCount += 1 }) {
                        Text("➕ Tăng")
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background(incrementButtonBackground)
                            .cornerRadius(8)
                    }
                }

                Button(action: { clickCount = 0 }) {
                    Text("Reset")
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(resetButtonBackground)
                        .cornerRadius(8)
                }

                Spacer()
            }
            .padding(24)
        }
    }
}

#Preview {
    HomeView(onLogout: {})
}
