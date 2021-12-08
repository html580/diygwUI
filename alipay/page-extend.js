

/**
 *
 * Page扩展函数
 *
 * @param {*} Page 原生Page
 */
import Tools from './common/Tools.js'
import HttpService from './common/HttpService.js'
import Session from './common/Session.js'

const pageExtend = Page => {
    return object => {
        // 导出原生Page传入的object参数中的生命周期函数
        // 由于命名冲突，所以将onLoad生命周期函数命名成了onLoaded
        const { onLoad } = object
        // // 公共的onLoad生命周期函数
        object.onLoad = function (options) {
            var thiz = this;
            if (options) {
                this.setData({
                    globalOptions: options
                })
            }
            // 执行onLoaded生命周期函数
            if (typeof onLoad === 'function') {javascript:;
                onLoad.call(thiz, options)
            }
        }

        object.$tools = new Tools()
        object.$request = new HttpService()
        object.$session = Session

        object.navigateTo = function (e) {
            let thiz = this
            let { id, type } = e.currentTarget.dataset
            if (type == 'openmodal') {
                this.setData({
                    [id]: 'show'
                })
            } else if (type == 'closemodal') {
                this.setData({
                    [id]: ''
                })
            } else if (type == 'page' || type == 'inner' || type == 'href') {
                this.$tools.navigateTo(e.currentTarget.dataset.url, e.currentTarget.dataset);
            } else if (type == 'submit') {
                this.showToast('将执行表单提交动作')
            } else if (type == 'reset') {
                this.showToast('将执行表单重置动作')
            } else if (type == 'tip') {
                this.showToast(e.currentTarget.dataset.tip)
            } else if (type == 'confirm') {
                my.showModal({
                    title: '提示',
                    content: e.currentTarget.dataset.tip,
                    showCancel: !1,
                });
            } else if (type == 'daohang') {
                my.openLocation({
                    latitude: Number(e.currentTarget.dataset.lat),
                    longitude: Number(e.currentTarget.dataset.lng),
                    address: e.currentTarget.dataset.address,
                    success: function () {
                        console.log('success');
                    }
                });
            } else if (type == 'phone') {
                this.$tools.makePhoneCall(e)
            } else if(type=='previewImage'||type=='preview'){
        		my.previewImage({
        			current: this.$tools.renderImage(e.currentTarget.dataset.img), // 当前显示图片的http链接
        			urls: [this.$tools.renderImage(e.currentTarget.dataset.img)] // 需要预览的图片http链接列表
        		})
        	} else if(type=='previewImage'){
                my.previewImage({
                    current: this.$tools.renderImage(e.currentTarget.dataset.img), // 当前显示图片的http链接
                    urls: [this.$tools.renderImage(e.currentTarget.dataset.img)] // 需要预览的图片http链接列表
                })
            } else if (type == 'copy') {

                my.setClipboardData({
                    data: e.currentTarget.dataset.copy,
                    showToast: false,
                    success: function () {
                        thiz.showToast(e.currentTarget.dataset.tip || '复制成功', 'none')
                    }
                });
            } else if (type == 'xcx') {
                my.navigateToMiniProgram({
                    appId: e.currentTarget.dataset.appid,
                    path: e.currentTarget.dataset.path,
                    success(res) {
                        // 打开成功
                    }
                })
            } else {
                thiz.showToast(type + '类型有待实现')
            }
        }

        object.showModal = function (message) {
            my.showModal({
                title: '友情提示',
                content: message,
                showCancel: !1,
            });
        }

        object.showToast = function (title, icon) {
            my.showToast({
                title: title,
                icon: icon ? icon : 'none'
            })
        }

        object.getPickerChildren = function (data, chindInex1, childIndex2) {
            if (chindInex1 != null && data[chindInex1] && data[chindInex1].children && data[chindInex1].children) {
                let children = data[chindInex1].children
                //只判断一级
                if (childIndex2 == null) {
                    if (children != null && children.length > 0) {
                        return children.map(item => item.label)
                    } else {
                        return []
                    }
                } else {
                    //判断二级
                    //有可能并设置下级结点
                    if (children[childIndex2] == null) {
                        return []
                    }
                    let children2 = children[childIndex2].children
                    if (children2 != null && children2.length > 0) {
                        return children2.map(item => item.text)
                    } else {
                        return []
                    }
                }
            } else {
                return []
            }
        }

        object.uploadImage = function (thiz, field) {
            my.chooseImage({
                sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
                sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
                success: function (res) {
                    // 返回选定照片的本地文件路径列表，tempFilePath可以作为img标签的src属性显示图片
                    let tempFilePaths = res.tempFilePaths;
                    for (let i = 0; i < tempFilePaths.length; i++) {
                        my.uploadFile({
                            url: thiz.$request.setUrl('/data/file.html'), //仅为示例，非真实的接口地址
                            filePath: tempFilePaths[0],
                            name: 'file',
                            success: function (res) {
                                let data = thiz.$tools.fromJson(res.data);
                                let url = thiz.$tools.renderImage(data.url);
                                let files = thiz[field + 'Datas'].concat(url);
                                thiz.setData({
                                    [field + 'Datas']: files,
                                    [field]: (files || []).join(',').replace(/^[]/, ''),
                                });
                            },
                        });
                    }
                },
            });
        }

        return Page(object)
    }
}

// 获取原生Page
const originalPage = Page
// 定义一个新的Page，将原生Page传入Page扩展函数
Page = pageExtend(originalPage)