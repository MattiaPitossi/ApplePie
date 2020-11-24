//
//  ViewController.swift
//  ApplePie
//
//  Created by Mattia Pitossi on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "glorius", "incandescente", "bug", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!

    //tree image view
    @IBOutlet weak var treeImageView: UIImageView!
    //top label
    @IBOutlet weak var correctWordLabel: UILabel!
    //bottom label
    @IBOutlet weak var scoreLabel: UILabel!
    //qwerty keyboard
    @IBOutlet var letterButtons: [UIButton]!
    

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
}
