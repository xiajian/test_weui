#encoding: utf-8
class EbaySetting < Settingslogic

  source "#{Rails.root}/config/ebay.yml"

  namespace Rails.env

end