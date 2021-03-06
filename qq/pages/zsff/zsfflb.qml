<view class="container">
	<diy-navbar bgColor="gradual-green" isBack="{{true}}">
		<view slot="backText"> 返回 </view>
		<view slot="content"> 知识付费分类 </view>
	</diy-navbar>
	<view class="diygw-col-24 search-clz">
		<view class="diygw-search">
			<view class="flex1 flex padding-xs solid radius">
				<text style="color: #555 !important" class="diygwui diy-icon-search"></text>
				<input class="flex1" name="search" type="" value="{{search}}" data-key="search" bindchange="changeValue" placeholder="请输入关键字" />
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex2-clz">
		<view class="flex diygw-col-24">
			<view class="diygw-tag margin-xs radius bg-orange">
				<text> 全部类型 </text>
			</view>
			<view class="diygw-tag margin-xs radius">
				<text> 课程 </text>
			</view>
			<view class="diygw-tag margin-xs radius">
				<text> 课程 </text>
			</view>
			<view class="diygw-tag margin-xs radius">
				<text> 听书 </text>
			</view>
			<view class="diygw-tag margin-xs radius">
				<text> 电子书 </text>
			</view>
		</view>
		<view class="flex diygw-col-0">
			<view class="diygw-avatar md white radius">
				<text class="diygwui diy-icon-filter"></text>
			</view>
		</view>
	</view>
	<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex-clz">
		<view class="flex diygw-col-24">
			<view class="diygw-tag margin-xs radius bg-orange">
				<text> 最热 </text>
			</view>
			<view class="diygw-tag margin-xs radius">
				<text> 最新 </text>
			</view>
		</view>
	</view>
	<scroll-view scroll-x scroll-with-animation class="flex scroll-view diygw-col-24 justify-between items-center flex-nowrap flex1-clz">
		<view class="flex flex-nowrap">
			<view class="flex diygw-col-24">
				<view class="diygw-tag margin-xs radius bg-orange">
					<text> 全部分类 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 心理学 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 自然科学 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 年度日更 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 金融学可以水平滑动 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 家庭亲子 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 经济学 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 全部分类 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 全部分类 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 全部分类 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 全部分类 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 全部分类 </text>
				</view>
			</view>
		</view>
	</scroll-view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex10-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg" class="response diygw-col-8 image5-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex13-clz">
			<view class="diygw-col-24 text10-clz diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text15-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="flex flex-wrap diygw-col-24 justify-between items-center flex16-clz">
				<view class="diygw-form-item diygw-form-item-small diygw-form-item-small diygw-col-0 noborder">
					<view class="input" style="overflow-x: initial">
						<text qq:for="{{[1,2,3,4,5]}}" qq:for-item="item" qq:for-index="index" class="diygwui diy-icon-starfill pointer" data-index="{{item}}" style="color:{{item<=rate?'rgba(245, 78, 6, 1)':'#eee'}};font-size:12px" catchtap="changeRate">
							<input type="hidden" hidden name="rate" value="{{rate}}" />
						</text>
					</view>
				</view>
				<view class="diygw-col-0 text17-clz diygw-text-sm"> 30000人加入学习 </view>
			</view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex6-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg" class="response diygw-col-8 image3-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex9-clz">
			<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text9-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="diygw-col-24 text11-clz diygw-text-sm"> 30000人加入学习 </view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex4-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/ccc6d2c0-d4a9-4776-b4dd-6af5e50274ff/wbt-3jpg" class="response diygw-col-8 image2-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex7-clz">
			<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text6-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="diygw-col-24 text8-clz diygw-text-sm"> 30000人加入学习 </view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex12-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg" class="response diygw-col-8 image6-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex15-clz">
			<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text18-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="diygw-col-24 text20-clz diygw-text-sm"> 30000人加入学习 </view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex8-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg" class="response diygw-col-8 image4-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex11-clz">
			<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text12-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="diygw-col-24 text14-clz diygw-text-sm"> 30000人加入学习 </view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex14-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/ccc6d2c0-d4a9-4776-b4dd-6af5e50274ff/wbt-3jpg" class="response diygw-col-8 image7-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex17-clz">
			<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text21-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="diygw-col-24 text23-clz diygw-text-sm"> 30000人加入学习 </view>
		</view>
	</view>
	<view class="flex flex-wrap diygw-col-24 justify-center items-center flex3-clz">
		<image src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg" class="response diygw-col-8 image1-clz" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex5-clz">
			<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
			<view class="diygw-col-24 text-clz diygw-text-sm"> 热门榜排行第1名 </view>
			<view class="diygw-col-24 text2-clz diygw-text-sm"> 30000人加入学习 </view>
		</view>
	</view>
	<view class="clearfix"></view>
</view>
