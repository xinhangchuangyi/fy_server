const path = require('path');
const { File } = require('./readFile');

// 获取一个文件夹下文件内容的字节数之和
export const readImg = async function (src: string) {
    const readFilename = await path.resolve(__dirname, src);
    const file = await File.getFile(readFilename);
    const imgArr = await file.readDir(readFilename);
    const newArr: any[] = [];

    imgArr.forEach((val: any) => {
        newArr.push(val.name);
    })

    // 按 ascll 码排个序
    newArr.sort((a, b) => stringAscllSum(a) - stringAscllSum(b));

    return newArr;
}

// 求一个字符串的 ascll 总和
function stringAscllSum (str: string) {
    const arr = str.split('');
    let num = 0;
    arr.forEach(val => {
        num += val.charCodeAt(0);
    })
    return num;
}