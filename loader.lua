imgl=require 'src/imglabel'
imgn=require 'src/imgname'
hndl=require 'src/hndlabel'
hndn=require 'src/hndname'
fntl=require 'src/fntlabel'
fntn=require 'src/fntname'
ibt={}
hbt={}
fbt={}
for i=1,#imgn do
    img=image.load('Data/Img/'..imgn[i]..'.png',1,'byte')
    ibt[i]=image.scale(img,50,50)
    end
for i=1,#hndl do
    img=image.load('Data/Hnd/'..hndn[i]..'.png',1,'byte')
    hbt[i]=image.scale(img,50,50)
    end
for i=1,#fntl do
    img=image.load('Data/Fnt/'..fntn[i]..'.png',1,'byte')
    fbt[i]=image.scale(img,50,50)
    end
imgdat = {size=#imgn, data=ibt, label=imgl}
hnddat = {size=#hndl, data=hbt, label=hndl}
fntdat = {size=#fntl, data=fbt, label=fntl}
torch.save('imgdata.dat',imgdat)
torch.save('hnddata.dat',hnddat)
torch.save('fntdata.dat',fntdat)
mnist={imgdat=imgdat, hnddat=hnddat, fntdat=fntdat}
return mnist
