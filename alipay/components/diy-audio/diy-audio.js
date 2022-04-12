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
    music: {
      type: String,
      value: ''
    },
    poster: {
      type: String,
      value: ''
    },
    author: {
      type: String,
      value: ''
    },
    autoplay: {
      type: Boolean,
      value: false
    },
    loop: {
      type: Boolean,
      value: false
    },
    sizeClz: {
      type: String,
      value: "",
    },
    avatarType: {
      type: String,
      value: "icon",
    },
    icon: {
      type: String,
      value: "diy-icon-musicfill",
    },
    text: {
      type: String,
      value: "♪",
    },
    backgroundClazz: {
      type: String,
      value: "",
    },
    avatarBackgroundColor: {
      type: String,
      value: "",
    },
    avatarColor: {
      type: String,
      value: "",
    },
    isTitle: {
      type: [Boolean, String],
      value: false,
    },
    isTitle: {
      type: [Boolean, String],
      value: false,
    },
    isSilder: {
      type: [Boolean, String],
      value: false,
    },
    activeColor: {
      type: String,
      value: "",
    }
  },
  data: {
    _audioContext:null,
    h5Play: true,
    isPlaying: false,
    isPlayEnd: false,
    position: 0,
    currentTime: 0,
    currentTimeStr:'',
    durationStr:'',
    duration: 100
  },
   didMount() {
        this.createAudio()
  },
  /**
   * 组件的方法列表
   */
  methods: {
    changeTime(){
        let  innerAudioContext = this.data._audioContext
        let currentTime = innerAudioContext.currentTime || 0;
        let duration = innerAudioContext.duration || 100;
        let position = parseInt((currentTime / duration * 100).toString())
        let currentTimeStr = this.getMinuteTime(currentTime)
        let durationStr = this.getMinuteTime(duration)
        this.setData({currentTimeStr,durationStr,currentTime,duration,position})
    },
    createAudio() {
      let thiz = this
      //创建前景音频上下文对象。
      this.innerAudioContext = my.createInnerAudioContext(); 
      //来源于优酷的音频码，用于直接播放。支持音频格式：AAC，MP3。如果开发者不传入音频码，控制台不会报错，但无音频播放。
      this.innerAudioContext.src = thiz.props.music; 
      //是否自动开始播放，默认为 false。
      this.innerAudioContext.autoplay = thiz.props.autoplay;
      //是否循环播放，默认为 false。
      this.innerAudioContext.loop = thiz.props.loop;
      //是否遵循系统静音开关，当此参数为 false 时，即使用户打开了静音开关，也能继续发出声音，默认值为 true (注意：此参数仅 iOS 支持)。
      this.innerAudioContext.obeyMuteSwitch = false;
      this.innerAudioContext.onPlay(() => {
        console.log("innerAudioContext onPlay 开始播放")
        my.alert({ content:'innerAudioContext 前景音频播放事件 onPlay' });
      });
      this.innerAudioContext.onPause(() => {
        console.log("innerAudioContext onPause 暂停播放")
        my.alert({ content:'innerAudioContext 前景音频暂停事件 onPause' });
      });
      this.innerAudioContext.onStop(() => {
        console.log("innerAudioContext onStop 停止播放")
        my.alert({ content:'innerAudioContext 前景音频停止事件 onStop' });
      });
      this.innerAudioContext.onSeeking(() => {
        console.log("innerAudioContext onSeeking 跳转播放事件")
        my.alert({ content:'innerAudioContext 前景音频跳转播放事件 onSeeking' });
      });
      this.innerAudioContext.onError(() => {
        console.log("innerAudioContext onError 前景音频播放错误事件")
        my.alert({ content:'innerAudioContext 前景音频播放错误事件 onError' });
      });
      //监听音频因为系统占用而被中断的开始事件
      my.onAudioInterruptionBegin(() => {
        console.log('innerAudioContext onAudioInterruptionBegin');
      });
      //监听音频被中断的结束事件
      my.onAudioInterruptionEnd(() => {
        console.log('innerAudioContext onAudioInterruptionEnd');
      });
      this.setData({
        _audioContext:this.innerAudioContext
      })


      this.innerAudioContext.onPlay(() => {
        let isPlaying = true
        this.setData({isPlaying})
        console.log('开始播放');
      });
      this.innerAudioContext.onTimeUpdate((e) => {
          this.changeTime()
      });
      this.innerAudioContext.onSeeked((e) => {
           this.changeTime()
      });
      this.innerAudioContext.onEnded(() => {
        let currentTime = 0;
        let isPlayEnd = true;
        let isPlaying = this.props.loop;
        this.setData({isPlaying,currentTime,isPlayEnd})
      });
      this.innerAudioContext.onError((res) => {
        let isPlaying = false;
        this.setData({isPlaying})
      });
      return this.innerAudioContext;
    },
    onchange(e) {
        let currentTime =  e.detail.value / 100 * this.data.duration
        this.data._audioContext.seek(currentTime);
    },
    play() {
      if (this.data.isPlaying) {
        this.pause();
        return;
      }
      let isPlaying = true;
      this.data._audioContext.play();
      let isPlayEnd = false;
      this.setData({isPlaying,isPlayEnd})
    },
    pause() {
      this.data._audioContext.pause();
      let  isPlaying = false;
      this.setData({isPlaying})
    },
    stop() {
      this.data._audioContext.stop();
      let  isPlaying = false;
      this.setData({isPlaying})
    },
    // 秒转换分秒
    getMinuteTime(result) {
      const h =
          Math.floor(result / 3600) < 10 ?
              '0' + Math.floor(result / 3600) :
              Math.floor(result / 3600);
      const m =
          Math.floor((result / 60) % 60) < 10 ?
              '0' + Math.floor((result / 60) % 60) :
              Math.floor((result / 60) % 60);
      const s =
          Math.floor(result % 60) < 10 ?
              '0' + Math.floor(result % 60) :
              Math.floor(result % 60);
      if (h === '00') return m + ':' + s;
      return h + ':' + m + ':' + s;
    }
  }
})