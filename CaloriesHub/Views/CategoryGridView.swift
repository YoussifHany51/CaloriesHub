//
//  CategoryGridView.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 05/04/2022.
//

import SwiftUI

struct CategoryGridView: View {
    
    var columns =
    Array(repeating: GridItem(.flexible(),spacing: 20),count:2)
    
    @State var categoryName:String = ""
    @State var catImage:String = ""
    @State var showList:Bool = false
    
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
                                showList.toggle()
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
                                            .font(.title2)
                                            .fontWeight(.bold)
                                    }
                                    .padding()
                                }
                                .cornerRadius(20)
                                
                            }
                            .sheet(isPresented: $showList, content: {
                                VStack{
                                    MealsListView(name: $categoryName, image: $catImage)
                                }
                            })
                        }
                        .padding()
                        
                    }
                }
            }
            .navigationTitle("Add meal")
        }
    }
    
    struct CategoryGridView_Previews: PreviewProvider {
        static var previews: some View {
            CategoryGridView()
                .environmentObject(MealViewModel())
        }
    }
}
