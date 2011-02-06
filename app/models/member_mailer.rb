class MemberMailer < ActionMailer::Base
  def password_email(member)
    setup_email(member)
    @subject    += ' - Favor ativar a sua conta no expresso2011.com'
  
    @body[:member]  = member
  end
  
  protected
    def setup_email(member)
      @recipients  = "#{member.email}"
      @from        = "no_reply@expresso2011.com"
      @subject     = "Site expresso2011.com"
      @sent_on     = Time.now
      @body[:member] = member
    end
end
