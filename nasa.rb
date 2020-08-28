require_relative('request')

api = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key="
key = "Qo81hzHvrgWQEUVcKhgeHUatWOy2PcnmCHQKJ7II"

def build_web_page(hash)

end 

data =request(api,key)
     
File.write('./index.html', build_web_page(data))   
         

      