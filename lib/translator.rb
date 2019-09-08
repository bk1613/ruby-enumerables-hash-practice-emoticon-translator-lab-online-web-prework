# require modules here
require "yaml"

def load_library(file = 'lib/emoticons.yml')
  # code goes here
  emo_library = {"get_meaning" => {}, "get_emoticon" => {}}
  emos = YAML.load_file(file)
  emos.each do |meaning, array|
    emo_library["get_meaning"][array[0]] = meaning
    emo_library["get_emoticon"][array[0]] = array[1]
  end
  puts emo_library["get_emoticon"]
end

def get_japanese_emoticon(file = 'lib/emoticons.yml', emoticons)
  # code goes here
  jap_emo = load_library
  
end

def get_english_meaning(file = 'lib/emoticons.yml', emoticons)
  # code goes here
  west_emo = load_library
  
end

load_library