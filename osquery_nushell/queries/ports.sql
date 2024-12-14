SELECT 
  DISTINCT p.name,
  p.pid,
  l.port,
  l.address
FROM processes p
JOIN listening_ports l ON p.pid = l.pid
WHERE l.address != '::1'
  AND l.address != '127.0.0.1'
ORDER BY l.port;