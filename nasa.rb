require_relative('request')

api = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key="
key = "Qo81hzHvrgWQEUVcKhgeHUatWOy2PcnmCHQKJ7II"


def build_web_page(hash)  #hara lo que retorne el request. #def es para definir el metodo y se usara en otro lugar.
    
    index = 
    
        "<html>
        <head>
        </head>
        <body> 
        <nav>
            <h2>Prueba - Introduccion a la programacion con Ruby</h2> 
            <h1>Fotos de los Rovers</h1>
        </nav>
        <ul>\n"
          
                        
    hash["photos"].each do |hola|   # each.do que recorra todo loq ue esta dentro del hash. y hola seria mi elemento.
    
        index+="<li><img src='#{hola["img_src"]}'></li>\n" #accediendo al valor de llave hola. (en postman)
            
    end 
    index+= "</ul>
             </body>     
             </html>"

end

data = request(api,key)   #genere hash y la guarde en data. ()para llamar al metodo, iterar{} []
      
     
File.write('./index.html', build_web_page(data))   
         
      