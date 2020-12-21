import fs from 'fs';
import path from 'path';

export class File {
    filename: any;
    name: any;
    ext: any;
    isFile: any;
    size: any;
    createTime: any;
    updataTime: any;
    constructor (filename: any, name: string, ext: string, isFile: boolean, size: number, createTime: Date, updataTime: Date) {
        this.filename = filename;
        this.name = name;
        this.ext = ext;
        this.isFile = isFile;
        this.size = size;
        this.createTime = createTime;
        this.updataTime = updataTime
    }

    // 获取文件内容
    async getContent (isBuffer = false) {
        if (this.isFile) {
            if (isBuffer) {
                return await fs.promises.readFile(this.filename);
            } else {
                return await fs.promises.readFile(this.filename, 'utf-8');
            }
        } else {
            return null;
        }
    }

    // 获取文件夹下的文件所有属性，返回一个数组
    async getChildren () {
        if (this.isFile) {
            return [];
        }
        let children: any = await fs.promises.readdir(this.filename);
        children = children.map((name: any) => {
            const result = path.resolve(this.filename, name);
            return File.getFile(result);
        });
        return Promise.all(children);
    }
    
    // 获取文件属性
    static async getFile(filename: any) {
        const stat = await fs.promises.stat(filename);
        const name = path.basename(filename);
        const ext = path.extname(filename);
        const isFile = stat.isFile();
        const size = stat.size;
        const createTime = stat.birthtime;
        const updataTime = stat.mtime;

        return new File(filename, name, ext, isFile, size, createTime, updataTime);
    }

    async readDir (dirname: any) {
        const file = await File.getFile(dirname);
        return await file.getChildren();
    }
}