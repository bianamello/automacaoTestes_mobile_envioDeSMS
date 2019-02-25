class Base
    
    def procura_elemento_id(id)
        $driver.wait_true(5) { $driver.exists { $driver.find_element(:id, id)}}
    end

    def procura_elemento_texto(texto)
        $driver.wait_true(5) { $driver.exists {$driver.find_element(:xpath, "//*[@text='#{texto}']")}}
    end

    def clicar_botao(id)
        $driver.find_element(:id, id).click
    end

end