# 晋中釜源节能科技-官网

### 链接地址：http://www.jzfyjnkj.com/

### 运用技术：
- express
- TypeScript

### 项目目录：
```js
server
├─ .git
├─ .gitignore
├─ dist  // 打包结果
├─ package-lock.json
├─ package.json
├─ public  // 静态资源
├─ README.md
├─ src
│  ├─ routes  // 接口路由
│  │  ├─ article.ts
│  │  ├─ cancact.ts
│  │  ├─ images.ts
│  │  ├─ init.ts
│  │  ├─ introduce.ts
│  │  ├─ newsList.ts
│  │  ├─ product.ts
│  │  ├─ recruit.ts
│  │  ├─ system.ts
│  │  └─ upload.ts
│  ├─ server.ts  // 启动文件
│  ├─ services  // 业务逻辑
│  │  ├─ errorCheck.ts
│  │  ├─ readFile.ts
│  │  └─ readImg.ts
│  └─ spider  // 连接数据库
│     ├─ cancact.ts
│     ├─ introduce.ts
│     ├─ newsList.ts
│     ├─ power.ts  // 连接权限信息（未上传）
│     ├─ product.ts
│     ├─ recruit.ts
│     └─ system.ts
└─ tsconfig.json

```