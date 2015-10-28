json.array!(@introexams) do |introexam|
  json.extract! introexam, :id, :title, :message, :picture1, :testimonial1, :picture2, :testimonial2, :picture3, :testimonial3
  json.url introexam_url(introexam, format: :json)
end
