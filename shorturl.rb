class ShortURL
    def self.save(code, original)
      store.transaction { |t| t<pre></pre> = original }
    end
    def self.read(code)
      store.transaction { |t| t<pre></pre> }
    end
    def self.store
      @store ||= PStore.new("short_urls.db")
    end
  end