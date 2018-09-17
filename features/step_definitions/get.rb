Dado(/^que tenho um endpoint do github$/) do
  # lista para o endpoint clientes em endpoints.json
end


Entao(/^retorna os dados de usuario$/) do
  @response.body
end
Quando("realizar uma requisição GET para github") do
  @response = HTTParty.get 'https://api.github.com/users/tenoriio7'
end

E(/^o status code '(\d+)'$/) do |status_code|
  status_code = status_code.to_i
  puts @response.body
  expect(@response.code).to eq status_code
  json = JSON.parse(@response .body)
  fail "error in la valicacion" if json["id"].is_a?(Fixnum) == false
  fail "error in la valicacion" if json["url"].is_a?(String) == false

end
