def nyc_pigeon_organizer(data)
  org_hash = {}
  data.each do |attribute, value_hash|
    value_hash.each do |options, options_array|
      options_array.each do |name|
          org_hash[name] ||= {}
          org_hash[name][attribute] ||= []
          org_hash[name][attribute] << options.to_s
      end
    end
  end
  org_hash
end
