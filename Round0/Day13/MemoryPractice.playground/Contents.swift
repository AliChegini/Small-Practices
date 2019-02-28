// https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html


class HTMLElement {
    let name: String?
    let text: String?
    
    
    lazy var asHTML: () -> String = {
        // capture list to break the stron reference cycle between elements
        [weak self] in
        guard let this = self else { return "" }
        
        if let text = this.text {
            return "<\(this.name!)>\(this.text!)</\(this.name!)>"
        } else {
            return "<\(this.name!) />"
        }
    }
    
    init(name: String?, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name!) is being deinitialized")
    }
    
    
}



let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
    return "<\(heading.name!)>\(heading.text ?? defaultText)</\(heading.name!)>"
}

print(heading.asHTML())



var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello world!")

print(paragraph!.asHTML())

paragraph = nil






