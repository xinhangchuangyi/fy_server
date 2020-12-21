import express from "express";
import { apiHandle } from '../services/errorCheck';
import { query } from '../spider/system';
const cancact = express.Router();

cancact.get('/', async (req, res) => {
    const data = await query();
    res.send(apiHandle(req, data));
})

export = cancact;