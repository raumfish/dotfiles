
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = nil
IRB.conf[:PROMPT_MODE] = :DEFAULT

# Wirble attempts to load libraries "pp", "irb/completion" and "rubygems"
# Wirble sets the prompt to ":SIMPLE" when it is ":DEFAULT"
wirble_opts = {
# skip internals (irb/completion, pp, rubygems)
:skip_internals => true,

# enable shortcuts (ri, po, poc)
:skip_shortcuts => false,

# set the prompt (:SIMPLE)
:skip_prompt => false,

# enable color
:init_color => true,
}

%w{wirble}.each do |lib|
  begin
    require lib
  rescue LoadError => err
    $stderr.puts "Couldn't load #{lib}: #{err}"
  end
end

#%w{init colorize}.each { |str| Wirble.send(str) }
#Wirble.init(wirble_opts)

#%w{pp-colour}.each do |lib|
#  begin
#    require lib
#  rescue LoadError => err
#    $stderr.puts "Couldn't load #{lib}: #{err}"
#  end
#end

if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

#load "irbsh-lib.rb" if IRB.conf[:PROMPT_MODE] == :INF_RUBY

#IRB.conf[:IRB_RC] = proc do |conf|
#  leader = " " * conf.irb_name.length
#  conf.prompt_i = "#{conf.irb_name} --> "
#  conf.prompt_s = leader + ' \-" '
#  conf.prompt_c = leader + ' \-+ '
#  conf.return_format   = leader + " ==> %s\n\n"
#  puts "Welcome!"
#end

#def ri(*names)
#  system(%{ri #{names.map {|name| name.to_s}.join(" ")}})
#end

