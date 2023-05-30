

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandmarkResponse
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: 70, height: 70, alignment: .center)
            Text(landmark.name)
            Spacer()
            
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[2])
        }.previewLayout(.fixed(width: UIScreen.main.bounds.size.width, height: 70))
    }
}
