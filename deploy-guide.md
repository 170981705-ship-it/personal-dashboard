# 部署到 Cloudflare Pages（推荐）

## 方案一：使用 Cloudflare Pages（推荐，免费，国内访问快）

### 步骤 1：创建 GitHub 仓库
1. 访问 https://github.com/new
2. 仓库名：`personal-dashboard`
3. 选择 "Public" 或 "Private"
4. 点击 "Create repository"

### 步骤 2：上传代码
```bash
cd C:\Users\STONE\WorkBuddy\2026-08-03-16-45-21\dashboard
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/你的用户名/personal-dashboard.git
git push -u origin main
```

### 步骤 3：连接到 Cloudflare Pages
1. 访问 https://dash.cloudflare.com
2. 登录账号（没有就注册一个）
3. 左侧菜单 → "Pages"
4. 点击 "Create a project"
5. 选择 "Connect to Git"
6. 授权 GitHub 访问
7. 选择 `personal-dashboard` 仓库
8. 点击 "Begin setup"
9. 构建设置：
   - Framework preset: None
   - Build command: （留空）
   - Build output directory: /
10. 点击 "Save and Deploy"

### 步骤 4：获取永久链接
部署完成后，Cloudflare 会给你一个 `.pages.dev` 的域名，例如：
`https://personal-dashboard-xxx.pages.dev`

这个链接永久有效，不需要你的电脑开机。

---

## 方案二：使用 Vercel（更简单，但国内访问可能较慢）

### 步骤 1：同上，创建 GitHub 仓库并上传代码

### 步骤 2：连接到 Vercel
1. 访问 https://vercel.com/new
2. 登录账号（可以用 GitHub 账号直接登录）
3. 导入 `personal-dashboard` 仓库
4. 直接点击 "Deploy"

Vercel 会自动检测这是静态网站并部署。

---

## 方案三：使用腾讯云 COS（国内访问最快，需要备案域名）

如果你有自己的域名且已备案，这是国内访问速度最快的方案。

1. 登录腾讯云控制台
2. 创建 COS 存储桶
3. 开启静态网站托管
4. 上传文件
5. 绑定自定义域名

---

## 推荐选择

- **不想折腾**：用 Vercel，一键部署
- **国内访问快**：用 Cloudflare Pages
- **有备案域名**：用腾讯云 COS
