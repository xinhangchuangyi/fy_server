const mysql = require('mysql2/promise');
const config = require('./power');

// 查询所有产品
export const queryAll = async () => {
    const connection = await mysql.createConnection(config);

    let sql = "SELECT * FROM product_list WHERE ishome = 1;";
    const [results] = await connection.execute(sql);
    connection.end();
    return results;
}

// 按类型查询产品
export const query = async (type: any) => {
    const connection = await mysql.createConnection(config);

    let sql = "SELECT * FROM `product_list` WHERE type = ?;";
    const [results] = await connection.execute(sql, [type]);
    connection.end();
    return results;
}

// 查询产品种类
export const queryType = async () => {
    const connection = await mysql.createConnection(config);

    let sql = "SELECT DISTINCT type FROM product_list WHERE type IS NOT NULL;";
    const [results] = await connection.execute(sql);
    connection.end();
    return results;
}
