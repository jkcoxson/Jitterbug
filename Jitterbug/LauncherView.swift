//
// Copyright © 2021 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import SwiftUI

struct LauncherView: View {
    @EnvironmentObject private var main: Main
    
    var body: some View {
        NavigationView {
            DeviceListView()
                .listStyle(PlainListStyle())
                .navigationBarItems(leading: Group {
                    if main.scanning {
                        Spinner()
                    }
                })
            Text("Select a device.")
                .font(.headline)
        }.labelStyle(IconOnlyLabelStyle())
    }
}

struct Spinner: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .medium)
        view.color = .label
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    }
}

struct LauncherView_Previews: PreviewProvider {
    static var previews: some View {
        LauncherView()
    }
}
