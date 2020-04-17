
require 'test/unit'
require_relative "banking_app"

class BankingAppTest < Test::Unit::TestCase

    def test_is_Int
        assert_instance_of(Integer, $initial_balance)
    end

    def test_not_nil
        assert_not_nil($initial_balance)
    end

end
