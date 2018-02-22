(1...1000).select {|t| t%3==0 || t%5==0}.inject(&:+)
