import express from "express";
import { apiHandle } from '../services/errorCheck';
import { queryAll, query, queryType } from '../spider/product';
const product = express.Router();

product.get('/', async (req, res) => {
    const host = req.headers.host;
    const data = await queryAll();
    data.map((val: any) => {
        val.src = 'http://' + host + val.src;
    })
    res.send(apiHandle(req, data));
})

product.get('/form', async (req, res) => {
    const type = req.query.type;
    const host = req.headers.host;
    const data = await query(type);
    data.map((val: any) => {
        val.src = 'http://' + host + val.src;
    })
    res.send(apiHandle(req, data));
})

product.get('/type', async (req, res) => {
    const data = await queryType();
    res.send(apiHandle(req, data));
})

export = product;