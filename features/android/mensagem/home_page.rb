class HomePage < Base

    def initialize
        @botao_buscarMensagens = 'action_zero_state_search'
        @botao_iniciarBatePapo = 'start_new_conversation_button'
        @texto_novaMensagem = 'Nova conversa'            
    end

    def verificaTelaHome
        procura_elemento_id(@botao_iniciarBatePapo)
    end

    def iniciaNovaMensagem
        clicar_botao(@botao_iniciarBatePapo)
    end

    def verificaTelaEnvioMensagem
        procura_elemento_texto(@texto_novaMensagem)
    end

end