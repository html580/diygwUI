const app = getApp();
Component({
  /**
   * 组件的一些选项
   */
  options: {
    addGlobalClass: true,
    multipleSlots: true
  },
  /**
   * 组件的对外属性
   */
  properties: {
    // 是否显示左侧的图片
		leftImg: {
			type: String,
			value: ''
		},
		// 是否显示左侧的图标
		leftIcon: {
			type: String,
			value: ''
		},
		// 是否自动播放
		autoplay: {
			type: Boolean,
			value: true
		},
		// 文字颜色，各图标也会使用文字颜色
		color: {
			type: String,
			value: ''
		},
		// 背景颜色
		bgColor: {
			type: String,
			value: ''
		},
		// 是否显示
		show: {
			type: Boolean,
			value: true
		},
		vertical: {
			type: Boolean,
			value: false
		},
		// 滚动一个周期的时间长，单位ms
		duration: {
			type: [Number, String],
			value: 500
		},
		interval: {
			type: [Number, String],
			value: 2000
		},
		// 字体大小，单位rpx
		fontSize: {
			type: [Number, String],
			value: 28
		},
		// 水平滚动时的滚动速度，即每秒滚动多少rpx，这有利于控制文字无论多少时，都能有一个恒定的速度
		speed: {
			type: [Number, String],
			value: 160
		},
		// 播放状态，play-播放，paused-暂停
		playState: {
			type: String,
			value: 'play'
		},
		// 通知的边距
		padding: {
			type: [Number, String],
			value: '18rpx 24rpx'
		}
  },

  didMount() {
      if(!this.props.vertical){
        let thiz = this
				let query = [],
					boxWidth = 0,
					textWidth = 0;
				let textQuery = new Promise((resolve, reject) => {
					my.createSelectorQuery()
						.in(thiz)
						.select(`#diy-notice-content`)
						.boundingClientRect()
						.exec(ret => {
              thiz.setData({
                textWidth : ret[0].width
              })
							resolve();
						});
				});
        query.push(textQuery);
        let speed = thiz.props.speed||160
				Promise.all(query).then(() => {
					// 根据t=s/v(时间=路程/速度)，这里为何不需要加上#diy-notice-box的宽度，因为中设置了.diy-notice-content样式中设置了padding-left: 100%
          // 恰巧计算出来的结果中已经包含了#diy-notice-box的宽度
          thiz.setData({
            animationDuration:`${thiz.data.textWidth / speed * 2 }s`,
            animationPlayState:'paused'
          })
					setTimeout(() => {
						if(thiz.props.playState===undefined||(thiz.props.playState == 'play' && thiz.props.autoplay)){
              thiz.setData({
                animationPlayState:'running'
              })
            }
					}, 10);
				});
			}
    }
})