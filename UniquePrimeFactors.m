% Number of unique proper prime factors 

for i = 1:30

  f = factor(i);

  if (numel(f) == 1)
    n = 0;
  else 
    u = unique(f);
    n = numel(u);
  end
  
  s(i) = n;
  
  fprintf('%i has %i unique proper prime factors\n', i, n);

end

display(s);