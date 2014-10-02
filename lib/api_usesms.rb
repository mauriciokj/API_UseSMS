require 'uri'
require 'net/http'
module UseSms
	class << self
    attr_accessor :user
    attr_accessor :password
  end
  @@user = nil
  @@password = nil

	def self.setup
    yield self
  end

  def self.token
  	uri = URI("http://usesms.net.br/api/autenticar/#{UseSms.user}/#{UseSms.password}")
  	Net::HTTP.get(uri)
  end

  def self.status(id)
  	uri = URI("http:://usesms.net.br/api/status/#{self.token}/#{id}")
  	Net::HTTP.get(uri)  	
  end


  def self.send(phone,msg,token = nil,rest = false)
		token ||= self.token
		msg = URI.escape(msg)		
		if rest			
			uri = URI("http://usesms.net.br/api/envia_sms/#{token}/#{phone}/#{msg}")
		else
			uri = URI("http://usesms.net.br/api/envia_sms?id_sessao=#{token}&telefone=#{phone}&mensagem=#{msg}")
		end
		Net::HTTP.get(uri) 
	end

end