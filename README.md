# Habit Distiller Skills (个人习惯协助提炼与守护系统 - 轻量版)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Design-KISS%20%26%20Zero%20Pollution-blue" alt="KISS">
  <img src="https://img.shields.io/badge/Branch-Lightweight-orange" alt="Lightweight">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Vercel%20Skills-Compatible-black.svg" alt="Skills CLI">
</p>

[**English Document (英文文档)**](README_en.md) | [🚩 **全功能主线 (Main Branch)**](https://github.com/Ikaros-521/habit-distiller-skills/tree/main)

---

## 🇨🇳 项目概览

**Habit Distiller Skills (轻量版)** 是一个面向现代 AI IDE / Agent（如 Trae、Claude Code、Cursor、Antigravity 等）的**个人协同习惯协助提炼与守护技能**。

### 🎯 核心目标：协助提炼，不做过度设计

很多时候，开发者在用 AI 编程时总会反复纠偏（“修 Bug 要连带排查”、“简单问题别讲废话”、“文档要中英双语”）。本 Skill 的唯一目标就是：**敏锐捕捉您期望模型怎么干活的偏好，协助您提炼成清晰的协同契约，安全存在本地，并在后续所有对话中老老实实照做。**

- **零代码库污染**：习惯严格保存在本机 `~/.habit-distiller/habits.md`，绝不修改任何项目的代码文件；
- **人本确认**：每次提炼生成草案，必须由您确认后才落盘；
- **随时后悔**：写前自动备份 `.bak`，随时支持一键撤回；
- **极简有效**：全量习惯维持在 5~8 条黄金法则，拒绝规则膨胀。

---

### 💬 自然语言极简指令集

```markdown
- 💡 提炼习惯：对话纠偏后直接说“提炼刚才的习惯”，AI 整理出清晰准则提请您确认
- 📋 查看清单：发送“查看我的习惯”或“查看习惯清单”
- 🗑️ 定向删除：发送“删除习惯 [名称]”
- ⏪ 一键撤回：发送“撤回刚才的习惯更新”
- ❓ 反问澄清：要求模糊或纯负向（“不要X”）时，AI 主动反问具体期望
```

---

### 🚀 安装与跨机管理

#### 全局安装 (所有支持 skills 的 AI IDE 通用)
```bash
# 安装轻量版
npx skills add Ikaros-521/habit-distiller-skills#lightweight -g

# 安装主线全功能版
npx skills add Ikaros-521/habit-distiller-skills -g
```

#### 本地跨机脚本管理
```powershell
# Windows PowerShell
.\scripts\sync.ps1 -Target install-global                    # 本地全局挂载
.\scripts\sync.ps1 -Target export -FilePath .\my-habits.md   # 导出习惯文件
.\scripts\sync.ps1 -Target import -FilePath .\my-habits.md   # 导入习惯文件
```

```bash
# macOS / Linux Bash
./scripts/sync.sh install-global                             # 本地全局挂载
./scripts/sync.sh export ./my-habits.md                      # 导出习惯文件
./scripts/sync.sh import ./my-habits.md                      # 导入习惯文件
```

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
