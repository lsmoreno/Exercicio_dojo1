Dado(/^que acesso o site ORANGEHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com/"
end
  Quando(/^realizar o login com perfil ADM$/) do
  #REALIZO A CAPTURA TESTANDO PELO FIND
  find(:xpath, '//*[@id="txtUsername"]').set 'Admin'  
  # REALIZO A CAPTURA TESTANDO PELO FILL_IN
  fill_in('txtPassword', :with  => 'admin')
  click_button 'btnLogin'
end

Então(/^efetuo o cadastro de um novo empregado$/) do
  assert_text('Dashboard')
  #binding.pry
  click_link 'menu_pim_viewPimModule'
  click_link 'menu_pim_addEmployee'
  fill_in('firstName', :with  => 'Anakin')
  fill_in('middleName', :with  => 'Souza') 
  fill_in('lastName', :with  => 'Santos') 
  check('chkLogin')
  fill_in('user_name', :with  => 'Anakin S Santos')
  fill_in('user_password', :with  => 'Aline@teste')
  fill_in('re_password', :with  => 'Aline@teste')
  select('British Development Center', :from=> 'location')
  click_button 'btnSave'
  assert_text('Personal Details')
end










