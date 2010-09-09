# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{eztexting}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Malin"]
  s.date = %q{2010-09-08}
  s.description = %q{A Gem to make using eztexting simple and fun}
  s.email = %q{dmalin@eztexting.com}
  s.extra_rdoc_files = ["LICENSE", "README.textile", "lib/eztexting.rb", "lib/eztexting/availablity.rb", "lib/eztexting/base.rb", "lib/eztexting/credits.rb", "lib/eztexting/keywords.rb", "lib/eztexting/lookup.rb", "lib/eztexting/sms.rb", "lib/eztexting/voice.rb"]
  s.files = ["LICENSE", "Manifest", "README.textile", "RELEASE_NOTES", "Rakefile", "VERSION", "examples/example_script.rb", "lib/eztexting.rb", "lib/eztexting/availablity.rb", "lib/eztexting/base.rb", "lib/eztexting/credits.rb", "lib/eztexting/keywords.rb", "lib/eztexting/lookup.rb", "lib/eztexting/sms.rb", "lib/eztexting/voice.rb", "spec/eztexting/eztexting_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "eztexting.gemspec"]
  s.homepage = %q{http://github.com/EzTexting/eztexting}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Eztexting", "--main", "README.textile"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{eztexting}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A Gem to make using eztexting simple and fun}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.6.0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.6.0"])
  end
end
