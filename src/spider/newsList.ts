const mysql = require('mysql2/promise');
const config = require('./power');

// 查询新闻
export const query = async (type: string) => {
    const connection = await mysql.createConnection(config);

    let sql = "SELECT * FROM news_list WHERE type = ?;";
    const [results] = await connection.execute(sql, [type]);
    connection.end();
    return results;
}

// 查询所有新闻
export const queryAll = async () => {
    const connection = await mysql.createConnection(config);

    let sql = "SELECT * FROM news_list;";
    const [results] = await connection.execute(sql);
    connection.end();
    return results;
}


