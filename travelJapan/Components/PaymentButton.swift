//
//  PaymentButton.swift
//  travelJapan
//
//  Created by Fahim Hasan on 2023/08/08.
//

import SwiftUI
import PassKit

struct PaymentButton: View {
    var action: ()-> Void
    
    var body: some View {
       Representable(action: action)
            .frame(minWidth:100,maxWidth: 400)
            .frame(height:45)
            .frame(maxWidth: .infinity)
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton(action: {})
    }
}
extension PaymentButton{
    struct Representable: UIViewRepresentable{
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action:action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
        
    }
        class Coordinator: NSObject {
            var action: () ->Void
            var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
            
            init(action: @escaping () -> Void) {
                self.action = action
                super.init()
                
                button.addTarget(self, action: #selector(callback(_sender: )), for: .touchUpInside)
            }
            
            @objc
            func callback(_sender: Any){
                action()
            }

            
        }
   
}
