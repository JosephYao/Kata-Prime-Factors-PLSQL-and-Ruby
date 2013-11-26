Create or Replace type primeFactorList is table of number;
/

Create or Replace procedure add_prime_factor
(pfList in out primeFactorList, prime_factor in number) is
begin
  pfList.extend;
  pfList(pfList.count) := prime_factor;
end add_prime_factor;
/

Create or Replace function prime_factors (input in number) return primeFactorList is
result primeFactorList := primeFactorList();
num number := input;
candidate number := 2;
begin
  while (num > 1)
    loop
    while (mod(num, candidate) = 0)
    loop
      add_prime_factor(result, candidate);
      num := num / candidate;
    end loop;
    candidate := candidate + 1;
  end loop;

  return result;
end prime_factors;
/