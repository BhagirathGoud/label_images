def generate_image(params = {})
	 first_name = params[:first_name] || ""
	 last_name  = params[:last_name] || ""
	 shape = params[:shape] || "square"
	 radius = params[:radius] || 40 
	 width = height = params[:width] || 80
	 bg_color = params[:bg_color] || ["#98bf21","#66B9B9","#E19D9D","#CAC3F8","#9BA6B1"].sample
	 font_size = params[:font_size] || 20
	 font_family = params[:font_family] || "verdana"
	 font_color = params[:font_color] || "white"
     if !first_name.empty?
       first_name_split = first_name.chars.first.upcase
     else
       first_name_split = ''	
     end
     if !last_name.empty?
       last_name_split = last_name.chars.first.upcase 
     else 
       last_name_split = ''	
     end
     if shape == "circle"
       html_img = "<div style='width:"+(radius*2).to_s+"px;height:"+(radius*2).to_s+"px;background-color:"+bg_color+";border-radius:"+radius.to_s+"px;'><p style ='color:"+font_color+";font-size:"+font_size.to_s+"px;font-family:"+font_family+";padding-top:"+(radius/2).to_s+"px;'>"+first_name_split+last_name_split+"</p></div>"
     elsif shape == "square"
       html_img = "<div style='width:"+width.to_s+"px;height:"+height.to_s+"px;background-color:"+bg_color+";'><p style ='color:"+font_color+";font-size:"+font_size.to_s+"px;font-family:"+font_family+";padding-top:"+(height/4).to_s+"px;'>"+first_name_split+last_name_split+"</p></div>"	
     else
       html_img = "<div style='width:"+width.to_s+"px;height:"+height.to_s+"px;background-color:"+bg_color+";'><p style ='color:"+font_color+";font-size:"+font_size.to_s+"px;font-family:"+font_family+";padding-top:"+(height/4).to_s+"px;'>"+first_name_split+last_name_split+"</p></div>"		
     end	
     	

     html_img
end