module WHMCS
  # WHMCS::Client is the class for managing clients
  class Product < Base

    # Create a new product
    #
    # Parameters:
    #
=begin
Attributes

type - one of hostingaccount, reselleraccount, server or other
gid - the product group ID to add it to
name - the product name
paytype - free, onetime or recurring

Optional Attributes

description - the product description
hidden - set true to hide
showdomainoptions - set true to show
welcomeemail - the email template ID for a welcome email
qty - set quantity to enable stock control
proratadate
proratachargenextmonth
autosetup - on, payment, order or blank for none
module - module name
servergroupid - server group ID
subdomain - subdomain to offer with product
tax - set true to apply tax
order - display sort order to override default
configoption1
configoption2
etc...
pricing - an array of pricing in the format pricing[currencyid][cycle] (example below)
Example Command

 $postfields["action"] = "addproduct";
 $postfields["type"] = "other";
 $postfields["gid"] = "1";
 $postfields["name"] = "Sample Product";
 $postfields["welcomeemail"] = "5";
 $postfields["paytype"] = "recurring";
 $postfields["pricing[1][monthly]"] = "5.00";
 $postfields["pricing[1][annually]"] = "50.00";
 $postfields["pricing[2][monthly]"] = "8.00";
$postfields["pricing[2][annually]"] = "80.00";
=end

    # http://wiki.whmcs.com/API:Add_Product
    def self.add_product(params = {})
      params.merge!(:action => 'addproduct')
      send_request(params)
    end


  end
end
