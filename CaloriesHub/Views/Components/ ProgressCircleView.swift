//
//  ProgressCircleView.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 04/04/2022.
//

import SwiftUI

struct ProgressCircleView: View {
    
    @State var startAnimation: CGFloat = 0.0
    @State var progress : Double = 0.0
    @EnvironmentObject var vm : MealViewModel
    
    var body: some View {
        
        GeometryReader{proxy in
            let size = proxy.size

        ZStack{
            WaterWave(
                
                progress:  vm.userKcal.isEmpty ? 0 :
                   (Double(vm.getCountKcal()) /
                   (Double(vm.userKcal) ?? 0.0)),
                waveHeight: 0.03,
                offset: startAnimation)
                .fill(Color.blue)
                .frame(width:250,height: 250)
                .overlay(content: {
                    ZStack{
                        Circle()
                            .fill(.white.opacity(0.1))
                            .frame(width:15, height: 15)
                            .offset(x: -20)
                        
                        Circle()
                            .fill(.white.opacity(0.1))
                            .frame(width:15, height: 15)
                            .offset(x: 40,y: 30)
                        
                        Circle()
                            .fill(.white.opacity(0.1))
                            .frame(width:25, height: 25)
                            .offset(x: -30,y: 80)
                        
                        Circle()
                            .fill(.white.opacity(0.1))
                            .frame(width:25, height: 25)
                            .offset(x: 50,y: 70)
                        
                        Circle()
                            .fill(.white.opacity(0.1))
                            .frame(width:10, height: 10)
                            .offset(x: 40,y: 100)
                    }
                })
            
                .mask{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                }
            
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .onAppear{
            withAnimation(.linear(duration: 2).repeatForever(autoreverses: true)){
                startAnimation = size.width
            }
//            progress = min(Double(vm.getCountKcal()) / (Double(vm.userKcal) ?? 0.0) , 1.0)
            progress = 0.5
        }
      }
        .frame(height:350)
    }
}

struct ProgressCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircleView()
            .environmentObject(MealViewModel())
    }
}
//MARK: WATER WAVES

struct WaterWave : Shape{
    
    var progress : CGFloat
    
    var waveHeight: CGFloat
    
    var offset: CGFloat
    
    var animatableData: CGFloat{
        get{offset}
        set{
            offset = newValue
        }
    }
    
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            path.move(to: .zero)
            
            let progressHeight: CGFloat = (1-progress) * rect.height
            let height = waveHeight * rect.height
            
            for value in stride(from: 0, to: rect.width, by: 2){
                let x: CGFloat = value
                let sine: CGFloat =
                sin(Angle(degrees: value + offset).radians)
                let y: CGFloat = progressHeight + (height * sine)
                
                path.addLine(to: CGPoint(x: x, y: y))
            }
            
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}
