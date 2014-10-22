site :opscode
metadata

cookbook 'java', '~> 1.28.0'
cookbook 'ark', '0.9.0'

# test fixture cookbooks for serverspec
group :integration, :test do
  cookbook 'fixtures', path: 'test/integration/fixtures'
end