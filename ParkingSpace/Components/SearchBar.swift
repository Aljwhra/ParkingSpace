//
//  SearchBar.swift
//  Parking
//
//  Created by ٍٍRaneem A on 02/06/1445 AH.
//
import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            
            TextField(NSLocalizedString("Search", comment:"Search"), text: $text)
                .padding(8)
                .background(.gray.opacity(0.3))
                .cornerRadius(12)

            Button(action: {
                self.text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding(8)
            }
            .opacity(text.isEmpty ? 0 : 1)
        }
        .padding(8)
    }
}
