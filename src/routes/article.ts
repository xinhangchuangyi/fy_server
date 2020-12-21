import express from "express";
import path from "path";
const article = express.Router();

article.get('/:id', async (req, res) => {
    const id = req.params.id
    res.sendFile(path.join(__dirname, `../../public/md/article/${id}.md`));
})

export = article;