const mysql = require('mysql2/promise');
const config = require('./power');

// 查询所有文章
export const query = async () => {
    const connection = await mysql.createConnection(config);

    let sql = "SELECT * FROM recruit;";
    const [results] = await connection.execute(sql);
    connection.end();
    return results;
}
