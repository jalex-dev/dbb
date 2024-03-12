SELECT numero_cuenta,saldo FROM cuentas 
WHERE fecha_creacion BETWEEN CURRENT_DATE - INTERVAL '2 months' AND CURRENT_DATE;