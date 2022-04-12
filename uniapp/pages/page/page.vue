<template>
	<view class="container">
		<image src="https://libs.diygw.com/upload/2022/02/12/632902b7-999c-41f1-8d0a-ab4afb50f85e/grzx-qg-hpng" class="response diygw-col-24 image-clz" mode="widthFix"></image>
		<view class="flex diygw-autoview diygw-col-24 flex-direction-column diygw-absolute autoview-clz">
			<view class="diygw-absolute autoview_0">
				<view class="flex diygw-col-24 avatar-clz">
					<view class="diygw-avatar radius bg-none">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://libs.diygw.com/upload/2021/11/24/bbfb37c1-cd30-406c-ac3f-6edbcf15a4d4/favicon.png"></image>
					</view>
				</view>
			</view>
			<view class="diygw-absolute autoview_1">
				<view class="diygw-col-24 text-clz diygw-text-md"> DIY可视化 </view>
			</view>
			<view class="diygw-absolute autoview_2">
				<view class="diygw-col-24 text1-clz diygw-text-sm"> 欢迎访问DIY可视化设计 </view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 flex-direction-column diygw-absolute flex-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-grid col-2">
					<view @tap="navigateTo" data-type="copy" data-copy="https://ext.dcloud.net.cn/plugin?id=6740" data-tip="复制成功，前往浏览器打开" class="diygw-grid-item">
						<view class="diygw-grid-inner grid-item-clz diygw-card diygw-shadow">
							<view class="diygw-grid-icon diygw-avatar radius grid-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bq.png"></image>
							</view>
							<view class="diygw-grid-title"> 插件市场地址 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="copy" data-copy="https://gitee.com/html580/diygw-ui" data-tip="复制成功，前往浏览器打开" class="diygw-grid-item">
						<view class="diygw-grid-inner grid-item-clz diygw-card diygw-shadow">
							<view class="diygw-grid-icon diygw-avatar radius grid-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_sz1.png"></image>
							</view>
							<view class="diygw-grid-title"> Gitee地址 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex diygw-col-24 list-clz">
				<view class="diygw-list small not-remark">
					<view @tap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
						</view>
						<view class="content">
							<view class="title"> 壁纸主页 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
						</view>
						<view class="content">
							<view class="title"> 商城主页 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
						</view>
						<view class="content">
							<view class="title"> 组件库演示 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex diygw-col-24 list1-clz">
				<view class="diygw-list small not-remark">
					<view @tap="navigateTo" data-type="page" data-url="/pages/zsff/zsff" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_bf.png"></image>
						</view>
						<view class="content">
							<view class="title"> 知识付费首页 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="page" data-url="/pages/zsff/zsfflb" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_bq.png"></image>
						</view>
						<view class="content">
							<view class="title"> 知识付费列表 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="page" data-url="/pages/zsff/zsffsq" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_xx.png"></image>
						</view>
						<view class="content">
							<view class="title"> 知识付费朋友圈 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="page" data-url="/pages/zsff/zsffgl" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_aq.png"></image>
						</view>
						<view class="content">
							<view class="title"> 知识付费个人中心 </view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex diygw-col-24 list2-clz">
				<view class="diygw-list small not-remark">
					<view @tap="navigateTo" data-type="openmodal" data-id="modal" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
						</view>
						<view class="content">
							<view class="title"> 勾搭合作 </view>
						</view>
					</view>
					<view @tap="navigateTo" data-type="href" data-url="https://www.diygw.com" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
						<view class="diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon4/icon4_bq.png"></image>
						</view>
						<view class="content">
							<view class="title"> 在线设计 </view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="diygw-modal basic" :class="modal" style="z-index: 1000000">
			<view class="diygw-dialog basis-lg">
				<view class="justify-end diygw-bar">
					<view class="content"> 勾搭合作 </view>
					<view class="action" data-type="closemodal" data-id="modal" @tap="navigateTo">
						<i class="diy-icon-close"></i>
					</view>
				</view>
				<view>
					<view class="flex diygw-dialog-content diygw-col-24 flex-direction-column items-center modal-clz">
						<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="" class="diygw-col-0 diygw-text-lg"> 微信号：15913132246 </view>
						<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="" class="diygw-col-0 diygw-text-sm"> 点击复制微信号 </view>
					</view>
				</view>
				<view class="flex justify-end">
					<button data-type="closemodal" @tap="navigateTo" data-id="modal" class="diygw-btn green flex1 margin-xs">关闭</button>
					<button @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-btn gradual-red flex1 margin-xs">点击复制</button>
				</view>
			</view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				modal: ''
			};
		},
		onShareAppMessage: function () {},
		onLoad(option) {
			this.setCurrentPage(this);
			if (option) {
				this.setData({
					globalOption: option
				});
			}
		},
		mounted() {
			this.init();
		},
		methods: {
			async init() {}
		}
	};
</script>

<style lang="scss" scoped>
	.image-clz {
		border-bottom-left-radius: 0px;
		overflow: hidden;
		border-top-left-radius: 0px;
		border-top-right-radius: 0px;
		border-bottom-right-radius: 0px;
	}
	.autoview-clz {
		z-index: 1;
		top: 0px;
		left: 0px;
		width: auto !important;
		right: 0px;
		height: 185px;
	}

	.autoview_0 {
		left: 56rpx;
		top: 174rpx;
		width: 108rpx;
		height: 108rpx;
		z-index: 0;
	}
	.autoview_1 {
		left: 180rpx;
		top: 176rpx;
		width: 514rpx;
		height: 40rpx;
		z-index: 0;
	}
	.autoview_2 {
		left: 184rpx;
		top: 240rpx;
		width: 506rpx;
		height: 40rpx;
		z-index: 0;
	}
	.avatar-clz {
		background-color: rgba(255, 255, 255, 1);
		padding-top: 2px;
		border-bottom-left-radius: 50%;
		overflow: hidden;
		padding-left: 2px;
		padding-bottom: 2px;
		border-top-left-radius: 50%;
		border-top-right-radius: 50%;
		border-bottom-right-radius: 50%;
		padding-right: 2px;
	}
	.text-clz {
		color: rgba(255, 255, 255, 1);
	}
	.text1-clz {
		color: rgba(255, 255, 255, 1);
	}
	.flex-clz {
		margin-left: 10px;
		z-index: 1000;
		top: 180px;
		left: 0px;
		width: calc(100% - 10px - 10px) !important;
		margin-top: 0px;
		right: 0px;
		margin-bottom: 0px;
		margin-right: 10px;
	}
	.grid-item-clz {
		margin: 5px;
		padding: 5px;
		background-color: rgba(255, 255, 255, 1);
	}
	.grid-icon-clz {
		width: 50px;
		height: 50px;
		font-size: calc(50px - 10px) !important;
	}
	.list-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.list1-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.list2-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.modal-clz {
		z-index: 1000000;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
	.container {
		padding-bottom: 80px;
	}
</style>
