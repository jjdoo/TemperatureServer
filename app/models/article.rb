class Article < ActiveRecord::Base
 # ARTICLE_TYPES =[
 #   ["fisrt type", "first_type"],
  #  ["second type","second_type"]
 # ]
 # validates_inclusion_of  :article_type, :in =>ARTICLE_TYPES.map{|disp,value|value}
 
 TYPES = [
  ["技术产品","product"],
  ["应用创新","app"],
  ["知识研究","tech"],
  ["资讯专题","info"]  
 ]
end
