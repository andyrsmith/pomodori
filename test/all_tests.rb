require 'test/unit/testsuite'
require 'test/unit/ui/console/testrunner'
Dir.glob(File.join(File.dirname(__FILE__), '*_test.rb')).each {|f| require f}

class AllTests
  def self.suite
    suite = Test::Unit::TestSuite.new
    suite << FrameTest.suite
    suite << StorageTest.suite
    suite << SubmitButtonTest.suite
    suite << TextFieldTest.suite
    suite << TomatoTest.suite
    suite << TomatoesControllerTest.suite
    return suite
  end
end
# Test::Unit::UI::Console::TestRunner.run(AllTests)