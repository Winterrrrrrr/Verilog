 function img2=IMG2COE12(imgfile,outfile)
    img=imread(imgfile);
    height=size(img,1);
    width=size(img,2);
    s=fopen(outfile,'wb');
    fprintf(s,'%s\n','memory_initialization_radix=16;');
    fprintf(s,'%s\n','memory_initialization_vector=');
    cnt=0;
    img2=img;
    for r=1:height
        for c=1:width
            cnt=cnt+1;
            R=img(r,c,1);
            G=img(r,c,2);
            B=img(r,c,3);
            Rb=dec2bin(double(R),8);
            Gb=dec2bin(double(G),8);
            Bb=dec2bin(double(B),8);
            img2(r,c,1)=bin2dec([Rb(1:4),'0000']);
            img2(r,c,2)=bin2dec([Gb(1:4),'0000']);
            img2(r,c,3)=bin2dec([Bb(1:4),'0000']);
            Outbyte=[Rb(1:4) Gb(1:4) Bb(1:4)];
            if(strcmp(Outbyte(1:5),'00000'))
                fprintf(s,'0%X',bin2dec(Outbyte));
            else
                fprintf(s,'%X',bin2dec(Outbyte));
            end
            if((c==width)&&(r==height))
                fprintf(s,'%c',';');
            else
                fprintf(s,'%c',',');
                fprintf(s,'\n');
            end
        end
    end
    fclose(s);
 end