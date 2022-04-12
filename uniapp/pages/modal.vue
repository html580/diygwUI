<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<button @tap="navigateTo" data-type="openmodal" data-id="modal" class="diygw-btn green flex1 margin-xs">打开模态框</button>
		</view>
		<view class="diygw-modal basic" :class="modal" style="z-index: 1000">
			<view class="diygw-dialog basis-lg">
				<view class="justify-end diygw-bar">
					<view class="content"> 模态框 </view>
					<view class="action" data-type="closemodal" data-id="modal" @tap="navigateTo">
						<i class="diy-icon-close"></i>
					</view>
				</view>
				<view>
					<view class="flex diygw-dialog-content diygw-col-24 modal-clz">
						<view class="flex diygw-col-24">
							<view class="diygw-grid col-3">
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="/static/grid1.png"></image>
										</view>
										<view class="diygw-grid-title"> 菜单一 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="/static/grid2.png"></image>
										</view>
										<view class="diygw-grid-title"> 菜单二 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="/static/grid3.png"></image>
										</view>
										<view class="diygw-grid-title"> 菜单三 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="/static/grid4.png"></image>
										</view>
										<view class="diygw-grid-title"> 菜单四 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="/static/grid5.png"></image>
										</view>
										<view class="diygw-grid-title"> 菜单五 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="/static/grid6.png"></image>
										</view>
										<view class="diygw-grid-title"> 菜单六 </view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view class="flex justify-end">
					<button data-type="closemodal" @tap="navigateTo" data-id="modal" class="diygw-btn green radius flex1 margin-xs">关闭</button>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<button @tap="navigateTo" data-type="openmodal" data-id="modal2" class="diygw-btn green flex1 margin-xs">左边抽屉</button>
		</view>
		<view class="diygw-modal bottom-modal" :class="modal1" style="z-index: 1000">
			<view class="diygw-dialog">
				<view class="justify-end diygw-bar">
					<view class="content"> 底部抽屉 </view>
					<view class="action" data-type="closemodal" data-id="modal1" @tap="navigateTo">
						<i class="diy-icon-close"></i>
					</view>
				</view>
				<view>
					<view class="flex diygw-dialog-content diygw-col-24 modal1-clz">
						<view class="flex diygw-col-24">
							<view class="diygw-list">
								<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid1.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单一 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
								<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid2.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单二 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
								<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid3.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单三 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view class="flex justify-end">
					<button data-type="closemodal" @tap="navigateTo" data-id="modal1" class="diygw-btn green flex1 margin-xs">关闭</button>
				</view>
			</view>
		</view>
		<view class="diygw-modal drawer-left-modal" :class="modal2" style="z-index: 1000">
			<view class="diygw-dialog basis-lg">
				<view class="justify-end diygw-bar">
					<view class="content"> 左边抽屉 </view>
					<view class="action" data-type="closemodal" data-id="modal2" @tap="navigateTo">
						<i class="diy-icon-close"></i>
					</view>
				</view>
				<view>
					<view class="flex diygw-dialog-content diygw-col-24 modal2-clz">
						<view class="flex diygw-col-24">
							<view class="diygw-list">
								<view style="" class="diygw-item col-100 row solid-bottom list1-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid1.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单一 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
								<view style="" class="diygw-item col-100 row solid-bottom list1-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid2.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单二 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
								<view style="" class="diygw-item col-100 row solid-bottom list1-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid3.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单三 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view class="flex justify-end">
					<button data-type="closemodal" @tap="navigateTo" data-id="modal2" class="diygw-btn green flex1 margin-xs">关闭</button>
				</view>
			</view>
		</view>
		<view class="diygw-modal drawer-right-modal" :class="modal3" style="z-index: 1000">
			<view class="diygw-dialog basis-lg">
				<view class="justify-end diygw-bar">
					<view class="content"> 右边抽屉 </view>
					<view class="action" data-type="closemodal" data-id="modal3" @tap="navigateTo">
						<i class="diy-icon-close"></i>
					</view>
				</view>
				<view>
					<view class="flex diygw-dialog-content diygw-col-24 modal3-clz">
						<view class="flex diygw-col-24">
							<view class="diygw-list">
								<view style="" class="diygw-item col-100 row solid-bottom list2-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid1.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单一 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
								<view style="" class="diygw-item col-100 row solid-bottom list2-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid2.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单二 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
								<view style="" class="diygw-item col-100 row solid-bottom list2-item-clz">
									<view class="diygw-avatar">
										<image mode="aspectFit" class="diygw-avatar-img" src="/static/grid3.png"></image>
									</view>
									<view class="content">
										<view class="title"> 菜单三 </view>
										<view class="text-sm remark"> 说明文字 </view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view class="flex justify-end">
					<button data-type="closemodal" @tap="navigateTo" data-id="modal3" class="diygw-btn green flex1 margin-xs">关闭</button>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<button @tap="navigateTo" data-type="openmodal" data-id="modal3" class="diygw-btn green flex1 margin-xs">右边抽屉</button>
		</view>
		<view class="flex diygw-col-24">
			<button @tap="navigateTo" data-type="openmodal" data-id="modal1" class="diygw-btn green flex1 margin-xs">底部抽屉</button>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				modal: '',
				modal1: '',
				modal2: '',
				modal3: ''
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
	.modal-clz {
		z-index: 1000;
	}
	.modal1-clz {
		z-index: 1000;
	}
	.modal2-clz {
		z-index: 1000;
	}
	.modal3-clz {
		z-index: 1000;
	}
</style>
