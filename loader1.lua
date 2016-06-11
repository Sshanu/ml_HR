imgl=require 'src/imglabel'
imgn=require 'src/imgname'
ibt=torch.Tensor(12503,50,50)
il=torch.Tensor(12503)
for i=1,#imgn do
    img=image.load('Data/Img/'..imgn[i]..'.png',1,'byte')
    ibt[i]=image.scale(img,50,50)
    il[i]=imgl[i]
    end
imgdat = {size=#imgn, data=ibt, label=il}
torch.save('imgdata.dat',imgdat)
return imgdat
