$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'MathTasks'
  s.version     = '1.0.0'
  s.date        = '2018-11-04'
  s.summary     = 'Math tasks'
  s.description = 'Homework GeekHub'
  s.author      = 'Dmitry Bondar'
  s.email       = 'dimkawp@gmail.com'
  s.homepage    = 'https://github.com/dimkawp-2/my_math_task_gem'
  s.license     = 'MIT'
  s.files       = `git ls-files`.split("\n")
end
