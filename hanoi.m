function [a,b,c]=hanoi(n)
a=(1:n)';b=[];c=[];
    if rem(n,2)==0
        while (~isempty(a) || ~isempty(b))
      [a,b]=hmove(a,b);
      [a,c]=hmove(a,c);
      [b,c]=hmove(b,c);
        end
    else
        while (~isempty(a) || ~isempty(b))
              [a,c]=hmove(a,c);
              if ~(isempty(a) && isempty(b))
              [a,b]=hmove(a,b);
              else
                  break;
              end
              [b,c]=hmove(b,c);
        end
    end
end

function [a,b]=hmove(a,b)
    if isempty(b)
        b=a(1);
       a(1)=[];
    else
        if isempty(a)
            a=b(1);
            b(1)=[];
           
        else
            if a(1)< b(1)
           b=[a(1);b]; 
            a(1)=[];
        else
           a=[b(1);a];
           b(1)=[];

             end
        end
    end
end
