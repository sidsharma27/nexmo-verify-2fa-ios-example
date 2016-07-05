import Foundation
import UIKit
import Parse

class StatementViewController: UIViewController {
    
    @IBAction func billPay(sender: AnyObject) { //UI Placeholder
        print("billpay")
        let alert = UIAlertView()
        alert.title = "Incorrect Choice"
        alert.message = "The Beta application has not been completed. Please check again later"
        alert.addButtonWithTitle("Back")
        alert.show()
    }
    
    @IBAction func deposits(sender: AnyObject) { //UI Placeholder
        print("deposits")
        let alert = UIAlertView()
        alert.title = "Incorrect Choice"
        alert.message = "The Beta application has not been completed. Please check again later"
        alert.addButtonWithTitle("Back")
        alert.show()
    }
    
    @IBAction func logoutUser(sender: AnyObject) {
        logout() 
        self.performSegueWithIdentifier("logoutUser", sender: self)
    }
  
    @IBAction func transfer(sender: AnyObject) {
        self.performSegueWithIdentifier("transferSegue", sender: self)
    }
    
    @IBOutlet weak var checkingAmount: UILabel!
    @IBOutlet weak var savingAmount: UILabel!
    @IBOutlet weak var creditAmount: UILabel!
    
    func logout() {
        PFUser.logOut()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        checkingAmount.text = "$\(String(Double(round(100*(PFUser.currentUser()!["checking"] as! Double))/100)))"
        savingAmount.text = "$\(String(Double(round(100*(PFUser.currentUser()!["saving"] as! Double))/100)))"
        creditAmount.text = "$\(String(Double(round(100*(PFUser.currentUser()!["credit"] as! Double))/100)))"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
    }
}