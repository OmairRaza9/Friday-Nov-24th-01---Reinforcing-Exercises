ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]




sum = Hash.new(0)

ballots.each do |vote|
  vote.each do |key, value|
    if key ==1
       sum[value] += 3
    elsif key == 2
       sum[value]+= 2
    elsif key == 3
        sum[value] += 1
    else
        sum[value] += 0
    end
  end
end
  puts sum.sort[0]
