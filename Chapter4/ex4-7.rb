# Base.setで定義されている設定にアクセスする
def self.settings
  self
end

# Base.setで定義されている設定にアクセスする
def settings
  self.class.settings
end

