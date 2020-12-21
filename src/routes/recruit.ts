import express from "express";
import { apiHandle } from '../services/errorCheck';
import { query } from '../spider/recruit';
const recruit = express.Router();

recruit.get('/', async (req, res) => {
    const data = await query();
    res.send(apiHandle(req, data));
})

export = recruit;