
import SwiftUI
import MapKit

struct MapView: View {
    var lat: Double
    var long: Double
    var body: some View {
        MyMap(lat: lat, long: long).frame(height: 300)
    }
}


struct MyMap: UIViewRepresentable{
    var lat: Double
    var long: Double
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let coordinator = CLLocationCoordinate2D(latitude: lat, longitude: long)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        
        let region = MKCoordinateRegion(center: coordinator, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(lat: 30.1 , long: 33.3)
    }
}
