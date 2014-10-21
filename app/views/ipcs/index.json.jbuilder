json.array!(@ipcs) do |ipc|
  json.extract! ipc, :id, :LoopBack4_IP, :LoopBack6_IP, :Public_Segment4_ip, :Public_Segment6_ip
  json.url ipc_url(ipc, format: :json)
end
