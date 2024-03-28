**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

A template for building OpenWrt with GitHub Actions

## 免责声明
本固件为作者自用，不保证适用于所有相同或相似设备，如有因刷入从本仓库下载的固件或者根据本仓库代码生成的固件导致设备损坏的，作者不承担任何责任。

## 适用设备
- 软路由 x86_64
- 小米路由器 3（xiaomi_miwifi-r3）
- 小米路由器 3G（xiaomi_mi-router-3g）
- ~~斐讯 K2（phicomm_psg1218a）~~

## 自用固件定制内容
- 修改管理IP为 192.168.88.1（密码仍为 password）
- 修改默认主题为 Argon（*jerrykuku/luci-theme-argon*）
- 开启 IPv6 支持
- 关闭 automount 和 autosamba
- 添加自用插件：
   - luci-app-accesscontrol  #访问时间控制
   - luci-app-autoreboot  #支持计划重启      *---x86_64版本未包含*
   - luci-app-ddns   #动态域名 DNS（集成阿里DDNS客户端）      *---x86_64版本未包含*
   - luci-app-filetransfer  #文件传输（可web安装ipk包）
   - luci-app-firewall   #添加防火墙
   - luci-app-nlbwmon   #网络带宽监视器
   - luci-app-pushbot  #全能推送(钉钉推送,企业微信推送,Bark,PushPlus推送)
   - luci-app-udpxy  #udpxy做组播服务器
   - luci-app-upnp   #通用即插即用UPnP（端口自动转发）
   - luci-app-wol   #WOL网络唤醒
   - luci-app-wrtbwmon  #实时流量监测
   - luci-app-zerotier  #ZeroTier内网穿透
- 没有其他修改了，使用 LEDE 源代码

## Usage

- Click the [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) button to create a new repository.
- Generate `.config` files using [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) source code. ( You can change it through environment variables in the workflow file. )
- Push `.config` file to the GitHub repository.
- Select `Build OpenWrt` on the Actions page.
- Click the `Run workflow` button.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

## Tips

- It may take a long time to create a `.config` file and build the OpenWrt firmware. Thus, before create repository to build your own firmware, you may check out if others have already built it which meet your needs by simply [search `Actions-Openwrt` in GitHub](https://github.com/search?q=Actions-openwrt).
- Add some meta info of your built firmware (such as firmware architecture and installed packages) to your repository introduction, this will save others' time.

## Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
