json.array!(@notes) do |note|
  json.extract! note, :id, :folio, :client_id
  json.url note_url(note, format: :json)
end
