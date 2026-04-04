import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("Second View")
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Dismiss", systemImage: "chevron.backward"){
                        dismiss()
                    }
                }
            }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Second View") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            NavigationStack {
                SecondView()
            }
        }
    }
}

#Preview {
    ContentView()
}
