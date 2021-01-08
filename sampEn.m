function entropy = sampEn(sig, dim, r)
   sigLen = length(sig);
   r = r * std(sig);
   A = 0;
   B = 0;
   
   for i = 1:(sigLen - dim - 1)
      for j = (i + 1):(sigLen - dim - 1)
         for k = 1:(dim - 1)
            if abs(sig(i + k) - sig(j + k)) <= r
                B = B + 1;
                if abs(sig(i + dim) - sig(j + dim)) < r
                    A = A + 1;
                end
            else
                break;
            end
         end
      end
   end
   
   if A == 0 || B == 0
      entropy = -log((N-m) / (N-m-1));
   else
      entropy = -log(A/B);
   end
end