const password = process.env.DB_PASSWORD;

let connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: password,
  database: "DB_name",
  // multipleStatements:true // mutliplt query can be inserted using ';', not safe
});

connection.connect();

let id=1;
connection.query(`SELECT * FROM tables WHERE tables.id=${connection.escape(id)}`, function(error, results) { // escape for preventing from sql injection
  if(error) throw error;
  console.log('DATA : ', results);
});

module.exports = connection;

//  "Client does not support authentication protocol requested by server; consider upgrading MySQL client"

// -> terminal : alter user 'root'@'localhost' identified with mysql_native_password by 'password';

// mysql -u root -p < server/schema.sql

// SELECT Host.User FROM mysql.user;

// CREATE USER 'user1'@'%' IDENTIFIED BY '111';    users1 any domain with password 111

// GRANT ALL PRIVILEGS ON database.tables TO 'user1'@'%';
