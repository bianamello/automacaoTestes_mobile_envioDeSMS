require 'appium_lib'
require 'pry'


# 1 - Saber quais caps queremos na nossa sessao (appium.txt)
caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', 'appium.txt')
caps = Appium.load_appium_txt file: caps_path, verbose: true

# 2 - Criar um cliente para usar as caps
Appium::Driver.new caps, true


# É uma classe que o cucumber armazena todo o contexto do ambiente
class AppiumWorld
end

# Permite injetar os metodos do appium na classe do cucumber
Appium.promote_appium_methods AppiumWorld

# Substitui os metodos do cucumber pelo os métodos do appium (world)
World do
  AppiumWorld.new
end


# 3 - Iniciar a sessao antes da execução do cenário
Before { $driver.start_driver }

# 4 - Fechar a sessao depois da execução do cenário
After { $driver.driver_quit }