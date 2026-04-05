import SwiftUI

struct ContentView: View {
    @State var redValue:Double
    @State var greenValue:Double
    @State var blueValue:Double

    var body: some View {
        ZStack{
            Color(red: redValue, green: greenValue, blue: blueValue).edgesIgnoringSafeArea(.all)
            VStack{
                ShowWords(color: "R", value: redValue)
                ShowWords(color: "G", value: greenValue)
                ShowWords(color: "B", value: blueValue)
                
                Slider(value: $redValue)
                Slider(value: $greenValue)
                Slider(value: $blueValue)
            }.padding(.horizontal, 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(redValue: 0, greenValue: 0, blueValue: 0)
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView(redValue: 0, greenValue: 0, blueValue: 0)
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView(redValue: 0, greenValue: 0, blueValue: 0)
        }
    }
}

struct ShowWords:View {
    var color:String
    var value:Double
    var body: some View {
        HStack{
            Text(color + " : \(Int(value * 255.0))")
                .font(.title)
                .fontWeight(.light)
        }.frame(width: 100).fixedSize()
    }
}
