require 'uri'
require 'net/http'
module UseSms
	class << self
    attr_accessor :user
    attr_accessor :password
    attr_accessor :id_session
  end
  @@user = nil
  @@password = nil

	def self.setup
    yield self
  end

  def self.autenticar(rest = true)
  	uri =  if rest 
      URI("http://usesms.net.br/api/autenticar/#{UseSms.user}/#{UseSms.password}")
    else
      URI("http://usesms.net.br/api/autenticar?login=#{UseSms.user}&senha=#{UseSms.password}")
    end
  	UseSms.id_session = Net::HTTP.get(uri)
  end

  def self.ping(rest = true)
    uri = if rest
     URI("http://usesms.net.br/api/ping/#{UseSms.id_session}")
    else
      URI("http://usesms.net.br/api/ping?id_sessao=#{UseSms.id_session}")
    end 
    Net::HTTP.get(uri)
  end

  def self.status(id_mensagem, rest = true)
    id_mensagem = URI.escape(id_mensagem)
  	uri =  if rest 
      URI("http://usesms.net.br/api/status/#{UseSms.id_session}/#{id_mensagem}")
    else
      URI("http://usesms.net.br/api/status?id_sessao=#{UseSms.id_session}&id_mensagem=#{id_mensagem}")
    end
  	Net::HTTP.get(uri)  	
  end


  def self.envia_sms(phone,msg,token = nil,rest = false)
		token ||= UseSms.id_session || self.autenticar
		msg = URI.escape(msg)		
		uri = if rest			
			URI("http://usesms.net.br/api/envia_sms/#{token}/#{phone}/#{msg}")
		else
			URI("http://usesms.net.br/api/envia_sms?id_sessao=#{token}&telefone=#{phone}&mensagem=#{msg}")
		end
		Net::HTTP.get(uri) 
	end

end