//
//  HomeView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject private var vm: MealViewModel
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(.systemBrown).opacity(0.5)
                    .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        ProgressRingView()
                            .padding()
                        ProgressCircleView()
                        
                    KcalResult
                    .foregroundColor(.white)
                    .font(.title)
                    }
                    
                    MealListButton
                    Spacer()
                }
               Spacer()
            }
            .sheet(isPresented: $vm.showMealsEatenList, content: {
                MealRecordView()
            })
            .navigationTitle("Hello👋")
        }
        .onAppear{
            NotificationManager.instance.requestAuthorization()
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MealViewModel())
    }
}

extension HomeView{
    
    private var MealListButton: some View{
        Button{
            vm.showMealsEatenList.toggle()
        }label: {
            Text("Meal's record")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width:150,height: 40)
                .background(Color.white)
                .cornerRadius(10)
        }
    }
    
    private var KcalResult:some View{
        VStack{
            HStack {
                // format "%.0f" to remove decimal
                Text(String(format: "%.0f",vm.userKcal.isEmpty ? 0: (vm.getCountKcal() / (Double(vm.userKcal) ?? 0)) * 100 ))
                    .fontWeight(.bold)
                Text("%")
            }
            HStack {
                Text(String(format: "%.0f",vm.userKcal.isEmpty ? 0: (Double(vm.userKcal) ?? 0) - vm.getCountKcal()))
                    .fontWeight(.bold)
                Text("Kcal")
                    .font(.body)

            }
        }
    }
}

