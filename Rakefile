DEFAULT_ENV = {DEVELOPER_DIR: "/Applications/Xcode6-Beta.app"}.freeze
PRODUCT_DIR = "build"
BINARY_NAME = "nibless"
SOURCES     = Dir["src/**/*.swift"]

def env(env_hash)
  env_hash.map {|k,v| %(#{k}="#{v}")}.reduce{|accu, n| [accu, n].join(" ")}
end

def product
  File.join PRODUCT_DIR, BINARY_NAME
end

task :prepare do
  Dir.mkdir(PRODUCT_DIR) unless Dir.exists?(PRODUCT_DIR)
end

task :build => [:prepare] do
  sdk_root  = `#{env(DEFAULT_ENV)} xcrun --show-sdk-path --sdk macosx`.chomp
  build_env = env(DEFAULT_ENV.merge(SDKROOT: sdk_root))
  `#{build_env} xcrun swift -o #{product} #{SOURCES.join(" ")}`
end
