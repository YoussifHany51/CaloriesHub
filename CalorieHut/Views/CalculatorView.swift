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
    
    
    @State var alertTitle:String=""
    @State var showAlert:Bool=false
    
    @State var showInfoSheet:Bool=false
    
    
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
                        
                        InfoButton
                        
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
                                .submitLabel(.next)
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
                                .keyboardType(.numberPad)
                                .submitLabel(.next)
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
                                .keyboardType(.numberPad)
                                .submitLabel(.done)
                            
                            Text("kg.")
                        }
                        .padding()
                        
                        Picker(selection:$gender,
                               label:Text("Gender"),
                               content:{
                            ForEach(genderSelection.indices,id:\.self){ index in
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
                        //
                        //                        HStack {
                        //                            Text("Or enter here:")
                        //                            TextField("",text: $vm.userDailyCal)
                        //                                .frame(width:80,height: 50)
                        //                                .border(.gray, width: 1.8)
                        //                            .cornerRadius(10)
                        //                            Button{
                        //                                vm.addKcal(kcal: vm.userDailyCal)
                        //                            }label: {
                        //                                Text("Calculate")
                        //                                    .foregroundColor(userChecker()
                        //                                    ? Color.accentColor
                        //                                    : Color.gray)
                        //                                    .font(.headline)
                        //
                        //                                    .padding()
                        //                            }
                        //
                        //                        }
                        
                    }
                    .padding()
                    Spacer()
                    
                }
                
                
            }
            .onTapGesture {
                self.dismissKeyBoard()
            }
            .navigationTitle("Calorie Calculator")
            .alert(isPresented: $showAlert, content: getAlert)
            .sheet(isPresented: $showInfoSheet, content: {
                InfoSheetView()
            })
        }
    }
    
    
    func textChecker()->Bool{
        if(age.count<2 || weight.count<2 || height.count<3){
            alertTitle = "Invalid input"
            showAlert.toggle()
            return false
        }
        return true
    }
    //    func userChecker()->Bool{
    //        if(vm.userDailyCal.count<4){
    //            alertTitle = "Invalid input"
    //            showAlert.toggle()
    //            return false
    //        }
    //        return true
    //    }
    
    func getAlert()->Alert{
        return Alert(title: Text(alertTitle))
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
}
