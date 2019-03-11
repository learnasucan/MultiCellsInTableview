import UIKit

class ViewController: UIViewController {
    var categories = ["", "Most", "Science Fiction", "Kids", "Horror"]
    var headerTitle:[String] = ["","Most Booked","","Top Categories","Offers"]
}

extension ViewController : UITableViewDelegate { }

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        switch section {
        case 0:
            return ""
        case 1:
            return categories[section]
        case 2:
            return categories[section]
        case 3:
            return categories[section]
        case 4:
            return categories[section]
        default:
            return ""
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        case 3:
            return 1
        case 4:
            return 1
        default:
            return 1
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            //configure cell type 1
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCellTC") as! SearchCell
            
           
            cell.callBackSeachClosure = {
                
             print("Searcj.............")
                let secondViewController = self.storyboard!.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
                self.navigationController!.pushViewController(secondViewController, animated: true)
            }
            return cell
        case 1:
            //configure cell type 2
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MostBookedRow
            return cell
        case 2:
            //configure cell type 3
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! DiscountImagesRow
            return cell
        case 3:
            //configure cell type 4
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell4") as! CategoryRow
            return cell
        case 4:
            //configure cell type 5
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell5") as! OffersRow
            return cell
        default:
             return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return 70.0
        case 1:
            return 100.0
        case 2:
            return 100.0
        default:
            return 100.0
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        switch section {
        case 0:
            return UIView()
        case 1:
            let headerView = Bundle.main.loadNibNamed("CustomHomeHeaderCell", owner: self, options: nil)?.first as! CustomHomeHeaderCell
            
            headerView.lblHeaderName.text = headerTitle[section]
            headerView.callBackClosure = {
                let alertC = UIAlertController(title: "Header", message: "MosT Booked", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertC.addAction(OKAction)
                self.present(alertC, animated: true, completion: nil)
            }
            return headerView
        case 2:
            
            return UIView()
            /*
            let headerView = Bundle.main.loadNibNamed("CustomHomeHeaderCell", owner: self, options: nil)?.first as! CustomHomeHeaderCell
            
            headerView.lblHeaderName.text = headerTitle[section]
            headerView.callBackClosure = {
                let alertC = UIAlertController(title: "Header", message: "Banner APIs", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertC.addAction(OKAction)
                self.present(alertC, animated: true, completion: nil)
            }
            return headerView
            */
            
        case 3:
            let headerView = Bundle.main.loadNibNamed("CustomHomeHeaderCell", owner: self, options: nil)?.first as! CustomHomeHeaderCell
            
            headerView.lblHeaderName.text = headerTitle[section]
            headerView.callBackClosure = {
                let alertC = UIAlertController(title: "Header", message: "Category", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertC.addAction(OKAction)
                self.present(alertC, animated: true, completion: nil)
            }
            return headerView

        case 4:
            let headerView = Bundle.main.loadNibNamed("CustomHomeHeaderCell", owner: self, options: nil)?.first as! CustomHomeHeaderCell
            
            headerView.lblHeaderName.text = headerTitle[section]
            headerView.callBackClosure = {
                let alertC = UIAlertController(title: "Header", message: "Offers", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertC.addAction(OKAction)
                self.present(alertC, animated: true, completion: nil)
            }
            return headerView

        default:
            return UIView()
        }

        
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 0
        case 1:
            return 40
        case 2:
            return 40
        case 3:
            return 40
        case 4:
            return 40
            
        default:
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case 0:
            tableView.deselectRow(at: indexPath, animated: true)
        case 1:
            tableView.deselectRow(at: indexPath, animated: true)
        case 2:
            tableView.deselectRow(at: indexPath, animated: true)
        default:
            tableView.deselectRow(at: indexPath, animated: true)        }
    }
    
}
