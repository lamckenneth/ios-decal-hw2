//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    
    @IBOutlet var turtleButton: UIButton!
    @IBOutlet var cowButton: UIButton!
    @IBOutlet var beeButton: UIButton!
    @IBOutlet var penguinButton: UIButton!
    
    @IBOutlet var hamburgerButton: UIButton!
    @IBOutlet var tacoButton: UIButton!
    @IBOutlet var shrimpButton: UIButton!
    @IBOutlet var hotdogButton: UIButton!
    
    @IBOutlet var sickButton: UIButton!
    @IBOutlet var scaredButton: UIButton!
    @IBOutlet var angryButton: UIButton!
    @IBOutlet var tiredButton: UIButton!

    
    var keyboardView: UIView!
    
    func returnButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\r\n")
    }
    
    func deleteButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        while proxy.hasText() {
            proxy.deleteBackward()
        }
    }
    
    func turtleButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Wait, I’m almost there. Give me another hour.")
    }
    
    func cowButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Quack quack wait...")
    }
    
    func beeButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Buzz buzz buzz burp, excuse me, buzz.")
    }
    
    func penguinButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I believe I can fly! I believe I can touch the sky!")
    }

    func hamburgerButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Okay okay, I’ll start my diet tomorrow.")
    }
    
    func tacoButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("You want to taco about it?")
    }
    
    func shrimpButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I was alive once, but after an amazing “Yo Momma” joke, I got burned.")
    }

    func hotdogButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("What do you call a cold dog? A chili dog!")
    }
    
    func sickButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I’m sick of you!")
    }
    
    func scaredButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I forgot to turn the stove off!")
    }
    
    func angryButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I’m not angry, I just have a really bad rash.")
    }
    
    func tiredButtonFunction() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("But moooooommmmmm =(")
    }
    
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

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        returnButton.addTarget(self, action: "returnButtonFunction", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteButtonFunction", forControlEvents: .TouchUpInside)
        turtleButton.addTarget(self, action: "turtleButtonFunction", forControlEvents: .TouchUpInside)
        cowButton.addTarget(self, action: "cowButtonFunction", forControlEvents: .TouchUpInside)
        beeButton.addTarget(self, action: "beeButtonFunction", forControlEvents: .TouchUpInside)
        penguinButton.addTarget(self, action: "penguinButtonFunction", forControlEvents: .TouchUpInside)
        hamburgerButton.addTarget(self, action: "hamburgerButtonFunction", forControlEvents: .TouchUpInside)
        tacoButton.addTarget(self, action: "tacoButtonFunction", forControlEvents: .TouchUpInside)
        shrimpButton.addTarget(self, action: "shrimpButtonFunction", forControlEvents: .TouchUpInside)
        hotdogButton.addTarget(self, action: "hotdogButtonFunction", forControlEvents: .TouchUpInside)
        scaredButton.addTarget(self, action: "scaredButtonFunction", forControlEvents: .TouchUpInside)
        tiredButton.addTarget(self, action: "tiredButtonFunction", forControlEvents: .TouchUpInside)
        angryButton.addTarget(self, action: "angryButtonFunction", forControlEvents: .TouchUpInside)
        sickButton.addTarget(self, action: "sickButtonFunction", forControlEvents: .TouchUpInside)
    }


}
