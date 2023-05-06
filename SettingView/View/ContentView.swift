import SwiftUI

struct ContentView: View {
    @State private var settingShow: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Spacer()
                }
                Text("Hello, tap setting icon!")
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        settingShow.toggle()
                    } label: {
                        Image(systemName: "gearshape.fill")
                        
                    }
                }
            }
        }
        .sheet(isPresented: $settingShow) {
            SettingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
