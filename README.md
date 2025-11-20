# Portfolio 网站发布说明

## 🚀 快速部署方法（推荐）

### ⚡ 方法一：使用 Netlify CLI（最快，推荐）

**Windows 用户：** 双击运行 `deploy.bat` 文件即可！

**手动操作：**

1. 安装 Node.js（如果还没有）：[https://nodejs.org/](https://nodejs.org/)

2. 安装 Netlify CLI：
```bash
npm install -g netlify-cli
```

3. 进入文件夹并部署：
```bash
cd netlify-publish
netlify login      # 首次使用需要登录
netlify deploy --prod
```

**优点：** ⚡ 上传速度快、支持断点续传、可查看进度

---

### ⚡⚡ 方法二：Git 连接（最快，推荐用于长期项目）

1. 在 GitHub 创建新仓库
2. 上传代码到 GitHub
3. 在 Netlify 连接 Git 仓库
4. 自动部署，以后更新只需 push 代码

**详细步骤请查看：** `快速部署指南.md`

**优点：** ⚡⚡ 最快、自动部署、版本控制

---

### 方法三：Netlify Drop（简单但较慢）

1. 访问 [https://app.netlify.com/drop](https://app.netlify.com/drop)
2. 将整个 `netlify-publish` 文件夹拖放到页面上
3. 等待上传和部署完成

**提示：** 如果文件很多，可以先压缩为 ZIP 文件再上传，会稍快一些

## 文件夹结构

```
netlify-publish/
├── index.html          # 主页面文件（Netlify 默认入口）
├── images/            # 图片资源文件夹
├── videos/            # 视频资源文件夹
└── README.md          # 本说明文件
```

## 注意事项

1. **确保所有资源文件都在正确位置**
   - `images/` 文件夹包含所有封面图片
   - `videos/` 文件夹包含所有视频文件

2. **文件大小限制**
   - Netlify 免费版单个文件最大 100MB
   - 如果视频文件过大，建议压缩或使用外部存储（如 Cloudinary）

3. **自定义域名**
   - 部署后可以在 Netlify 设置中添加自定义域名
   - 支持 HTTPS 自动配置

4. **更新网站**
   - 只需重新拖放更新后的文件夹到 Netlify Drop
   - 或使用 Git 连接进行自动部署

## 功能特性

- ✅ 响应式设计，支持移动端
- ✅ 瀑布流布局，自适应项目尺寸
- ✅ 视频预览和播放功能
- ✅ 项目分类筛选
- ✅ 全屏模式支持

## 技术支持

如有问题，请检查：
- 浏览器控制台是否有错误
- 所有资源文件路径是否正确
- 视频文件格式是否支持（推荐 MP4）

