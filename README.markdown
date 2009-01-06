# About ASKit
ASKit is an easy to use library for your iPhone applications.  ASKit provides AppStore styled table views 

# What you'll find
## Demo Project
The demo app shows you how to use various parts of ASKit
## ASKit Overview
* **ASTableViewController:** Instead of subclassing UITableViewController, you'll subclass ASTableViewController.  This is where most of the work is done.
* **ASTableViewCell:** This replaces UITableViewCell
* **ASHeaderView:** Provides the gradient header that you can find when viewing a single app in AppStore
* **ASFooterView:** This is the footer that AppStore shows your iTunes account in.
* **ASInfoCell** This extends ASTableViewCell and should be used for various information messages such as "No Items" and "Loading" (it also contains an activity indicator for loading messages
* **ASSectionHeaderView:** This is for table sections, you must return a view when using ASKit and not a string, otherwise it you won't have the correct theme.
* **ASTableViewCellLabel:** Use this instead of UILabel while adding to an ASTableViewCell so the shadows are handled correctly when a cell is selected

# Additional Information
## Alternating rows
While ASKit handles just about everything itself, you'll need to set the cell alternate status yourself in order to have alternating rows.
## Footer
ASTableViewController automatically creates the ASFooterView object for you, all you need to do to change the text while inside your subclass of ASTableViewController is set the footerText property to the desired string.
## Header
ASTableViewController does *not* automatically create an instance of ASHeaderView for you, you'll need to create it on your own (or subclass it as the example does) and set it via the self.tableView.tableHeaderView property.
# Questions
Feel free to contact info@enormego.com if you need any other help with this framework.

