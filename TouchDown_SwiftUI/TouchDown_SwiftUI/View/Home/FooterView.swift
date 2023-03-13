//
//  FooterView.swift
//  TouchDown_SwiftUI
//
//  Created by Georgie Muler on 13.03.2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("fbnjfklkjbvbnjkl;lkjnbv vbnjkl;")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)

            Text("Copyright @ Georgie Muler\nall right reserved")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        } // VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
