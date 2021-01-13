#!/usr/bin/env ruby

def SieveOfEratosthenes(n)
	# Create a boolean array "prime[0..n]" and initialize
	# all entries it as true. A value in prime[i] will
	# finally be false if i is Not a prime, else true.
    o = [];
    prime = [];

	prime.fill(true, 0..n+1);

    i = 2;
    until (i*i)>=n do
		# If prime[p] is not changed, then it is a prime
		if(prime[i]==true)
			# Update all multiples of p greater than or
			# equal to the square of it
			# numbers which are multiple of p and are
			# less than p^2 are already been marked.
			j=i*i;
			until j>=n do
                prime[j] = false;
                j+=i;
            end
		end
		i+=1;
	end

	# Print all prime numbers
	for x in 2..n do
        if (prime[x] == true)
    		o.push(x);
    	end
    end

    puts("[OUTPUT] %s" % o.join(','));
    puts();
end


# Driver program to test above functions */
def main
  i = 10;
  puts("[INPUT] %d" % i);
  SieveOfEratosthenes(i);
end
main;
