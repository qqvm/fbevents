//
//  MenuButton.swift
//  fbevents
//
//  Created by User on 13.07.2020.
//  Copyright © 2020 nonced. All rights reserved.
//

import SwiftUI

struct CloseButtonView: View {
    @EnvironmentObject var appState: AppState
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "xmark.circle")
                .font(.system(size: UserSettings.buttonSize, weight: .light, design: .default))
        })
    }
}

struct CloseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CloseButtonView(action: {}).environmentObject(AppState())
    }
}
