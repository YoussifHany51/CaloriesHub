//
//  ProfileView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 10/04/2022.
//

import SwiftUI

extension View{
    func dismissKeyBoard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),to: nil,from: nil,for: nil)
    }
}


struct CalculatorView: View {
    
    @EnvironmentObject var vm : MealViewModel
    
    @State var age = ""
    @State var height:String = ""
    @State var weight:String = ""
    
    @State var gender:String = "Male"
    @State var activity:String = "Sedentary"
    
    @State var alertTitle:String=""
    @State var showAlert:Bool=false
    
    @State var showInfoSheet:Bool=false
    
    
    let genderSelection: [String] = [
        "Male","Female"
    ]
    
    let activitySelection: [String] = [
        "Sedentary","Lightly active","Moderately active","Active","Very active"
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
                        
                        InfoButton
                        TextFieldInputs
                        
                        Button{
                            kcalCalculator(gender: gender,
                                           activity: activity)
                            
                            setupTextField()
                            
                            showAlert.toggle()
                        }label: {
                            Text("Calculate")
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(height:55)
                                .frame(maxWidth:120)
                                .background(textFieldisValid() ?
                                            Color.accentColor : Color.gray)
                                .cornerRadius(10)
                                .padding()
                        }
                        .disabled(!textFieldisValid())
                        .alert("Recommended daily calories:", isPresented: $showAlert, actions: {
                            
                        }, message: {
                            Text("\(vm.userDailyCal) kcal")
                        })
                    }
                    .padding()
                    Spacer()
                }
            }
            .onTapGesture {
                self.dismissKeyBoard()
            }
            .navigationTitle("Calorie Calculator")
            .sheet(isPresented: $showInfoSheet, content: {
                InfoSheetView()
            })
        }
    }
    
    func kcalCalculator(gender:String,activity:String){
        if textFieldisValid(){
            var res = 0.0
            if gender == "Male"{
                let w = (13.75 * (Double(weight) ?? 0.0))
                let h = (5.003 * (Double(height) ?? 0.0))
                let a = (6.755 * (Double(age) ?? 0.0))
                let total = ((66.47  + w + h) - a)
                
                switch(activity){
                case "Sedentary":
                    res = total * 1.2
                    break
                case "Lightly active":
                    res = total * 1.375
                    break
                case "Moderately active":
                    res = total * 1.55
                    break
                case "Active":
                    res = total * 1.725
                    break
                default:
                    // "Very active"
                    res = total * 1.9
                }
                vm.userDailyCal =
                String(format: "%.0f", res)
                vm.addKcal(kcal: vm.userDailyCal)
            }else{
                let w = (9.563 * (Double(weight) ?? 0.0))
                let h = (1.850 * (Double(height) ?? 0.0))
                let a = (4.676 * (Double(age) ?? 0.0))
                let total = ((655.1 + w + h) - a)
                
                switch(activity){
                case "Sedentary":
                    res = total * 1.2
                    break
                case "Lightly active":
                    res = total * 1.375
                    break
                case "Moderately active":
                    res = total * 1.55
                    break
                case "Active":
                    res = total * 1.725
                    break
                default:
                    // "Very active"
                    res = total * 1.9
                }
                
                vm.userDailyCal = String(format: "%.0f", res)
                vm.addKcal(kcal: vm.userDailyCal)
            }
            
        }
    }
    
    func textFieldisValid()->Bool{
        if(age.count<2 || weight.count<2 || height.count<3){
            return false
        }
        return true
    }
    
    func setupTextField(){
        height = ""
        age = ""
        weight = ""
    }
    
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .environmentObject(MealViewModel())
    }
}

extension CalculatorView{
    
    private var InfoButton:some View{
        HStack {
            Spacer()
            Button{
                showInfoSheet.toggle()
            }label: {
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width:30)
            }
        }
    }
    private var TextFieldInputs:some View{
        VStack{
            
            TextField("Age",text: $age)
                .padding(.horizontal)
                .frame(height:55)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.title)
                .keyboardType(.decimalPad)
            
            TextField("Height",text: $height)
                .padding(.horizontal)
                .frame(height:55)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.title)
                .keyboardType(.decimalPad)
            
            TextField("Weight",text: $weight)
                .padding(.horizontal)
                .frame(height:55)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.title)
                .keyboardType(.decimalPad)
            
            
            Picker(selection:$gender,
                   label:Text("Gender"),
                   content:{
                ForEach(genderSelection.indices,id:\.self){ index in
                    Text(genderSelection[index])
                        .tag(genderSelection[index])
                }
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            HStack {
                Text("Choose your activity :")
                    .font(.headline)
                Picker(
                    selection:$activity,
                    label:Text("Activity"),
                    content:{
                        ForEach(activitySelection.indices,id:\.self){ index in
                            Text(activitySelection[index])
                                .tag(activitySelection[index])
                            
                        }
                    })
                .pickerStyle(MenuPickerStyle())
            }
            .frame(maxWidth:.infinity)
        }
    }
}
