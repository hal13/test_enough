require "test_enough/version"

module TestEnough
  class TestEnough
    def enough_length?(s)
      if s.length >= 3 and s.length <= 8
        return true
      else
        return false
      end
    end
  end
end
