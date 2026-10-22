import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var errorMessage: String?

    var onLogin: () -> Void

    private let gradientStart = Color(red: 0xFF / 255, green: 0x6F / 255, blue: 0x00 / 255)
    private let gradientEnd = Color(red: 0x8E / 255, green: 0x24 / 255, blue: 0xAA / 255)

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [gradientStart, gradientEnd],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 72, height: 72)
                            .foregroundColor(.white)

                        Text("Xin chào!")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)

                        Text("Đăng nhập để tiếp tục")
                            .font(.system(size: 15))
                            .foregroundColor(.white.opacity(0.85))

                        VStack(spacing: 14) {
                            TextField("Tên đăng nhập", text: $username)
                                .padding(14)
                                .background(Color.white.opacity(0.92))
                                .cornerRadius(10)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)

                            SecureField("Mật khẩu", text: $password)
                                .padding(14)
                                .background(Color.white.opacity(0.92))
                                .cornerRadius(10)

                            if let errorMessage {
                                Text(errorMessage)
                                    .font(.system(size: 13))
                                    .foregroundColor(.yellow)
                            }

                            Button(action: handleLogin) {
                                Text("Đăng nhập")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundColor(gradientEnd)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 14)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                            .padding(.top, 4)
                        }
                        .padding(24)
                        .background(Color.black.opacity(0.18))
                        .cornerRadius(20)
                        .padding(.horizontal, 12)
                    }
                    .padding(24)
                    .frame(minHeight: proxy.size.height)
                }
            }
        }
    }

    private func handleLogin() {
        let trimmedUser = username.trimmingCharacters(in: .whitespaces)
        let trimmedPass = password.trimmingCharacters(in: .whitespaces)
        guard !trimmedUser.isEmpty, !trimmedPass.isEmpty else {
            errorMessage = "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu"
            return
        }
        errorMessage = nil
        onLogin()
    }
}

#Preview {
    LoginView(onLogin: {})
}
