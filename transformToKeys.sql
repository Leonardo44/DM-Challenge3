-- Change combustible
SELECT * FROM Combustible

UPDATE FP SET COMBUSTIBLE = CAST(C.id AS nvarchar) FROM FactParking FP
INNER JOIN Combustible C ON FP.COMBUSTIBLE = C.value

-- Change tipo placa
SELECT * FROM TipoPlaca

UPDATE FP SET TIPO_PLACA = CAST(T.id AS nvarchar) FROM FactParking FP
INNER JOIN TipoPlaca T ON FP.TIPO_PLACA = T.value

-- Change color
SELECT * FROM Color

UPDATE FP SET COLORES = CAST(C.id AS nvarchar) FROM FactParking FP
INNER JOIN Color C ON FP.COLORES = C.value
UPDATE FP SET COLORES = '0' FROM FactParking FP
WHERE COLORES = NULL OR COLORES = ''

-- Change clase
SELECT * FROM Clase

UPDATE FP SET CLASE = CAST(C.id AS nvarchar) FROM FactParking FP
INNER JOIN Clase C ON FP.CLASE = C.value

-- Change pertenencia
SELECT * FROM Pertenencia

UPDATE FP SET PERTENENCIA = CAST(P.id AS nvarchar) FROM FactParking FP
INNER JOIN Pertenencia P ON FP.PERTENENCIA = P.vslue

-- Change Marca
SELECT * FROM Marca

UPDATE FP SET MARCA = CAST(M.id AS nvarchar) FROM FactParking FP
INNER JOIN Marca M ON FP.MARCA = M.value

-- Change Aduana
SELECT * FROM Aduana

UPDATE FP SET ADUANA = CAST(A.id AS nvarchar) FROM FactParking FP
INNER JOIN Aduana A ON FP.ADUANA = A.value

-- Change Condicion_ingreso
SELECT * FROM Condicion

UPDATE FP SET CONDICION_INGRESO = CAST(C.id AS nvarchar) FROM FactParking FP
INNER JOIN Condicion C ON FP.CONDICION_INGRESO = C.value

-- Change departamento
SELECT * FROM Departamento

UPDATE FP SET PROPIETARIO_DEPARTAMENTO = CAST(D.id AS nvarchar) FROM FactParking FP
INNER JOIN Departamento D ON FP.PROPIETARIO_DEPARTAMENTO = D.value