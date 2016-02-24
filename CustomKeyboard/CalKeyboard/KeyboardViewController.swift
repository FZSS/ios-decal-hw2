//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

public class characterUIButton: UIButton {
    var mychar: String = "";
    public func setChar(char: String) {
        mychar = char
    }
    public func getChar() -> String{
        return mychar;
    }
}

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var shiftButton: UIButton!
    @IBOutlet var AButton: characterUIButton!
    @IBOutlet var BButton: characterUIButton!
    @IBOutlet var CButton: characterUIButton!
    @IBOutlet var DButton: characterUIButton!
    @IBOutlet var FButton: characterUIButton!
    @IBOutlet var GButton: characterUIButton!
    @IBOutlet var HButton: characterUIButton!
    @IBOutlet var IButton: characterUIButton!
    @IBOutlet var JButton: characterUIButton!
    @IBOutlet var KButton: characterUIButton!
    @IBOutlet var LButton: characterUIButton!
    @IBOutlet var MButton: characterUIButton!
    @IBOutlet var NButton: characterUIButton!
    @IBOutlet var OButton: characterUIButton!
    @IBOutlet var PButton: characterUIButton!
    @IBOutlet var QButton: characterUIButton!
    @IBOutlet var RButton: characterUIButton!
    @IBOutlet var SButton: characterUIButton!
    @IBOutlet var TButton: characterUIButton!
    @IBOutlet var UButton: characterUIButton!
    @IBOutlet var VButton: characterUIButton!

    @IBOutlet var XButton: characterUIButton!
    @IBOutlet var YButton: characterUIButton!
    @IBOutlet var ZButton: characterUIButton!
    @IBOutlet var spaceButton: UIButton!
    
    @IBOutlet var EButton: characterUIButton!
    @IBOutlet var WButton: characterUIButton!
    
    
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
    }
    
   
    
    func noMoreBeer() {
        noBeer = !noBeer
        if noBeer {
            for _ in content.characters {
                (textDocumentProxy as UIKeyInput).deleteBackward()
            }
            for character in content.characters {
                (textDocumentProxy as UIKeyInput).insertText("\(character)")
            }
        } else {
            hideRealString()
        }
    }
    
//    func beerPressed(key: AnyObject?) {
//        let button = key as! UIButton
//        if noBeer {
//            let beer = button.titleForState(.Normal)
//            (textDocumentProxy as UIKeyInput).insertText(beer!)
//        }
//    }
    
    func space() {
        if noBeer {
            noBeer = false
            hideRealString()
        }
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += " "
    }

//    func aPressed(){
//        if noBeer {
//            noBeer = false
//            hideRealString()
//        }
//        (textDocumentProxy as UIKeyInput).insertText("🍺")
//        content += "a"
//    }
    
    func hideRealString() {
        for _ in content.characters {
            (textDocumentProxy as UIKeyInput).deleteBackward()
        }
        for _ in content.characters {
            (textDocumentProxy as UIKeyInput).insertText("🍺")
        }
    }
    
    
    func keyPressed(sender: AnyObject?) {
        let button = sender as! characterUIButton

        if noBeer {
            noBeer = false
            hideRealString()
        }

        let char = button.getChar()
        (textDocumentProxy as UIKeyInput).insertText("🍺")
        content += char
    }

    func initiateCharacterButtons() {
        AButton.setChar("A")
        BButton.setChar("B")
        CButton.setChar("C")
        DButton.setChar("D")
        EButton.setChar("E")
        FButton.setChar("F")
        GButton.setChar("G")
        HButton.setChar("H")
        IButton.setChar("I")
        JButton.setChar("J")
        KButton.setChar("K")
        LButton.setChar("L")
        MButton.setChar("M")
        NButton.setChar("N")
        OButton.setChar("O")
        PButton.setChar("P")
        QButton.setChar("Q")
        RButton.setChar("R")
        SButton.setChar("S")
        TButton.setChar("T")
        UButton.setChar("U")
        VButton.setChar("V")
        WButton.setChar("W")
        XButton.setChar("X")
        YButton.setChar("Y")
        ZButton.setChar("Z")
    }

    
    func loadInterface() {
        initiateCharacterButtons()

        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        deleteButton.addTarget(self, action: "delete", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "space", forControlEvents: .TouchUpInside)

        shiftButton.addTarget(self, action: "noMoreBeer", forControlEvents: .TouchUpInside)
        
        
        AButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        
        BButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        CButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        DButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        EButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        FButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        GButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        HButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        IButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        JButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        KButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        LButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        MButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        NButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        OButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        PButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        QButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        RButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        SButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        TButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        UButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        VButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        WButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        XButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        YButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        ZButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
    }
}
