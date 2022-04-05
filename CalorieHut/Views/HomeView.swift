//
//  HomeView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI


struct HomeView: View {
    
    @State var showMealSheet: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(.systemCyan).opacity(0.8)
                    .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        ProgressRingView()
                        ProgressCircleView()
                    VStack{
                        Text("50 %")
                            .fontWeight(.bold)
                        Text("1200 kcal")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.white)
                    .font(.title)
                    }
                    Button{
                        showMealSheet.toggle()
                    }label: {
                        Text("Meal's record")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width:150,height: 40)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
               Spacer()
            }
            .sheet(isPresented: $showMealSheet, content: {
                Text("sheet")
            })
            .navigationTitle("Hello👋")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
