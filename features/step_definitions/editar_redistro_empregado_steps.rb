Então(/^efetuo a modificações e atualizo o cadastro do empregado$/) do

	click_link 'menu_pim_viewPimModule'
	click_link 'menu_pim_viewEmployeeList'
	find(:xpath,'//*[@id="resultTable"]/tbody/tr[5]/td[4]/a').click
	click_button 'btnSave'
  	fill_in('personal_txtEmpFirstName', :with  => 'Leonardo')    
    fill_in('personal_txtEmpMiddleName', :with  => 'Moreno') 
    fill_in('personal_txtEmpLastName', :with  => 'Santos')
    choose ('personal_optGender_1')
    select('Single', :from=> 'personal_cmbMarital')
    select('Brazilian', :from=> 'personal_cmbNation')
    fill_in('personal_txtEmpNickName', :with  => 'Leo.Moreno') 
    fill_in('personal_txtMilitarySer', :with  => 'Teste123') 
    click_button 'btnSave'
    assert_text('Personal Details')
end
