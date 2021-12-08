<template>
	<view class="container">
		<view class="flex diygw-col-0 right-bottom floatbar-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar" style="background-image: url(static/img/grid1.png)"> </view>
						<view class="diygw-grid-title"> 无背景 </view>
					</view>
				</button>
				<button class="diygw-action" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar" style="background-image: url(static/img/grid1.png)"> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 right-top floatbar1-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-gradual-green" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-settings" style=""> </view>
						<view class="diygw-grid-title"> 带背景 </view>
					</view>
				</button>
				<button class="diygw-action bg-gradual-pink" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-skin" style=""> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 right-top floatbar2-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-red" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar" style="background-image: url(static/img/grid1.png)"> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-cyan" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar" style="background-image: url(static/img/grid1.png)"> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 left-bottom floatbar3-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-red" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar" style="background-image: url(static/img/grid1.png)"> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-cyan" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar" style="background-image: url(static/img/grid1.png)"> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 left-top floatbar4-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action radius-top bg-red" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-settings" style=""> </view>
						<view class="diygw-grid-title"> 带背景 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-cyan" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-skin" style=""> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-0 left-top floatbar5-clz">
			<view class="diygw-grid diygw-actions">
				<button class="diygw-action bg-red" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-settings" style=""> </view>
						<view class="diygw-grid-title"> 带背景 </view>
					</view>
				</button>
				<button class="diygw-action radius-bottom bg-cyan" style="">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar diy-icon-skin" style=""> </view>
						<view class="diygw-grid-title"> 菜单一 </view>
					</view>
				</button>
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
				floatbar: ``,
				floatbar1: ``,
				floatbar2: ``,
				floatbar3: ``,
				floatbar4: ``,
				floatbar5: ``
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

<style lang="scss">
	.floatbar-clz {
		bottom: 50px;
		width: 40px;
		right: 10px;
	}
	.floatbar1-clz {
		top: 200px;
		width: 40px;
		right: 10px;
	}
	.floatbar2-clz {
		top: 50px;
		width: 40px;
		right: 10px;
	}
	.floatbar3-clz {
		left: 10px;
		bottom: 50px;
		width: 40px;
	}
	.floatbar4-clz {
		top: 50px;
		left: 10px;
		width: 40px;
	}
	.floatbar5-clz {
		top: 200px;
		left: 10px;
		width: 40px;
	}
</style>
