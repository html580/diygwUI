<view class="container">
	<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex-clz">
		<view class="diygw-col-19">
			<view class="diygw-search">
				<view class="flex1 flex padding-xs solid radius">
					<text style="color: #555 !important" class="diygwui diy-icon-search"></text>
					<input class="flex1" name="search" type="" value="{{search}}" data-key="search" bindchange="changeValue" placeholder="请输入关键字" />
				</view>
			</view>
		</view>
		<view class="flex diygw-col-0">
			<view class="diygw-avatar xs radius bg-none">
				<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon15/icon15_yj.png"></image>
				<view class="diygw-tag badge avatar-badge-0 red"> 1 </view>
			</view>
		</view>
		<view class="flex diygw-col-0">
			<view class="diygw-tag margin-xs radius">
				<image class="diygw-tag-img" src="https://lib.diygw.com/static/icon/icon8/icon8_qd.png"></image>
				<text> 签到 </text>
			</view>
		</view>
	</view>
	<diy-navbar bgColor="gradual-green" isBack="{{true}}">
		<view slot="backText"> 返回 </view>
		<view slot="content"> 知识付费 </view>
	</diy-navbar>
	<view class="flex diygw-col-24">
		<diy-noticebar class="flex1 diy-notice-bar" color="#07c160" bgColor="#fff" leftIcon="diygwui diy-icon-notification">
			<view slot="content">
				<text class="diy-notice-item"> DIY官网做最好的拖拽式可视化设计工具 </text>
			</view>
		</diy-noticebar>
	</view>
	<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex1-clz">
		<view class="flex diygw-col-20 flex-direction-column">
			<scroll-view scroll-x scroll-into-view="{{'scroll-' + tabsIndex}}" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
				<view id="{{'scroll-' + index}}" class="diygw-tab-item {{index==tabsIndex?'cur text-black':''}}" qq:for="{{tabsDatas}}" qq:for-item="item" qq:for-index="index" data-key="index" data-index="{{index}}" catchtap="changeTabs"> {{item.text}} </view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-0">
			<view class="diygw-avatar md white radius">
				<text class="diygwui diy-icon-sort"></text>
			</view>
		</view>
	</view>
	<view class="diygw-modal basic {{modal}}" style="z-index: 1000">
		<view class="diygw-dialog basis-lg">
			<view class="justify-end diygw-bar">
				<view class="content"> 窗口标题 </view>
				<view class="action" data-type="closemodal" data-id="modal" catchtap="navigateTo">
					<i class="diygwui diy-icon-close"></i>
				</view>
			</view>
			<view>
				<view class="flex diygw-dialog-content diygw-col-24 modal-clz">
					<view class="flex diygw-col-24">
						<button catchtap="navigateTo" data-type="closemodal" data-id="modal" class="diygw-btn green flex1 margin-xs">按钮</button>
					</view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24 swiper-clz">
		<swiper class="swiper swiper-indicator_rect" indicator-color="rgba(51, 51, 51, 0.39)" indicator-active-color="#fff" indicator-dots="true" autoplay interval="3000" circular="true" style="height: 150px">
			<swiper-item class="diygw-swiper-item">
				<view class="diygw-swiper-item-wrap">
					<image src="/static/pic1.jpg" class="diygw-swiper-image"></image>
				</view>
			</swiper-item>
			<swiper-item class="diygw-swiper-item">
				<view class="diygw-swiper-item-wrap">
					<image src="/static/pic2.jpg" class="diygw-swiper-image"></image>
				</view>
			</swiper-item>
			<swiper-item class="diygw-swiper-item">
				<view class="diygw-swiper-item-wrap">
					<image src="/static/pic3.jpg" class="diygw-swiper-image"></image>
				</view>
			</swiper-item>
		</swiper>
	</view>
	<view class="flex diygw-col-24">
		<view class="diygw-grid col-5">
			<view catchtap="navigateTo" data-type="openmodal" data-id="modal" class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
					</view>
					<view class="diygw-grid-title"> 热门 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_aq.png"></image>
					</view>
					<view class="diygw-grid-title"> 法律 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_gw.png"></image>
					</view>
					<view class="diygw-grid-title"> 营销 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
					</view>
					<view class="diygw-grid-title"> 文学 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_pxb.png"></image>
					</view>
					<view class="diygw-grid-title"> 排行 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_dz.png"></image>
					</view>
					<view class="diygw-grid-title"> 教育 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_xsqg.png"></image>
					</view>
					<view class="diygw-grid-title"> 商场 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_ys.png"></image>
					</view>
					<view class="diygw-grid-title"> 安全 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_dj.png"></image>
					</view>
					<view class="diygw-grid-title"> 提升 </view>
				</view>
			</view>
			<view class="diygw-grid-item">
				<view class="diygw-grid-inner grid-item-clz">
					<view class="diygw-grid-icon diygw-avatar radius">
						<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_kf.png"></image>
					</view>
					<view class="diygw-grid-title"> 客服 </view>
				</view>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24 line-clz">
		<view class="diygw-pzx" style="border-bottom: 1px solid #eee"></view>
	</view>
	<view class="diygw-title flex diygw-col-24">
		<view class="title font-normal"> 好知识免费领 </view>
	</view>
	<view class="flex diygw-col-24 flex-wrap flex2-clz">
		<view class="flex diygw-col-12 flex-direction-column items-center flex-wrap flex3-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg" class="response diygw-col-24 image2-clz" mode="widthFix"></image>
			<view class="diygw-col-24 text2-clz diygw-text-md"> DIY视频教程 </view>
			<view class="flex diygw-col-24 justify-center">
				<view class="diygw-tag margin-xs md radius line-orange">
					<text> 免费领取 </text>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-12 flex-direction-column items-center flex-wrap flex4-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/ccc6d2c0-d4a9-4776-b4dd-6af5e50274ff/wbt-3jpg" class="response diygw-col-24 image1-clz" mode="widthFix"></image>
			<view class="diygw-col-24 text1-clz diygw-text-md"> DIY视频教程 </view>
			<view class="flex diygw-col-24 justify-center">
				<view class="diygw-tag margin-xs md radius line-orange">
					<text> 免费领取 </text>
				</view>
			</view>
		</view>
	</view>
	<view class="diygw-title flex diygw-col-24">
		<view class="title font-normal"> 榜单 </view>
	</view>
	<scroll-view scroll-x scroll-with-animation class="flex scroll-view diygw-col-24 flex-nowrap flex6-clz">
		<view class="flex flex-nowrap">
			<view class="flex flex-wrap diygw-col-21 flex-direction-column flex5-clz">
				<view class="diygw-title flex gradual-orange diygw-col-24">
					<view class="title font-normal"> 热门课程Top50 </view>
					<view class="more">
						<text class="diygwui diy-icon-right"></text>
					</view>
				</view>
				<view class="flex diygw-col-24">
					<view class="diygw-list">
						<view style="" class="diygw-item col-100 row arrow solid-bottom list-item-clz">
							<view class="diygw-avatar list-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg"></image>
							</view>
							<view class="content">
								<view class="title"> 设计新人【实战DIY可视化】 </view>
								<view class="text-sm remark"> 教大家如何快速用DIY可视化做项目 </view>
							</view>
						</view>
						<view style="" class="diygw-item col-100 row arrow solid-bottom list-item-clz">
							<view class="diygw-avatar list-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg"></image>
							</view>
							<view class="content">
								<view class="title"> 设计新人【实战DIY可视化】 </view>
								<view class="text-sm remark"> 教大家如何快速用DIY可视化做项目 </view>
							</view>
						</view>
						<view style="" class="diygw-item col-100 row arrow solid-bottom list-item-clz">
							<view class="diygw-avatar list-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg"></image>
							</view>
							<view class="content">
								<view class="title"> 设计新人【实战DIY可视化】 </view>
								<view class="text-sm remark"> 教大家如何快速用DIY可视化做项目 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
			<view class="flex flex-wrap diygw-col-21 flex-direction-column flex7-clz">
				<view class="diygw-title flex gradual-red diygw-col-24">
					<view class="title font-normal"> 热门课程Top50 </view>
					<view class="more">
						<text class="diygwui diy-icon-right"></text>
					</view>
				</view>
				<view class="flex diygw-col-24">
					<view class="diygw-list">
						<view style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
							<view class="diygw-avatar list2-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg"></image>
							</view>
							<view class="content">
								<view class="title"> 设计新人【实战DIY可视化】 </view>
								<view class="text-sm remark"> 教大家如何快速用DIY可视化做项目 </view>
							</view>
						</view>
						<view style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
							<view class="diygw-avatar list2-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg"></image>
							</view>
							<view class="content">
								<view class="title"> 设计新人【实战DIY可视化】 </view>
								<view class="text-sm remark"> 教大家如何快速用DIY可视化做项目 </view>
							</view>
						</view>
						<view style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
							<view class="diygw-avatar list2-icon-clz">
								<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg"></image>
							</view>
							<view class="content">
								<view class="title"> 设计新人【实战DIY可视化】 </view>
								<view class="text-sm remark"> 教大家如何快速用DIY可视化做项目 </view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
	</scroll-view>
	<view class="flex diygw-col-24">
		<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
	</view>
	<view class="flex flex-wrap diygw-col-24 flex-direction-column flex8-clz">
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view style="" class="diygw-item col-100 row solid-bottom solid-small-bottom list3-item-clz">
					<view class="diygw-avatar">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
					</view>
					<view class="content">
						<view class="title"> DIY可视化 </view>
						<view class="text-sm remark"> 3天前 DIY可视化公司 </view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view style="" class="diygw-item col-100 flex-direction-row-reverse solid-bottom list5-item-clz">
					<view class="diygw-avatar list5-icon-clz">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/22/e71a0c81-3923-46e4-a744-2af215a25781/miniprogramcode_177png"></image>
					</view>
					<view class="content">
						<view class="title"> DIY可视化开源推荐 </view>
						<view class="text-sm remark"> DIY官网可视化工具做好的可视化拖拽开发工具，无须编程、零代码基础、所见即所得设计工具，轻松制作微信小程序、支付宝小程序、Vue3、H5、WebApp、UNIAPP、单页动画 </view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24 justify-between">
			<view class="diygw-tag margin-xs md radius">
				<text class="icon diygwui diy-icon-share"></text>
				<text> 分享 </text>
			</view>
			<view class="diygw-tag margin-xs md radius">
				<text class="icon diygwui diy-icon-comment"></text>
				<text> 100 </text>
			</view>
			<view class="diygw-tag margin-xs md radius">
				<text class="icon diygwui diy-icon-appreciate"></text>
				<text> 1000 </text>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 flex-direction-column flex9-clz">
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view style="" class="diygw-item col-100 row solid-bottom solid-small-bottom list4-item-clz">
					<view class="diygw-avatar">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
					</view>
					<view class="content">
						<view class="title"> DIY可视化 </view>
						<view class="text-sm remark"> 3天前 DIY可视化公司 </view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view style="" class="diygw-item col-100 flex-direction-row-reverse solid-bottom list7-item-clz">
					<view class="diygw-avatar list7-icon-clz">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/22/e71a0c81-3923-46e4-a744-2af215a25781/miniprogramcode_177png"></image>
					</view>
					<view class="content">
						<view class="title"> DIY可视化开源推荐 </view>
						<view class="text-sm remark"> DIY官网可视化工具做好的可视化拖拽开发工具，无须编程、零代码基础、所见即所得设计工具，轻松制作微信小程序、支付宝小程序、Vue3、H5、WebApp、UNIAPP、单页动画 </view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24 justify-between">
			<view class="diygw-tag margin-xs md radius">
				<text class="icon diygwui diy-icon-share"></text>
				<text> 分享 </text>
			</view>
			<view class="diygw-tag margin-xs md radius">
				<text class="icon diygwui diy-icon-comment"></text>
				<text> 100 </text>
			</view>
			<view class="diygw-tag margin-xs md radius">
				<text class="icon diygwui diy-icon-appreciate"></text>
				<text> 1000 </text>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 5px solid #eee"></view>
		</view>
	</view>
	<view class="flex diygw-col-24 diygw-bottom">
		<view class="diygw-grid diygw-actions">
			<button catchtap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-action">
				<view class="diygw-grid-inner">
					<view class="diygw-grid-icon diygw-avatar">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_bf.png"></image>
					</view>
					<view class="diygw-grid-title"> 首页 </view>
				</view>
			</button>
			<button catchtap="navigateTo" data-type="page" data-url="/pages/zsff/zsffsq" class="diygw-action">
				<view class="diygw-grid-inner">
					<view class="diygw-grid-icon diygw-avatar">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_xx.png"></image>
						<view class="diygw-tag badge bar-badge-1 gradual-red"> 10 </view>
					</view>
					<view class="diygw-grid-title"> 社圈 </view>
				</view>
			</button>
			<button catchtap="navigateTo" data-type="page" data-url="/pages/zsff/zsfflb" class="diygw-action">
				<view class="diygw-grid-inner">
					<view class="diygw-grid-icon diygw-avatar">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_ds.png"></image>
						<view class="diygw-tag badge empty red"></view>
					</view>
					<view class="diygw-grid-title"> 分类 </view>
				</view>
			</button>
			<button class="diygw-action">
				<view class="diygw-grid-inner">
					<view class="diygw-grid-icon diygw-avatar">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon4/icon4_yhsz.png"></image>
					</view>
					<view class="diygw-grid-title"> 我的 </view>
				</view>
			</button>
		</view>
	</view>
	<view class="clearfix"></view>
</view>
