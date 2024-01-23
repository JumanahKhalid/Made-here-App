//
//  OnboardingScreen.swift
//  saudimade
//
//  Created by jumanah khalid albisher on 10/07/1445 AH.
//

import SwiftUI

struct OnboardingScreen: View {
    @State var finishOnboarding = false
    
    var body: some View {
            if !finishOnboarding {
                ZStack{
                    //Background
                    bgColor()
                    TabView{
                        OnboardingView(finishOnboarding: $finishOnboarding, imageName: "saudilogo", title: "رؤيتنا", description: "جعل السلع والخدمات السعودية الخيار المفضل، محلياً وعالمياً")
                        
                        OnboardingView(finishOnboarding: $finishOnboarding, imageName: "shopping-bags", title: "خدمه شراء سلسه", description: "saudilogo")
                        
                        OnboardingView(finishOnboarding: $finishOnboarding, imageName: "credit-card", title: "Protect", description: "saudilogo", isFinal: true)
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
    //                .onAppear {
    //                    setupAppearance()
    //                }
                }
            }
        else{
//            LoginScreen()
       //   MainTabbedView()
//            Wrapper()
        }
//        }
    }
}
//                              - Methods -

// Change the color of the current page indecator
//func setupAppearance() {
//      UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color("filter&selected"))
//    }

struct bgColor: View {
    var body: some View {
        LinearGradient(
            stops:[
                Gradient.Stop(color: Color(red: 0.93, green: 0.96, blue: 1), location: 0.00),
                Gradient.Stop(color: Color(red: 0.97, green: 0.9, blue: 0.73), location: 0.34),
                Gradient.Stop(color: Color(red: 1, green: 1, blue: 1), location: 0.59),
                ],
            startPoint: UnitPoint(x: 0.5, y: 1.19),
            endPoint: UnitPoint(x: 0.5, y: 0.15)
        )
        .edgesIgnoringSafeArea(.all)
    }
}

// - Onboarding single View -
struct OnboardingView: View {
    @Binding var finishOnboarding: Bool
    
    let imageName : String
    let title : String
    let description : String
    var isFinal = false
    
    var body: some View {
        VStack (spacing: 20){
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
//               .foregroundColor(.teal) // change color
            Text(title)
                .font(.title.bold())
                .accentColor(.black).bold()
            
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
           // if isFinal{
//                NavigationLink(destination: LoginScreen(), label:{
              //      tcustomButton(title: "Get Started",color:"primaryButtonColor")
             //       .onTapGesture {
               //        finishOnboarding = true
                    }
                
//                })
            }
        }
 //       .padding(.horizontal,tdefaultPadding)
    //}
//}

#Preview {
    OnboardingScreen()
}
