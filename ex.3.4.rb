def upcase a

  i=0
  while i<a.size     
    if a[i].ord>=97 && a[i].ord<=122    
      b=a[i].ord
      b=b-32
      b=b.chr
      a[i]=b
    end
    return a[i]
    i += 1
  end
end

print upcase "introducao a ruby finalizada"