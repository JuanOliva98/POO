class patternText
	include HTMLText

	def initialize( p_text )
		@content = p_text.source
	end

	def source
		"#<{@pattern}>#{@content}</#{@pattern}>"
	end

end

class BoldText < patternText
	@pattern = "b"
end

class Italic_text < patternText
	@pattern = "i"