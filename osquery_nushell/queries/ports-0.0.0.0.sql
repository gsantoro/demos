SELECT DISTINCT p.name,
  p.pid,
  l.port,
  l.address
FROM processes p
  JOIN listening_ports l ON p.pid = l.pid
WHERE l.address = '0.0.0.0'
ORDER BY l.port;