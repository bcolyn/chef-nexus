source "https://supermarket.getchef.com"

metadata

cookbook 'java', '~> 1.28.0'
cookbook 'tomcat', '~> 0.16.2'

# test fixture cookbooks for serverspec
group :integration, :test do
  cookbook 'fixtures', path: 'test/integration/fixtures'
end