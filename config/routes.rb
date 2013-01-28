Zetta::Application.routes.draw do

  resources :metas

  resources :meta_detalhes

  resources :variavels

  resources :elementos

  resources :localizacaos

  resources :produto_barras

  resources :unidade_metricas

  resources :localidades

  resources :metodos

  resources :equipos

  resources :safra_brotados

  resources :servicos

  resources :safra_ardidos

  resources :safra_verdosos

  resources :safra_quebrados

  resources :safra_averiados

  resources :safra_impurezas

  resources :safra_produtos do
    member do
      get 'descontos'
    end
  end 

  resources :safra_umidades

  resources :safras

  match 'zetta' => 'logins#new'
  match 'menu'  => 'menus#index'

  #buscas
  scope 'buscas' do
    match 'get_unidade'    => "buscas#get_unidade", :via => :post
    match 'get_usuario'    => "buscas#get_usuario", :via => :post
    match 'cotz_us_compra' => "buscas#cotz_us_compra", :via => :post
    match 'cotz_us_venda'  => "buscas#cotz_us_venda", :via => :post
    match 'cotz_rs_compra' => "buscas#cotz_rs_compra", :via => :post
    match 'cotz_rs_venda'  => "buscas#cotz_rs_venda", :via => :post
    match 'busca_produto'  => "buscas#busca_produto", :via => :get   
  end

  scope 'geradors' do
    match 'gerador_arquivo'  => "geradors#gerador_arquivo", :via => :get
    match 'result_gerador'   => "geradors#result_gerador", :via => :get
  end
  #login
  resources :logins do
    collection do
      get 'acesso'
      get 'liberacao'
      post 'logar'
      post 'get_unidade'
    end
  end

  #cadastros
  resources :localizacaos
  resources :produto_barras
  resources :localidades
  resources :metodos
  resources :equipos
  resources :servicos
  resources :variavels
  resources :elementos
  resources :unidade_metricas
  resources :empresas
  resources :contas
  resources :sub_grupos
  resources :depositos
  resources :bicos
  resources :grupos
  resources :usuarios
  resources :unidades
  resources :clases
  resources :rodados
  resources :documentos
  resources :metas
  resources :meta_detalhes
  resources :planos
  resources :plano_de_contas do
    collection do
      get 'print'
    end
  end 
  resources :moedas
  resources :cidades
  resources :estados
  resources :paises
  resources :setors
  resources :personas do
    collection do
      get 'persona_nota_credito'
      get 'persona_cobro'
      get 'persona_pago'
      get 'busca_persona_pago'                    
      get 'busca_persona_cobro'                  
      get 'persona_presupuesto'                  
      get 'persona_nota_credito_proveedor'       
      get 'busca_persona_presupuesto'            
      get 'busca'                                
      get 'persona_compra'                 
      get 'busca_persona_compra'                 
      get 'busca_cliente'                        
      get 'busca_persona_nota_credito'           
      get 'busca_persona_nota_credito_proveedor' 
      get 'busca_persona_venda_financa'          
      get 'busca_persona_venda'
      get 'persona_venda'
    end
    member do 
      get 'tarjeta'
    end
  end                   
  resources :produtos do
    collection do
      get 'dinamic_busca_consulta_stock'             
      get 'index_print'                              
      get 'consulta_stock'                           
      get 'busca_compra_produto'                     
      get 'dinamic_busca_compra_produto'             
      get 'busca_composicao_produto'                 
      get 'dinamic_busca_composicao_produto'         
      get 'busca_pedido_compra_produto'              
      get 'dinamic_busca_pedido_compra_produto'      
      get 'busca_presupuesto_produto'                
      get 'dinamic_busca_presupuesto_produto'        
      get 'busca_venda_produto'                      
      get 'dinamic_busca_venda_produto'              
      get 'busca_consumicao_interna_produto'         
      get 'dinamic_busca_consumicao_interna_produto' 
      get 'busca_manutencao_mq_produto'              
      get 'dinamic_busca_manutencao_mq_produto'      
      get 'busca_producao_produto'                   
      get 'dinamic_busca_producao_produto'           
      get 'busca_remicao_produto'                    
      get 'dinamic_busca_remicao_produto'            
      get 'busca_venda_produto_maiorista'            
      get 'dinamic_busca_venda_produto_maiorista'    
      get 'dinamic_busca'                            
      get 'busca_ordem_produto'                      
      get 'dinamic_busca_ordem_produto'              
      get 'imagem'                                  
    end
    member do
      get 'cod_barra'
      get 'roteiro'
      get 'composicao'

    end
  end  
  resources :financas do
    collection do
      get 'relatorio_financas'
      get 'extrato_bancario'
      get 'resultado_extrato_bancario'    

    end  
  end
  resources :forms

  #processos
  resources :controle_pulv_maqs
  resources :controle_pulvs  
  resources :controle_visita
  resources :setores
  #
  resources :controle_pulvs
  resources :controle_visita
  #COMPRAS
  resources :compras_gastos
  resources :compras_documentos
  resources :compras_produtos
  resources :compras_financas
  resources :compras do
    collection do
      get 'busca' 
      get 'busca_gasto'      
      get 'compras_gasto'     
      get 'compras_financa'   
      get 'compras_documento'             
      get 'novo_financa'      
      get 'novo_gasto'        
      get 'new_gasto'
      get 'index_gasto'
      get 'pedido_compras'
    end  
    member do 
      get "compras_financa"
      get "novo_financa" 
      get "edit_gasto"     
      get 'novo_produto'
      get 'compras_documento'
      get 'total_documento'
      get 'novo_documento'
      get 'prorateo'
    end
  end  
  resources :stocks do
    collection do
      get 'iventario'
      get 'stock_inicial'
      get 'relatorio_stock'                  
      get 'rentabilidade'                    
      get 'resultado_rentabilidade'       
      get 'dinamic_busca_stock_inicial'    
      get 'resultado_iventario'              
      get 'resultado_relatorio_consumo_bomba'
      get 'projecao_compras'
      get 'resultado_projecao_compras'      
    end
  end
  resources :pagares do
    member do
      get 'autorizacao_desc'
      get 'print'
    end
  end
   
  
resources :pagares_detalhe

  resources :consumicao_internas do 
    resources :consumicao_interna_produtos  
  end
  resources :ingressos do
    collection do
      get 'busca_ingreso'
    end
    member do
      get 'comprovante'
    end
  end

  resources :presupuestos
  resources :vendas do
    collection do
      get  'new_balcao'
      get  'venda_produto'
      get  'faturas_pendentes'                     
      get  'comprovante'                          
      get  'comprovante_fatura_pendentes'          
      get  'detalhes_produto'                      
      get  'busca_vendas'
      get  'vendas_financa_contado'               
      get  'vendas_financa' 
      get  'gerar_cotas_credito'
      get  'busca_vendas'
      post 'filtro_faturas_pendentes'
      post 'filtro_faturas_pendentes_comprovante'       
      get  'vendas_entrada_produto'
      post 'filtro_faturas_pendentes'
      post 'filtro_faturas_pendentes_comprovante' 
      put  'update_faturas_pendentes'  
    end
    member do
      get  'vendas_financa'
      get  'gerador_cotas'
      get  'comprovante'
      get  'fatura'
      get  'ticket'
    end 
  end
  resources :vendas_financas

  resources :vendas_produtos
  
  resources :producaos do
    collection do
      get 'busca'
      get 'producao_final'
    end
    resources :producao_produtos do 
      collection do 
        get 'detalhe_print'
      end 
    end 
  end  

  resources :manutencao_maquinas do
    resources :manutencao_maquina_produtos
  end
  resources :recepcao_nota_remicao_produtos
  resources :recepcao_nota_remicaos
  resources :nota_remicao_produtos
  resources :nota_remicaos
  resources :nota_creditos_detalhes
  resources :nota_creditos
  resources :nota_credito_proveedors do
    collection do
      get 'filtro_busca_faturas'
      get 'nc_proveedor_financa'
      get 'nota_credito_comprovante'
    end
  end
  resources :vendas_entrada_produtos
  
  resources :cobros_detalhes
  resources :cobros_financas
  resources :cobros do
    collection do      
      get 'busca'      
      get 'nova_cota'      
      get 'filtro_busca_cliente' 
      get 'busca'
      get 'nova_cota'
    end
    member do 
      get 'filtro_busca_cliente'
      get 'cobro_final'
    end
  end                        
  resources :pagos do
    collection do
      post 'filtro_dividas'
      get  'busca'      
    end
    member do 
      get 'pago_final'
    end
  end
  resources :pagos_detalhes
  resources :pagos_financas
  resources :egressos do
    collection do
      get 'busca_egreso'
      get 'comprovante'
    end
  end
  resources :transferencia_contas_detalhes
  resources :transferencia_contas do
    collection do
      get 'busca_diferido'
      get 'resultado_busca_diferido'
      get 'busca'
    end
  end
  resources :transferencia_entre_contas
  resources :fechamento_caixas
  resources :sueldos_detalhes

  resources :sueldos do
    collection do
      get 'form_sueldos_detalhes'
    end
    member do
      get 'form_sueldos_detalhes'
      get 'comprovante'
    end
  end 
  
  resources :adelantos do
    collection do
      get 'busca'
    end
    member do 
      get 'comprovante'
      get 'recibo'
    end 
  end  
  resources :pedido_compras do
    collection do 
      get 'busca_pedido_compra'
    end
  end
  resources :transferencia_depositos
  resources :entrada_saida_func_detalhes
  resources :entrada_saida_funcs do
    collection do
      get 'busca'
    end
  end

  resources :clientes do
    collection do
      get 'relatorio_contas_receber'
      get 'atualizacao_carpeta_cliente' 
      get 'busca_atualizacao_carpeta_cliente'
      get 'index_inicio'
    end
  end

  resources :proveedores do
    collection do
      get 'relatorio_contas_pagar'
      get 'index_inicio'
    end
  end

  resources :relatorios do
    collection do
      get 'vendas'
      get 'historico_precos'
      get 'cheque_diferido'
      get 'fechamento_caixa'
      get 'resultado_resumo_compra'              
      get 'resumo_mes'                           
      get 'resultado_resumo_mes'                 
      get 'cobros'                               
      get 'resultado_cobros'                     
      get 'consumicao_interna'                   
      get 'resultado_consumicao_interna'         
      get 'pagos'                                
      get 'resultado_pagos'                      
      get 'gastos'                               
      get 'resultado_gastos'                     
      get 'comissoes'                            
      get 'resultado_comissoes'                  
      get 'compras'                              
      get 'resultado_compras'                    
      get 'resultado_fechamento_caixa'           
      get 'resultado_vendas'                    
      get 'resultado_historico_precos'           
      get 'resultado_relatorio_fechamento_turno' 
      get 'remicao'                              
      get 'resultado_remicao'                    
      get 'controle_func'                        
      get 'resultado_controle_func'              
      get 'recepcao_remicao'                     
      get 'resultado_recepcao_remicao'           
      get 'resultado_cheque_diferido'            
      get 'resultado_tabela_preco'               
      get 'adelantos'                            
      get 'resultado_adelantos'                  
      get 'pedidos_vendas'                       
      get 'resultado_pedidos_vendas'
      get 'tabela_preco'
      get 'livro_diario'
      get 'resultado_livro_diario'
      get 'controle_visitas'
      get 'resultado_controle_visitas'
      get 'fluxo_caixa'
      get 'resultado_fluxo_caixa'
      get 'metas'
      get 'resultado_metas'
    end
  end

 #safra
 resources :safras

 resources :safra_produtos do
    member do
      get 'descontos'
    end
  end 

  resources :safra_brotados
  resources :safra_ardidos
  resources :safra_verdosos
  resources :safra_quebrados
  resources :safra_averiados
  resources :safra_impurezas
  resources :safra_umidades

resources :financas do
    collection do
      get 'relatorio_financas'
      get 'extrato_bancario'
      get 'resultado_extrato_bancario'      
    end  
  end
  
#safra
  resources :safras
  resources :safra_produtos do
    member do
      get 'descontos'
    end
  end

  resources :safra_umidades
  resources :safra_ardidos
  resources :safra_verdosos
  resources :safra_quebrados
  resources :safra_averiados
  resources :safra_impurezas
  resources :safra_brotados

#contabilidade
resources :diarios do
  collection do
    get 'busca'
  end
end

resources :diario_habers
resources :diario_debes

resources :contabilidades do
  collection do
    get 'generar_acientos_contables'
    get 'resultado_generar_acientos_contables'
    get 'resumo_vendas'
    get 'resultado_resumo_vendas'
    get 'resumo_compra'
    get 'resultado_resumo_compra'
    get 'livro_venda'
    get 'resultado_livro_venda'
    get 'livro_mayor_produtos'
    get 'resultado_livro_mayor_produtos'
    get 'livro_mayor'
    get 'resultado_livro_mayor'
    get 'livro_diario'
    get 'resultado_livro_diario'
    get 'livro_compra'
    get 'resultado_livro_compra'
    get 'balance_general'
    get 'resultado_balance_general'
    get 'balance'
    get 'resultado_balance'
  end
end

resources :faturas do
  collection do
    get 'busca'
    get 'print_busca'
  end
end 

resources :rubros
resources :plano_de_contas

end
