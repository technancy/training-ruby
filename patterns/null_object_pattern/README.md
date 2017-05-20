```
irb
require_relative 'guaranteed_address_line.rb'
lines = ['34 Baker Street', '', nil, 'PL 33T']
address_lines = lines.map{|line| GuaranteedAddressLine.find(line)}
address_lines.each { |line| puts line.name }
```

You'll see `no value` as the alternate output for nils.