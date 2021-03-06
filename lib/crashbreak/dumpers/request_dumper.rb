module Crashbreak
  class RequestDumper < Crashbreak::BasicSerializer
    def dump
      sanitize_request_hash
    end

    private

    def sanitize_request_hash
      {}.tap do |sanitized_request_hash|
        request_hash.each{|key, value| sanitized_request_hash[key] = value.to_s }
      end
    end

    def request_hash
      request.env
    end
  end
end