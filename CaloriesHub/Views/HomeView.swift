//
//  HomeView.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI
import WidgetKit


struct HomeView: View {
    
    @AppStorage("progressAppStorge",
    store: UserDefaults(suiteName: "group.com.youssif.calorieshub"))
    var progressAppStorge = ""    
    
    @EnvironmentObject private var vm: MealViewModel
    @State private var showList:Bool = false
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
            }
            .sheet(isPresented: $showList, content: {
                MealRecordView()
            })
            .navigationTitle("Hello 👋")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        CustomMealView()
                    }, label: {
                        Text("Create Meal ✏️")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.accentColor)
                            .underline()
                    })
                }
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Text("Hello 👋")
//                        .font(.title2)
//                        .fontWeight(.semibold)
//                }
            }
        }
        .frame(width:UIScreen.main.bounds.width)
        .onAppear{
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
            showList.toggle()
        }label: {
            MealsRecordButton()
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
            .onAppear(perform: {
                progressAppStorge = String(format: "%.0f",vm.userKcal.isEmpty ? 0: (Double(vm.userKcal) ?? 0) - vm.getCountKcal())
                WidgetCenter.shared.reloadTimelines(ofKind: "widgetExtention")
            })
        }
    }
}

