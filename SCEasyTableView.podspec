Pod::Spec.new do |s|
  
  s.name             = 'SCEasyTableView'
  s.version          = '1.0.0'
  s.summary          = 'A short description of SCEasyTableView.'
  s.homepage         = 'https://github.com/Samueler/SCEasyTableview.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Samueler' => 'samueler.chen@gmail.com' }
  s.source           = { :git => 'https://github.com/Samueler/SCEasyTableview.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'SCEasyTableView/Classes/**/*'
  
end
