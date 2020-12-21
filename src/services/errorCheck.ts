export const getErr = function (err = '服务器出错', errCode = 500) {
    return {
        code: errCode,
        msg: err
    }
}
export const getResult = function (data: any) {
    return {
        code: 200,
        msg: '成功',
        data
    }
}

/**
 * 
 * @param {*} ctx koa返回的对象
 * @param {*} result 返回的结果
 * @param {*} err 错误消息
 * @param {*} cb 回调
 */
export const apiHandle = function (ctx: { body: any }, result: any, err: string = '错误请求', cb: (arg0: any) => any = () => {}) {
    if (!result) {
        ctx.body = getErr(err, 401)
    } else {
        cb && cb(result)
        return ctx.body = getResult(result)
    }
}