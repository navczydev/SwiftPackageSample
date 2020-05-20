import SwiftUI

public struct MyLibrary {
    public struct MainTextField:View{
        
        @State  var placeholder:String
        @Binding var text: String
        
        /// textfeild reusable
        /// - Parameters:
        ///   - placeholder: berfore written anything
        ///   - text: text that bind to the type to the field
        public init(placeholder:String, text:Binding<String>){
            self._placeholder = State(initialValue: placeholder)
            self._text = text
        }
        
        public var body: some View{
            HStack{
                Image(systemName: "person").foregroundColor(Color.blue)
                TextField(placeholder,text: $text)
                    .font(.system(size:20,weight: .bold, design: .default))
                    .foregroundColor(Color.blue)
            }.padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
            
        }
        
    }
}
