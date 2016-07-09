matio = require 'matio'
imgarr=matio.load('characters.mat')
ibt=torch.ByteTensor(40121,3,20,20)
il=torch.ByteTensor(40121)
j=1;
for i=1,40134 do
    local img=imgarr.originals[i]
    if img~=nil then 
        local a = image.save('temp.jpg', img)
        local img = image.load('temp.jpg',3,'byte')
        local img = image.scale(img,20,20)
        ibt[j] = img 
    	il[j] = imgarr.labels[i]
	j=j+1
    end
end
imgdat = {data=ibt, label=il}
torch.save('newdata20.dat',imgdat)
return imgdat
