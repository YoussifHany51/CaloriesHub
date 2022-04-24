//
//  InfoSheetView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 20/04/2022.
//

import SwiftUI

struct InfoSheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(.systemBrown).opacity(0.5)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Use the calorie calculator to estimate the number of daily calories your body needs to maintain, loss or gain weight.")
                    .font(.headline)
                    .padding()
                
                Text("Note:  If you're pregnant or breast-feeding, are a competitive athlete, or have a metabolic disease, such as diabetes, the calorie calculator may overestimate or underestimate your actual calorie needs.")
                    .font(.headline)
                    .padding()
                Spacer()
            }
            .padding()
        .overlay(backButton , alignment: .topLeading)
        }
    }
}

struct InfoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheetView()
    }
}

extension InfoSheetView{
    private var backButton:some View{
        Button{
            presentationMode.wrappedValue.dismiss()
        } label:{
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
    }
}
}
