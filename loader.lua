al=require 'alllabel'
an=require 'allnames'
ibt={}
for i=1,#an do
    img=image.load('English/Img/'..an[i]..'.png',1,'byte')
    ibt[i]=image.scale(img,50,50)
    end
mnist = {size =#an, data =ibt, label = al}
return mnist
