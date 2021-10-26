function posix-source
  for line in (cat $argv)

    # Skip comment lines
    if test (string sub --length 1 $line) = "#"
      continue
    end

    # Skip empty lines
     if test (string length $line) -lt 2
      continue
    end
    set arr (echo $line |tr = \n)
    set -gx $arr[1] $arr[2] 
  end
end

# Alternative: https://github.com/bertonha/fish-posix-source/blob/master/posix-source.fish
# https://github.com/TSFoster/posix-source/tree/master/functions
