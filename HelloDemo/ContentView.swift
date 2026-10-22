import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = false

    var body: some View {
        Group {
            if isLoggedIn {
                HomeView(onLogout: { isLoggedIn = false })
            } else {
                LoginView(onLogin: { isLoggedIn = true })
            }
        }
        .animation(.easeInOut, value: isLoggedIn)
    }
}

#Preview {
    ContentView()
}
