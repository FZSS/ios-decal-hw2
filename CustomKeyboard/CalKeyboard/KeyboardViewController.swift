//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//
//

import UIKit


// This is a beer keyboard!!!!
class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var shiftButton: UIButton!
    @IBOutlet var AButton: UIButton!
    @IBOutlet var BButton: UIButton!
    @IBOutlet var CButton: UIButton!
    @IBOutlet var DButton: UIButton!
    @IBOutlet var EButton: UIButton!
    @IBOutlet var FButton: UIButton!
    @IBOutlet var GButton: UIButton!
    @IBOutlet var HButton: UIButton!
    @IBOutlet var IButton: UIButton!
    @IBOutlet var JButton: UIButton!
    @IBOutlet var KButton: UIButton!
    @IBOutlet var LButton: UIButton!
    @IBOutlet var MButton: UIButton!
    @IBOutlet var NButton: UIButton!
    @IBOutlet var OButton: UIButton!
    @IBOutlet var PButton: UIButton!
    @IBOutlet var QButton: UIButton!
    @IBOutlet var RButton: UIButton!
    @IBOutlet var SButton: UIButton!
    @IBOutlet var TButton: UIButton!
    @IBOutlet var UButton: UIButton!
    @IBOutlet var VButton: UIButton!
    @IBOutlet var WButton: UIButton!
    @IBOutlet var XButton: UIButton!
    @IBOutlet var YButton: UIButton!
    @IBOutlet var ZButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    
    
    var noBeer: Bool = false
    var content: String = ""

    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    
    func delete() {
        (textDocumentProxy as UIKeyInput).deleteBackward()
        if content.characters.count > 0 {
            content.removeAtIndex(content.endIndex.predecessor())
        }
        hideRealString()
    }
    
    func returnPressed() {
        (textDocumentProxy as UIKeyInput).insertText("\n")
        content = ""
    }

    
    
    func noMoreBeer() {
        noBeer = !noBeer
        if noBeer {
            writeRealString()
        }
        else {
            hideRealString()
        }
    }
    
    
    func space() {
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += " "
    }

    func writeRealString() {
        for _ in content.characters {
            (textDocumentProxy as UIKeyInput).deleteBackward()
        }
        for character in content.characters {
            (textDocumentProxy as UIKeyInput).insertText("\(character)")
        }
    }
    
    func hideRealString() {
        for _ in content.characters {
            (textDocumentProxy as UIKeyInput).deleteBackward()
        }
        for _ in content.characters {
            (textDocumentProxy as UIKeyInput).insertText("🍺")
        }
    }

    func aPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "A"
    }
    
    func bPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "B"
    }
    
    func cPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "C"
    }
    
    func dPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "D"
    }
    
    func ePressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "E"
    }
    
    func fPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "F"
    }
    
    func gPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "G"
    }
    
    func hPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "H"
    }
    
    func iPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "I"
    }
    
    func jPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "J"
    }
    
    func kPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "K"
    }
    
    func lPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "L"
    }
    
    func mPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "M"
    }
    
    func nPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "N"
    }
    
    func oPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "O"
    }
    
    func pPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "P"
    }
    
    func qPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "Q"
    }
    
    func rPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "R"
    }
    
    func sPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "S"
    }
    
    func tPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "T"
    }
    
    func uPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "U"
    }
    
    func vPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "V"
    }
    
    func wPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "W"
    }
    
    func xPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "X"
    }
    
    func yPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "Y"
    }
    
    func zPressed(){
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += "Z"
    }
    
    
    
    func loadInterface() {

        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        deleteButton.addTarget(self, action: "delete", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "space", forControlEvents: .TouchUpInside)
        shiftButton.addTarget(self, action: "noMoreBeer", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "returnPressed", forControlEvents: .TouchUpInside)

        
        
        AButton.addTarget(self, action: "aPressed", forControlEvents: .TouchUpInside)
        BButton.addTarget(self, action: "bPressed", forControlEvents: .TouchUpInside)
        CButton.addTarget(self, action: "cPressed", forControlEvents: .TouchUpInside)
        DButton.addTarget(self, action: "dPressed", forControlEvents: .TouchUpInside)
        EButton.addTarget(self, action: "ePressed", forControlEvents: .TouchUpInside)
        FButton.addTarget(self, action: "fPressed", forControlEvents: .TouchUpInside)
        GButton.addTarget(self, action: "gPressed", forControlEvents: .TouchUpInside)
        HButton.addTarget(self, action: "hPressed", forControlEvents: .TouchUpInside)
        IButton.addTarget(self, action: "iPressed", forControlEvents: .TouchUpInside)
        JButton.addTarget(self, action: "jPressed", forControlEvents: .TouchUpInside)
        KButton.addTarget(self, action: "kPressed", forControlEvents: .TouchUpInside)
        LButton.addTarget(self, action: "lPressed", forControlEvents: .TouchUpInside)
        MButton.addTarget(self, action: "mPressed", forControlEvents: .TouchUpInside)
        NButton.addTarget(self, action: "nPressed", forControlEvents: .TouchUpInside)
        OButton.addTarget(self, action: "oPressed", forControlEvents: .TouchUpInside)
        PButton.addTarget(self, action: "pPressed", forControlEvents: .TouchUpInside)
        QButton.addTarget(self, action: "qPressed", forControlEvents: .TouchUpInside)
        RButton.addTarget(self, action: "rPressed", forControlEvents: .TouchUpInside)
        SButton.addTarget(self, action: "sPressed", forControlEvents: .TouchUpInside)
        TButton.addTarget(self, action: "tPressed", forControlEvents: .TouchUpInside)
        UButton.addTarget(self, action: "uPressed", forControlEvents: .TouchUpInside)
        VButton.addTarget(self, action: "vPressed", forControlEvents: .TouchUpInside)
        WButton.addTarget(self, action: "wPressed", forControlEvents: .TouchUpInside)
        XButton.addTarget(self, action: "xPressed", forControlEvents: .TouchUpInside)
        YButton.addTarget(self, action: "yPressed", forControlEvents: .TouchUpInside)
        ZButton.addTarget(self, action: "zPressed", forControlEvents: .TouchUpInside)
        
    }


}
