Pod::Spec.new do |s|
  s.name             = "Mosquitto"
  s.version          = "1.6.12"
  s.summary          = "Eclipse Mosquitto is an open source implementation of a server for version 3.1 and 3.1.1 of the MQTT protocol."
  s.description      = "Eclipse Mosquitto is an open source implementation of a server for version 3.1 and 3.1.1 of the MQTT protocol."
  s.homepage         = "https://github.com/eclipse/mosquitto"
  s.license          = 'This project is dual licensed under the Eclipse Public License 1.0 and the Eclipse Distribution License 1.0 as described in the epl-v10 and edl-v10 files.'
  s.author           = { "Eclipse Foundation" => "emo@eclipse.org" }
  s.source           = { :git => "https://github.com/lingoer/mosquitto.git", :tag => "v1.6.12" }

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.14'
  s.static_framework = true
  s.xcconfig = {
                 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                 'GCC_PREPROCESSOR_DEFINITIONS' => 'WITH_TLS=1 WITH_THREADING=1'
               }
  s.source_files = ['*.h', 'lib/*.{c,h}', 'src/deps/*.h']
  s.public_header_files = ['lib/mosquitto.h']
  s.module_map = 'Sources/Mosquitto/include/module.modulemap'
  s.dependency 'CLOpenSSL', '~> 1.1.10801'
  
end
