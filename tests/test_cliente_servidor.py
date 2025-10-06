import unittest
import psycopg2

class TestClientesTable(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        # Conexión a la base de datos PostgreSQL
        cls.conn = psycopg2.connect(
            dbname="test_db",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        cls.cursor = cls.conn.cursor()

    @classmethod
    def tearDownClass(cls):
        # Cerrar conexión
        cls.cursor.close()
        cls.conn.close()

    def test_table_exists(self):
        self.cursor.execute("""
            SELECT EXISTS (
                SELECT FROM information_schema.tables 
                WHERE table_name = 'clientes'
            );
        """)
        exists = self.cursor.fetchone()[0]
        self.assertTrue(exists, "La tabla 'clientes' debe existir")

    def test_column_nombre_type(self):
        self.cursor.execute("""
            SELECT data_type 
            FROM information_schema.columns 
            WHERE table_name = 'clientes' AND column_name = 'nombre';
        """)
        data_type = self.cursor.fetchone()[0]
        self.assertEqual(data_type, 'character varying', "La columna 'nombre' debe ser VARCHAR")

    def test_column_saldo_type(self):
        self.cursor.execute("""
            SELECT data_type 
            FROM information_schema.columns 
            WHERE table_name = 'clientes' AND column_name = 'saldo';
        """)
        data_type = self.cursor.fetchone()[0]
        self.assertEqual(data_type, 'numeric', "La columna 'saldo' debe ser NUMERIC")

    def test_active_clients_count(self):
        self.cursor.execute("""
            SELECT COUNT(*) FROM clientes WHERE activo = TRUE;
        """)
        count = self.cursor.fetchone()[0]
        self.assertGreaterEqual(count, 2, "Debe haber al menos dos clientes activos")

if __name__ == '__main__':
    unittest.main()
