# ruby test file ruby.rb

include Enumerable

def initialize(rbconfig)
@rbconfig = rbconfig
@no_harm = false
end

def load_savefile
begin
    File.foreach(savefile()) do |line|
    k, v = *line.split(/=/, 2)
    self[k] = v.strip
    end
rescue Errno::ENOENT
    setup_rb_error $!.message + "\n#{File.basename($0)} config first"
end
end

if c['rubylibdir']
    # V > 1.6.3
    libruby         = "#{c['prefix']}/lib/ruby"
    siterubyverarch = c['sitearchdir']
end
parameterize = lambda {|path|
    path.sub(/\A#{Regexp.quote(c['prefix'])}/, '$prefix')
}

if arg = c['configure_args'].split.detect {|arg| /--with-make-prog=/ =~ arg }
    makeprog = arg.sub(/'/, '').split(/=/, 2)[1]
else
    makeprog = 'make'
end

def setup_rb_error(msg)
  raise SetupError, msg
end

if $0 == __FILE__
  begin
    ToplevelInstaller.invoke
  rescue SetupError
    raise if $DEBUG
    $stderr.puts $!.message
    $stderr.puts "Try 'ruby #{$0} --help' for detailed usage."
    exit 1
  end
end
