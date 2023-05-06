import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) var dismiss
    
    private var subscriptionActive: String = "Active until 20 March 2024"
    
    @State private var notificationToggle: Bool = true
    @State private var yourCalendarToggle: Bool = true
    @State private var whatFetusIsDoingToggle: Bool = true
    @State private var toDoToggle: Bool = true
    @State private var yourWeightToggle: Bool = true
    
    var body: some View {
        NavigationStack {
            
            // MARK: Toolbar
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    Text("Setting")
                        .font(.custom("SFProDisplay-Heavy", size: 32))
                        .foregroundColor(.white)
                    Spacer()
                    Button {
                        dismiss()
                    } label: {
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30.57)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .opacity(0.3)
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                        }
                    }
                }
                
                // MARK: General
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("General")
                            .font(.custom("SFProDisplay-Heavy", size: 24))
                        Spacer()
                    }
                    Spacer()
                    VStack {
                        HStack {
                            Text("Subscription")
                            Spacer()
                            Text(subscriptionActive)
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Toggle("Notification",isOn: $notificationToggle)
                                .toggleStyle(CustomFixedSizeToggleStyle(width: 36, height: 20))
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Button {
                                // action
                            } label: {
                                Text("Rate app")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 9.5, height: 19)
                            }
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Button {
                                // action
                            } label: {
                                Text("Contact support")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 9.5, height: 19)
                            }
                        }
                        Spacer()
                    }
                    .font(.custom("SFProDisplay-Regular", size: 16))
                }
                .padding(20)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 235)
                .background(Color("ColorFormBG"))
                .cornerRadius(30)
                
                // MARK: Second
                VStack(alignment: .leading, spacing: 5) {
                    
                    VStack {
                        Spacer()
                        HStack {
                            Button {
                                // action
                            } label: {
                                Text("Log out")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 9.5, height: 19)
                            }
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Button {
                                // action
                            } label: {
                                Text("Delete account")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 9.5, height: 19)
                            }
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Button {
                                // action
                            } label: {
                                Text("Download personal data")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 9.5, height: 19)
                            }
                        }
                        Spacer()
                    }
                    .font(.custom("SFProDisplay-Regular", size: 16))
                }
                .padding(20)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 136)
                .background(Color("ColorFormBG"))
                .cornerRadius(30)
                
                // MARK: Today’s blocks
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Today’s blocks")
                            .font(.custom("SFProDisplay-Heavy", size: 24))
                        Spacer()
                    }
                    Spacer()
                    VStack {
                        HStack {
                            Toggle("Your calendar",isOn: $yourCalendarToggle)
                                .toggleStyle(CustomFixedSizeToggleStyle(width: 36, height: 20))
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Toggle("What fetus is doing",isOn: $whatFetusIsDoingToggle)
                                .toggleStyle(CustomFixedSizeToggleStyle(width: 36, height: 20))
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Toggle("To do",isOn: $toDoToggle)
                                .toggleStyle(CustomFixedSizeToggleStyle(width: 36, height: 20))
                        }
                        Divider()
                            .background(.white)
                            .opacity(0.5)
                            .padding(.trailing, -20)
                            .padding(.leading, 2)
                        
                        HStack {
                            Toggle("Your weight",isOn: $yourWeightToggle)
                                .toggleStyle(CustomFixedSizeToggleStyle(width: 36, height: 20))
                        }
                        Spacer()
                    }
                    .font(.custom("SFProDisplay-Regular", size: 16))
                }
                .padding(20)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 235)
                .background(Color("ColorFormBG"))
                .cornerRadius(30)
                Spacer()
            }
            .padding(20)
            .padding(.top, 20)
            .ignoresSafeArea()
            .background(Color("ColorBG"))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

// MARK: Custom fixed size toggle style
struct CustomFixedSizeToggleStyle: ToggleStyle {
    var width: CGFloat
    var height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            RoundedRectangle(cornerRadius: height / 2)
                .fill(configuration.isOn ? Color.white : Color.gray)
                .frame(width: width, height: height)
                .overlay(
                    Circle()
                        .fill(Color("ColorToggle"))
                        .padding(.all, height / 8)
                        .offset(x: configuration.isOn ? width / 5 : -width / 5, y: 0)
                )
                .animation(.easeInOut(duration: 0.1), value: configuration.isOn)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}
