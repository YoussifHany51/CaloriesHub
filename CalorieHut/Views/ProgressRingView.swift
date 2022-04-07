//
//  ProgressRingView.swift
//  CalorieHut
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI

struct ProgressRingView: View {
    
    @State var progress = 0.0
    @EnvironmentObject var vm : MealViewModel
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            
            Circle()
                .trim(from: 0.0, to: min(Double(vm.getCountKcal()) / 200 , 1.0))
                .stroke(AngularGradient(
                gradient:Gradient(colors: [Color.blue,Color.blue]),
                center: .center),
                style: StrokeStyle(
                lineWidth:15,
                lineCap: .round,
                lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 1.0), value: Double(vm.getCountKcal()) / 200)
        }
        .frame(width:230,height: 250)
        .padding()
//        .onAppear{
//            //progress = 0.5
//           progress = Double(vm.getCountKcal()) / 200
//        }
    }
}

struct ProgressRingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRingView()
            .environmentObject(MealViewModel())
    }
}