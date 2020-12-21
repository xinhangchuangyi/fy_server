import express from "express";
import { apiHandle } from '../services/errorCheck';
import { query, queryAll } from '../spider/newsList';
const cancact = express.Router();

cancact.get('/:type', async (req, res) => {
    const {type} = req.params;
    const data = await query(type);
    res.send(apiHandle(req, data));
})

cancact.get('/', async (req, res) => {
    const data = await queryAll();
    res.send(apiHandle(req, data));
})

export = cancact;