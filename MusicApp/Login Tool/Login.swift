//
//  Login.swift
//  MusicApp
//
//  Created by Alyssa Feinberg on 2/17/23.
//

extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

import SwiftUI

struct Login: View {
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    @State var email = ""
    @State var password = ""
    @State var faceIdEnabled = false
    @State var signUpPressed = false
    
    var body: some View {
//        NavigationView {
            ZStack {
                
                Color("BrandLightGreen").opacity(0.35).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("DummyLogo")
                        .resizable().frame(width: 100, height:100)
                        .padding()
                    
                    VStack(spacing: 15) {
                        HStack(spacing: 15) {
                            Image(systemName: "envelope")
                                .foregroundColor(.black).frame(width: 15, height: 15)
                            
                            TextField("Email", text: self.$email)
                                .keyboardType(.emailAddress)
                        }
                        
                        Divider()
                        
                        HStack(spacing: 15) {
                            Image(systemName: "key")
                                .foregroundColor(.black)
                                .frame(width: 15, height: 15)
                            
                            SecureField("Password", text: self.$password)
                        }
                        
                        Divider()
                        
                        if let mess = loginStatusMessage {
                            Text(mess).font(.footnote).foregroundColor(.red)
                        }
                        
                    }.padding()
                        .padding(.vertical, screenHeight/20)
                        .padding(.horizontal, 40)
                    
                    HStack {
                        CheckBoxView(checked: $faceIdEnabled)
                        Text("Turn on FaceId for future logins").font(.footnote).foregroundColor(.gray)
                        
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Forgot your password?")
                            .font(.footnote)
                            .padding(.all, 10)
                            .padding(.bottom, 5)
                            .foregroundColor(Color("BrandGreen"))
                    }
                    .padding(.bottom, screenHeight/10)
                    
//                    Spacer()
//                    Spacer()
                    
                    
                    Text("SIGN IN")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(Color("BrandGreen")).cornerRadius(8)
                        .shadow(radius: 5)
                        .onTapGesture {
                            signInPressed()
                        }
                    
                    //get rid of padding
                    
                    HStack(spacing: 5) {
                        Text("Don't have an account?").font(.footnote).foregroundColor(.gray)
                        
                        Button {
                            signUpPressed.toggle()
                        } label: {
                            Text("Sign up")
                                .font(.footnote)
                                .padding(.vertical)
                                .foregroundColor(Color("BrandGreen"))
                        }
                        
                    }
                    
                    Spacer()
                    
//                    NavigationLink(destination: SUName().navigationBarBackButtonHidden(false).navigationTitle("").foregroundColor(.black), isActive: $signUpPressed) {
//                        Text("")
//                    }
                    
                }
//            }.navigationBarTitle("")
            
        }
        .onAppear {
            //check if the user is already logged in
        }
    }
    
    @State var loginStatusMessage: String?
    
    private func signInPressed() {
//        Auth.auth().signIn(withEmail: email, password: password) {
//            result, error in
//
//            if let err = error {
//                print("FALIED TO LOG IN USER: \(err)")
//                self.loginStatusMessage = "\(err)"
//                return
//            }
//
//            //could change login status, but won't be necissary once we change views
//            print("SUCESSFULLY LOGGED IN USER: \(result?.user.uid ?? "")")
//        }
    }
}

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemGreen) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

