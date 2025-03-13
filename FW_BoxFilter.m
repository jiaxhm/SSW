function result=FW_BoxFilter(im,r, iteration)
Windows=fspecial('average',[2*r+1,2*r+1]);
[~,~,Dim]=size(Windows);
for ch=1:size(im,3)
    U = im(:,:,ch);

    for i = 1:iteration
        %all projection distances
        for j=1:Dim
            C=imfilter(U,Windows(:,:,j),'replicate');
        end
        U = C;
    end
    result(:,:,ch) = U;
end