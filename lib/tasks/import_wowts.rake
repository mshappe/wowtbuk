require 'csv'
namespace :import_wowts do
  def unfuck_string(str)
    return if str.blank?
    str.gsub(/\u2028/, "\n").split("\n").collect { |l| next if l.blank?; "<div>#{l}</div>" }.compact.join
  end

  desc 'Import a CSV of wowts'
  task :import, [:filename] => :environment do |_task, args|
    filename = args[:filename]
    CSV.foreach filename, headers: true, return_headers: false do |line|
      next if line.first.blank?
      roman,pron,part,defi,ety,first,refs = *line
      next if roman.last.blank?
      wowt = Wowt.find_by(roman: roman.last)
      wowt ||= Wowt.new(roman: roman.last)
  
      wowt.roman = roman.last
      wowt.pronunciation = pron.last
      wowt.part_of_speech = part.last
      wowt.definition = unfuck_string defi.last
      wowt.etymology = unfuck_string ety.last
      wowt.first_appeared = unfuck_string first.last
      wowt.save!
    end

  end
end
