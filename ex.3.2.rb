def fatorial n
        return 1 if[0,1].include? n
        fatorial(n-1)*n
end
puts fatorial(20)