module MemberSystem
  
  def self.allow_url?(member, url)
    private_pages = MemberExtensionSettings.root_path
    return true if (url =~ Regexp.new(".css")) or (url =~ Regexp.new(".js")) # to be able to display layouts
    return true if (url =~ Regexp.new(MemberExtensionSettings.login_path.gsub("/", ""))) # login is public
    return !member.nil? if MemberExtensionSettings.private_site=="true"  # set in the settings
     
    private_pages = private_pages.split(" ")
  
    res = true
    private_pages.each do |page|
      (url =~ Regexp.new(page))? (res = res && !member.nil?) : (res = res && true)
    end    
    return res
  end
end