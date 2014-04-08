%w[core models controllers].each do |dir_name|
  root = File.expand_path('../', __FILE__)
  Dir.glob(File.join(root, dir_name, '**/*')) { |file| require file }
end

module Application
  class Runner
    def run
      Controller.new.action
      p Model.new.check_relation
    end
  end
end
