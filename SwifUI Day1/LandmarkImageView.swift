

import SwiftUI

struct LandmarkImageView: View {
    var img: String
    var body: some View {
       Image(img)
            .resizable()
            .clipShape(Circle())
            .shadow(radius: 8)
            .frame(width: 200,height: 200,alignment: .center)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkImageView(img: "myimg")
    }
}
