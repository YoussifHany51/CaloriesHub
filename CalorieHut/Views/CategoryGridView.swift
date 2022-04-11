//
//  CategoryGridView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 05/04/2022.
//

import SwiftUI

struct CategoryGridView: View {
    
   var columns =
    Array(repeating: GridItem(.flexible(),spacing: 20),count:2)
    
//   @State var showMealSheet:Bool = false
   @State var categoryName:String = ""
   @State var catImage:String = ""
    
    @EnvironmentObject var vm : MealViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                    Color(.systemBrown).opacity(0.5)
                        .ignoresSafeArea()
                
                    ScrollView {
                        LazyVGrid(columns:columns){
                            ForEach(vm.categorylist){ cat in
                                Button{
                                    vm.showMealSheet.toggle()
                                    categoryName = cat.title
                                    catImage = cat.image
                                }label: {
                                ZStack{
                                    Image(cat.image)
                                        .resizable()
                                        .scaledToFit()
                                        
                                    VStack(spacing: 15){
                                        Text(cat.title)
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .fontWeight(.bold)
                                    }
                                    .padding()
                                }
                                .cornerRadius(20)
                                
                            }
                                .sheet(isPresented: $vm.showMealSheet, content: {
                                VStack{
                            MealsListView(name: categoryName, image: catImage)
                                }
                                    })
                        }
                        .padding()
                        
                    }
            }
            }
            .navigationTitle("Add new meal")
        }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
            CategoryGridView()
            .environmentObject(MealViewModel())
    }
  }
}
