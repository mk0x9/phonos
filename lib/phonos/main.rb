# encoding: utf-8

begin
  require 'active_support/core_ext'
rescue LoadError
  require 'rubygems'
  retry
end

module Phonos
  require 'singleton'
  class Analyzer
    include Singleton
    def analyse text
      # обрезаем, приводим в нижний регистр, отсекаем нахер лишние символы
      # и выделяем верхним регистром мягкие согласные
      text.mb_chars.strip.downcase.gsub /[^a-z\s]/, ""
    end
  end
end