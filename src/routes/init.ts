import express from "express";
// import { getErr } from '../services/errorCheck';
// import { apiLogger } from '../services/logger';
// import { getCookies, setCookies } from '../services/cookies';
const api = express.Router();

api.use('/',
    async (req: any, res: any, next: any) => {
        // 设置请求头
        res.header("Access-Control-Allow-Origin", "*");  // 接受哪个域名的请求
        res.header("Access-Control-Allow-Methods", "DELETE,PUT,POST,GET,OPTIONS");  // 允许哪种请求方式
        res.header("Access-Control-Allow-Credentials", true);  // 允许发送 cookie
        res.header("Access-Control-Allow-Headers", "X-Requested-With");
        res.header('Access-Control-Allow-Headers', 'Content-Type');
        res.header('Access-Control-Max-Age', 86400);  // 一天内不再询问
        res.header('content-type:application/json');
        next();
    },
);

export = api;