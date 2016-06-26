crr = function (img)

	sz=img:size()
	ht=2*sz[1]
	bdt=2*sz[2]
	img=image.scale(img,bdt,ht)
	itorch.image(img)

	b=torch.Tensor(1,ht,bdt)
	b[1]=img
	a1=torch.Tensor(1,ht,bdt)
	a1[1]=img
	
	for i=1,ht do
    	for j=1,bdt do
        	if(b[1][i][j]>82) then
        	    b[1][i][j]=1
        	else
        	    b[1][i][j]=0
        	end
    	end
	end


	ypro=torch.Tensor(ht)
	for i=1,ht do
	    ypro[i]=0
	    end
	for i=1,ht do
	    for j=1,bdt do
	        if b[1][i][j]==0 then
	            ypro[i]=ypro[i]+1
	        end
	    end
	end

	pred = function(img, flag)
		if flag == -1 then 
			io.write(" ")
		end

		nn = require 'nn'
		model = torch.load('model.net')
		img=image.scale(img,20,20):double()
		local temp = torch.save('temp.jpg', img)
		img = torch.Tensor(3,20,20)
		img = torch.load('temp.jpg', 3, 'byte')

		prediction = model:forward(img)
		confidences, indices = torch.sort(prediction, true)  

		alpha=48
		beta=65
		gamma=indices[1]
		if gamma < 11 then
		    io.write(string.char(alpha+gamma-1))
		else
	    	beta=beta+gamma-11
		    io.write(string.char(beta))
		end
	end

	fun1=function(yprev,ynex)
    	xpro=torch.Tensor(bdt)
    	for i=1,bdt do
    		xpro[i]=0
    	end
    	for j=1,bdt do
    		for i=yprev,ynex do
        		if b[1][i][j]==0 then
        	    	xpro[j]=xpro[j]+1
           		end
        	end
   	 	end
	    flag=0
	    f2=0
	    for i=2,bdt-1 do
	        if (xpro[i+1]~=0)and(xpro[i]==0)and(flag==0) then
	            xprev=i
	            if(f2~=0) and (xprev-xnex)>(1/3.5)*(ynex-yprev) then
	                pred(_, -1)
	                end
	            flag=1
	       elseif (xpro[i-1]~=0)and(xpro[i]==0)and(flag==1) then
	            xnex=i
	            f2=1
	            pred(a1[{{},{yprev,ynex},{xprev,xnex}}],1)
            	flag=0
        	end
    	end
	end

	flag=0
	for i=2,ht-1 do
	    if (ypro[i+1]~=0)and(ypro[i]==0)and(flag==0) then
	        yprev=i
    	    flag=1
       	end
    	if (ypro[i-1]~=0)and(ypro[i]==0)and(flag==1) then
    	    ynex=i
    	    fun1(yprev,ynex)
    	    io.write("\n")
        	flag=0
        end
	end

end