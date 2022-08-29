//
//  MealsRecordButton.swift
//  CalorieHut
//
//  Created by Youssif Hany on 28/08/2022.
//

import SwiftUI

struct MealsRecordButton: View {
    
    @State var animate:Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing:10){
                VStack{
                    Text("Meal's Record")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.black)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color(.systemBrown):Color.accentColor)
                        .cornerRadius(10)
                        
                }
                    .padding(.horizontal,animate ? 30 : 50)
                    .shadow(
                    color: animate ? Color(.systemBrown).opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0, y: animate ? 50 : 30 )
                    .scaleEffect(animate ? 1.1 : 1.0 )
                    .offset(y: animate ? -7 : -0)
            }
            .frame( maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: makeAnimation)
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
    }

func makeAnimation() {
    guard !animate else {return}
    DispatchQueue.main.asyncAfter(deadline: .now()+1){
        withAnimation(
            .easeInOut(duration: 2.0)
                .repeatForever()
        ){
            animate.toggle()
        }
    }
}
}
struct MealsRecordButton_Previews: PreviewProvider {
    static var previews: some View {
        MealsRecordButton()
    }
}
