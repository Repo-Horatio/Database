const password = process.env.DB_PASSWORD;

let connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: password,
  database: "DB_name",
});

connection.connect();

connection.query('SELECT * FROM tables', function(error, results) {
  if(error) throw error;
  console.log('DATA : ', results);
});

module.exports = connection;

 "Client does not support authentication protocol requested by server; consider upgrading MySQL client"

-> terminal : alter user 'root'@'localhost' identified with mysql_native_password by 'password';

mysql -u root -p < server/schema.sql
