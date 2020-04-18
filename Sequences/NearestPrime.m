# Distance to nearest prime

for n = 1:20
  
  d = 0;
    
  while (true)
  
    if (isprime(n+d) || isprime(n-d))
      break;
    end
    
    d = d+1;
  
  end

  fprintf('The distance from %i to the nearest prime is %i\n', n, d);
  S(n) = d;
  
end

display(S);