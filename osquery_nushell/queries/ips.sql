SELECT 
  interface,
  address,
  mask,
  type
FROM interface_addresses
WHERE interface != 'lo';