//
//  ProfileView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 10/04/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var vm : MealViewModel
    
    @State var age = ""
    @State var height:String = ""
    @State var weight:String = ""
    
    @State var gender:String = "Male"
    
    
    @State var alertTitle:String=""
    @State var showAlert:Bool=false
    
    
    let genderSelection: [String] = [
    "Male","Female"
    ]
    
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor =
        UIColor.brown
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(.systemBrown).opacity(0.5)
                    .ignoresSafeArea()
                
                VStack{
                    VStack{
                    Text("Use the calorie calculator to estimate the number of daily calories your body needs to maintain, loss or gain weight.")
                    .font(.headline)
                    .padding()
                        
                        Text("If you're pregnant or breast-feeding, are a competitive athlete, or have a metabolic disease, such as diabetes, the calorie calculator may overestimate or underestimate your actual calorie needs.")
                            
                        HStack(spacing:10){
                            Text("Age")
                                .foregroundColor(.blue)
                                .font(.title3)
                                .bold()
                                .padding()
                            TextField("", text: $age)
                                .frame(width:100,height: 50)
                                .border(.gray, width: 1.8)
                                .cornerRadius(10)
                                .keyboardType(.numberPad)
                            Text("years")
                        }
                        .padding()


                        HStack(spacing:10){
                            Text("Height")
                                .foregroundColor(.blue)
                                .font(.title3)
                                .bold()
                            TextField("", text: $height)
                                .frame(width:100,height: 50)
                                .border(.gray, width: 1.8)
                                .cornerRadius(10)
                            Text("cm.")
                        }
                        .padding()

                        HStack(spacing:10){
                            Text("Weight")
                                .foregroundColor(.blue)
                                .font(.title3)
                                .bold()
                            TextField("", text: $weight)
                                .frame(width:100,height: 50)
                                .border(.gray, width: 1.8)
                                .cornerRadius(10)
                            Text("kg.")
                        }
                        .padding()
                        
                        Picker(selection:$gender,
                               label:Text("Gender"),
                               content:{
                            ForEach(genderSelection.indices){ index in
                                Text(genderSelection[index])
                                    .tag(genderSelection[index])
                            }
                        })
                        .pickerStyle(SegmentedPickerStyle())
                        
                        Button{
                            
                            if textChecker(){
                            
                            if gender == "Male"{
                                let w = (13.75 * (Double(weight) ?? 0.0))
                                let h = (5.003 * (Double(height) ?? 0.0))
                                let a = (6.755 * (Double(age) ?? 0.0))
                                let res = ((66.47  + w + h) - a)
                                vm.userDailyCal = String(format: "%.0f", res)
                                vm.addKcal(kcal: vm.userDailyCal)
                            }else{
                                let w = (9.563 * (Double(weight) ?? 0.0))
                                let h = (1.850 * (Double(height) ?? 0.0))
                                let a = (4.676 * (Double(age) ?? 0.0))
                                let res = ((655.1 + w + h) - a)
                                vm.userDailyCal = String(format: "%.0f", res)
                                vm.addKcal(kcal: vm.userDailyCal)
                            }
                            }
                        }label: {
                            Text("Calculate")
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(height:55)
                                .frame(maxWidth:120)
                                .background(textChecker() ? Color.accentColor
                                : Color.gray)
                                .cornerRadius(10)
                                .padding()
                        }
                                
                        
                        if vm.userDailyCal.isEmpty{
                            
                        }else{
                            VStack {
                                HStack {
                                    Text("Recommended calories : ")
                                    Text(vm.userDailyCal)
                                    Text("kcal")
                                }
                                Text("daily")
                            }
                        }
                        
                        
                    }
                    .padding()
                    Spacer()
                    
                }
                
                
            }
            .navigationTitle("Calorie Calculator")
            .alert(isPresented: $showAlert, content: getAlert)
        }
    }
    func textChecker()->Bool{
        if(age.count<2 || weight.count<2 || height.count<3){
            alertTitle="Invalid input"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert()->Alert{
        return Alert(title: Text(alertTitle))
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(MealViewModel())
    }
}
