function y = sing(x,a,n)
 % singularity function y = <x-a>^n
 y=(x-a).^n.*(x>=a);
end

