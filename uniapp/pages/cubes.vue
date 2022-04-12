<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<view class="diygw-cubes cubes-cubes">
				<view class="diygw-cube-item cubes-0">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-1">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/06/eed7cc87-c73b-4ba1-b3f0-bcfd9df20778/qqtp20220106174752.png"></image>
				</view>
				<view class="diygw-cube-item cubes-2">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/b4b85646-efa9-4d2e-a5d5-47caabee31d2/6.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-3">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/ca59b05b-1140-4775-bf75-6d1c9b63d03f/22.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-4">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-5">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/da3a98f0-b7f0-4987-88ee-afee971a283a/3.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-6">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/9647ce70-b051-4d56-a04f-4a925296925e/2.jpg"></image>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-cubes cubes-cubes">
				<view class="diygw-cube-item cubes-0">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-1">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/ca59b05b-1140-4775-bf75-6d1c9b63d03f/22.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-2">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-3">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/da3a98f0-b7f0-4987-88ee-afee971a283a/3.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-4">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/f05d32dc-441c-48c1-9632-f4bc37d98ea8/5.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-5">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/ca59b05b-1140-4775-bf75-6d1c9b63d03f/22.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-6">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg"></image>
				</view>
				<view class="diygw-cube-item cubes-7">
					<image mode="aspectFill" class="diygw-cube-img cubes-img" src="https://libs.diygw.com/upload/2022/01/02/5065ea2f-366f-4e92-b3af-983911b519f0/1.jpg"></image>
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
			return {};
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
	.cubes-cubes {
		width: 100vw !important;
		height: 100vw !important;
	}
	.cubes-0 {
		width: 50%;
		height: 50%;
		top: 0%;
		left: 0%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-1 {
		width: 50%;
		height: 50%;
		top: 50%;
		left: 50%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-2 {
		width: 50%;
		height: 25%;
		top: 50%;
		left: 0%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-3 {
		width: 25%;
		height: 25%;
		top: 75%;
		left: 0%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-4 {
		width: 25%;
		height: 25%;
		top: 75%;
		left: 25%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-5 {
		width: 50%;
		height: 25%;
		top: 0%;
		left: 50%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-6 {
		width: 50%;
		height: 25%;
		top: 25%;
		left: 50%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-cubes {
		width: 100vw !important;
		height: 100vw !important;
	}
	.cubes-0 {
		width: 50%;
		height: 50%;
		top: 0%;
		left: 0%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-1 {
		width: 25%;
		height: 25%;
		top: 75%;
		left: 0%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-2 {
		width: 25%;
		height: 25%;
		top: 75%;
		left: 25%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-3 {
		width: 50%;
		height: 25%;
		top: 0%;
		left: 50%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-4 {
		width: 75%;
		height: 25%;
		top: 50%;
		left: 0%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-5 {
		width: 25%;
		height: 75%;
		top: 25%;
		left: 75%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-6 {
		width: 25%;
		height: 25%;
		top: 25%;
		left: 50%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.cubes-7 {
		width: 25%;
		height: 25%;
		top: 75%;
		left: 50%;
		padding: 8px;
	}
	.cubes-img {
		border-radius: 8px;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
