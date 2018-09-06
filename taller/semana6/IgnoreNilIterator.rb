class IgnoreNilIterator
	def initialize ( elements )
		raise ArgumentError, 'Coleccion nil' if elements.nil?
		@each = Enumerator.new do |aux|
			idx = 0
			loop do
				raise StopIteration if idx >= elements.length
				aux << elements[idx] unless elements[idx].nil?
				idx += 1
			end
		end
	end

	def each
		@each
	end
end

begin
	elements = [1, 7.0, nil, 'Hola', nil, 'Mundo']

	my_iterator = IgnoreNilIterator.new(elements)

	p my_iterator.each.take(3) # [1, 7.0, "Hola"]
	p my_iterator.each.next
	p my_iterator.each.next
	p my_iterator.each.next

	my_iterator.each.rewind
	p my_iterator.each.next
	p my_iterator.each.next
	p my_iterator.each.next
rescue ArgumentError => e
	#se ejecuta cuando se lanzó error de argumentos
	puts e.message
rescue StopIteration => e
	puts e.message

else
	#se ejecuta si no hubieron excepciones
ensure
	#se ejecuta si hubo alguna excepcion
end
