require "v8"
require "yajl"

class V8::Object
  def to_json
    @context['JSON']['stringify'].call(self)
  end

  def to_hash
    Yajl::Parser.parse(to_json)
  end
end
