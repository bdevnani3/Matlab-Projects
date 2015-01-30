function [ out ] = minesweeper( arr )
[r, c] = size(arr)
i = 1
array = arr
while (i>=1 & i<=(r.*c))
    n = 0
     if isempty(arr{i})  == true
       if ~( any(i == [1 : r : (r*c-(r-1)) ]))
        if isempty(arr{i-1}) == false
            n = n+1
        end
       end
       if ~(any(i == [ r : r : r*c]))
        if isempty(arr{i+1}) == false
            n = n+1
        end
       end
       if ~(any(i == [ 1 : r]))
        if isempty(arr{i-r}) == false
            n = n+1
        end
       end
       if ~(any(i == [(r*c)-r+1 : r*c]))
        if isempty(arr{i+r}) == false
            n = n+1
        end
       end
       if ~(any(i == [ 1 : r]))& ~( any(i == [1 : r : (r*c-(r-1)) ]))
        if isempty(arr{i-(r+1)}) == false
            n = n+1
        end
       end
       if ~(any(i == [ 1 : r]))& ~(any(i == [ r : r : r*c]))
        if isempty(arr{i-(r-1)}) == false
            n = n+1
        end
       end
       if ~(any(i == [(r*c)-r + 1 : r*c])) & ~( any(i == [1 : r : (r*c-(r-1)) ]))
        if isempty(arr{i+r-1}) == false
            n = n+1
        end
       end
       if ~(any(i == [(r*c)-r+1 : r*c])) & ~(any(i == [ r : r : r*c]))
        if isempty(arr{i+r+1}) == false
            n = n+1
        end
       end
    array{i} = n    
    end
    i = i + 1
end
out = array 
end
