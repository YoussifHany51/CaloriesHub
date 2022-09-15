//
//  CustomMealView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 29/08/2022.
//

import SwiftUI

struct CustomMealView: View {
    @State var mealName = ""
    @State var mealCalorie = ""
    @State var mealQuantity = ""
    @State var mealUnit = ""
    
    @State var showAlert:Bool = false
    @State var alertTitle:String = "added to Favorite❤️"
    
    @State var maxCircleHeight:CGFloat = 0
    
    @EnvironmentObject var vm : MealViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(.systemBrown).opacity(0.5)
                .ignoresSafeArea()
            VStack {
                CirclesHeader
                    .frame(maxHeight:getRect().width)
                TextField_NextButton
                    .padding()
                    .padding(.top,-maxCircleHeight / 1.5)
                    .frame(maxHeight:.infinity,alignment: .top)
            }
        }
        .onTapGesture {
            dismissKeyBoard()
        }
    }
    //MARK: FUNCS
    func saveButton(){
        if textChecker(){
            vm.addMealToFav(name: mealName, kcal: Float(mealCalorie)!, quantity: Int(mealQuantity)!, unit: mealUnit)
            presentationMode.wrappedValue.dismiss()
            showAlert.toggle()
        }
    }
    func textChecker()->Bool{
        if(mealName.isEmpty||mealCalorie.isEmpty
           || mealQuantity.isEmpty||mealUnit.isEmpty){
            return false
        }
        return true
    }
    func getAlert()->Alert{
        return Alert(title: Text(mealName + alertTitle))
    }
}

struct CustomMealView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMealView()
            .environmentObject(MealViewModel())
    }
}

extension CustomMealView{
    private var TextField_NextButton : some View{
        VStack{
            Text("Create Meal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .kerning(1.9)
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.top)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Meal Name")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("Apple",text: $mealName)
                    .font(.system(size: 20,weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.top,5)
                Divider()
            }
            .padding(.top,5)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Meal Calorie")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("52",text: $mealCalorie)
                    .font(.system(size: 20,weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.top,5)
                    .keyboardType(.decimalPad)
                Divider()
            }
            .padding(.top,10)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Meal Weight")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("100",text: $mealQuantity)
                    .font(.system(size: 20,weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.top,5)
                    .keyboardType(.decimalPad)
                Divider()
            }
            .padding(.top,10)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Meal Unit")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("gram / ml",text: $mealUnit)
                    .font(.system(size: 20,weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.top,5)
                    .textInputAutocapitalization(.never)
                
                Divider()
            }
            .padding(.top,10)
            
            Button{
                saveButton()
            }label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(.brown)
                    .padding()
                    .background(Circle().foregroundColor(.primary))
                    .disabled(textChecker())
            }
            .frame(maxWidth:.infinity,alignment: .center)
            .padding(.top,10)
        }
        .alert(mealName + " " + alertTitle, isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        }
    }
    //MARK: HEADER DESIGN
    private var CirclesHeader:some View{
        GeometryReader{ proxy -> AnyView in
            let height = proxy.frame(in: .global).height
            
            DispatchQueue.main.async {
                if maxCircleHeight == 0 {
                    maxCircleHeight = height
                }
            }
            return AnyView(
                ZStack{
                    Circle()
                        .fill()
                        .foregroundColor(.primary)
                        .offset(x: getRect().width/2,y: -height/1.3)
                    Circle()
                        .fill()
                        .foregroundColor(.primary)
                        .offset(x: -getRect().width/2,y:-height/1.5)
                    Circle()
                        .fill()
                        .foregroundColor(.mint)
                        .offset(y:-height/1.3)
                        .rotationEffect(.init(degrees: -5))
                }
            )
        }
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
