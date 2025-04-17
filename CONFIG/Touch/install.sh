echo ""
sleep 0.5
echo "DEVICE AND HARDWARE INFO"
sleep 0.5
echo "DEVICE $(getprop ro.product.brand)"
sleep 0.5
echo "MODEL $(getprop ro.product.model)"
sleep 0.5
echo "CPU $(getprop ro.hardware)"
sleep 0.5
echo "GPU $(getprop ro.hardware.egl)"
sleep 0.5
echo "SDK $(getprop ro.build.version.sdk)"
echo ""
echo "█▓▒▒░░░INSTALING░░░▒▒▓█"
echo ""
sleep 0.5
echo ""
echo "
░▀█▀░█▀█░█░█░█▀▀░█░█
░░█░░█░█░█░█░█░░░█▀█
░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀"
sleep 0.5
echo "
░░░░░█▀▀░█▀█░█▄█░▀█▀░█▀█░█▀▀
░░░░░█░█░█▀█░█░█░░█░░█░█░█░█
░░░░░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀▀"
sleep 3

#V20
(
settings put global touch.pressure.scale 0.1
settings put global touch.size.scale 0.1
settings put global transition_animation_scale 0
settings put global window_animation_scale 0
settings put global settings_enable_monitor_phantom_procs false
settings put system pointer_speed 5
settings put global surface_flinger.set_idle_timer_ms 0
settings put global surface_flinger.set_touch_timer_ms 0
settings put global surface_flinger.set_display_power_timer_ms 0
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.disable_backpressure 1
setprop debug.sf.multithreaded_present true
settings put global surface_flinger.use_context_priority 1
) > /dev/null 2>&1

(
#V19
settings put system touch_sampling_rate 120
settings put system touch_size_calibration geometric
settings put system touch_stats {"min":1,"max":1}
settings put system touchX_debuggable 1
settings put system touch_boost_threshold 5
settings put system touch_feature_gamemode_enable 1
settings put system touch_input_sensitivity 1
settings put system touch_rate_control 0
settings put system touch_response_rate 1
settings put system touch_sampling_rate_override 1
settings put system touch_sensitivity 1_2
settings put system touch_slop 8
settings put system touch_switch_set_touchscreen 14005
settings put system touch_tap_sensitivity 1
settings put system touchpanel_game_switch_enable 1
) > /dev/null 2>&1

(
#V18
settings put global surface_flinger.start_graphics_allocator_service true
settings put global surface_flinger.running_without_sync_framework true
setprop debug.sf.luma_sampling 0
setprop debug.sf.disable_client_composition_cache 1
setprop debug.sf.disable_backpressure 1
setprop debug.sf.enable_gl_backpressure 0
setprop debug.sf.enable_layer_caching 0
setprop debug.sf.disable_client_composition_cache 1 
setprop debug.sf.enable_gl_backpressure false
setprop debug.sf.enable_hwc_vds 0
setprop debug.sf.hw 0
setprop debug.sf.predict_hwc_composition_strategy 0
setprop debug.sf.use_phase_offsets_as_durations 1
#V17SCREEN.TOUCH
setprop debug.sf.use_phase_offsets_as_durations 1
setprop debug.sf.late.sf.duration 10500000
setprop debug.sf.late.app.duration 16600000
setprop debug.sf.treat_170m_as_sRGB 1
setprop debug.sf.earlyGl.app.duration 16600000
setprop debug.sf.frame_rate_multiple_threshold 120
setprop debug.boot.fps 20
#V16 Faster Touch 
setprop debug.performance.tuning 1
settings put system view.scroll_friction 0
settings put global windowsmgr.support_low_latency_touch true
setprop debug.hwui.render_dirty_regions false
setprop debug.hwui.disable_vsync true
settings put system haptic_feedback_intensity 50
settings put global tactile_feedback_enabled 1
debug.sf.set_touch_timer_ms 100
###
setprop debug.MultitouchSettleInterval 0.01ms
setprop debyg.MultitouchMinDistance 0.01px
setprop debug.TapInterval 0.1ms
settings put global fw.bservice_enable true
settings put global fw.bg_apps_limit 4
settings put global fw.bservice_limit 4
settings put global fw.bservice_age 10000
setprop debug.touch.pressure.scale 0.001
setprop debug.touch_move_opt 1
setprop debug.touch_vsync_opt 1
setprop debug.touch.size.bias 0 
setprop debug.TapSlop1px
settings put global windowsmgr.max_events_per_sec 180
settings put global min_pointer_dur 8
settings put global product.multi_touch_enabled true
settings put global securestorage.knox false
setprop debug.security.mdpp none
setprop debug.security.mdpp.result none
settings put system af.resampler.quality 255
settings put system scrollingcache 3
setprop debug.service.lgospd.enable 0
setprop debug.service.pcsync.enable 0
setprop debug.touch.deviceTypetouchScreen
cmd device_config put input default_key_press_repeat_rate 33
cmd device_config put input filtered_accel_event_rate_hz 240
cmd device_config put input touch_screen_sample_interval_ms 8
cmd device_config put systemui cg_frame_interval_millis 4
cmd device_config put systemui low_power_refresh_rate_millis 0
cmd device_config put systemui low_power_refresh_rate_millis 0
cmd device_config put systemui cg_max_frame_skip 8
settings put system service.touch.tpf 30
settings put system lowThreshold 0
settings put system highThreshold 0
settings put system VirtualKeyQuietTime 0
settings put system KeyRepeatDelay 0
settings put system KeyRepeatTimeout 0
setprop debug.boosterorientnosync 1
settings put global sf.disable_smooth_effect true
settings put secure touch_distance_scale 0
settings put secure view_scroll_friction 0
settings put secure multi_touch_enabled 1
settings put secure assist_touch_gesture_enabled 0
settings put global maximum_obscuring_opacity_for_touch 0.5
settings put system show_touches 0
settings put global block_untrusted_touches 0
settings put system vsync.disable.fps.limit 1
settings put system table.framerate 120
setprop debug.touch.deviceType touchScreen
settings put system disable.hwc.delay 1
settings put system Touc_xRotation  360
settings put system touchswipedeadzone 5
settings put secure long_press_timeout 300
settings put secure multi_press_timeout 300
settings put secure touch_size_scale 5
settings put secure show_rotation_suggestions 0
settings put secure touch_size_bias 5
settings put secure touch_exploration_enabled 1
settings put secure touch_orientationAware 1
settings put secure touch_pressure_scale 0.00000125
settings put system touchscreen_hovering 0
settings put system touchscreen_sensitivity_mode 3
settings put system touchscreen_pressure_calibration 1023
settings put system touchscreen_threshold 9
settings put system touchfeature.gamemode.enable true
settings put system r.setframepace 120
settings put system touch_switch_set_touchscreen 14005
settings put system touchpanel_game_switch_enable 1
settings put system touchpanel_oppo_tp_direction 1
settings put system touchpanel_oppo_tp_limit_enable 0
settings put system touchpanel_oplus_tp_limit_enable 0
settings put system touchpanel_oplus_tp_direction 1
settings put system use_dithering 0
settings put system use_dithering false
settings put system qti.inputopts.enable true
settings put system qti.inputopts.movetouchslop 0.1
settings put global DragMinSwitchSpeed 99999.0px/s
settings put global SwipeMaxWidthRatio 1
settings put system MovementSpeedRatio 1
settings put system ZoomSpeedRatio 1
settings put system SwipeTransitionAngleCosine 3.6
settings put system mot.proximity.distance 1
settings put system PointerVelocityControlParameters 1
settings put system device.internal 1
setprop debug.performance.tuning 1
setprop debug.egl.swapinterval 90
settings put secure dev.pm.dyn_samplingrate 1
settings put system touchscreen_sensitivity 10
settings put system touchscreen_min_press_time 50
settings put system touchscreen_hevoring 0
settings put system touchscreen_gesture_mode 1
settings put system touchscreen_sensitivity_threshold 9
settings put system touchscreen_double_tap_speed 75
settings put system touchscreen_sensitivity_scale 1.5
settings put system qti.inputopts.enable true
settings put system qti.inputopts.movetouchslop 0.6
settings put system touch.orientationAware 1
settings put system SurfaceOrientation auto
settings put system touch.size.calibration geometric
settings put system touch.size.isSummed 1
settings put system touch.orientation.calibration auto
settings put system touch.distance.scale auto
settings put system touch.coverage.calibration octagram
settings put system touch.gesturemode spots
settings put system MovementSpeedRatio auto
settings put system pm.dyn_samplingrate 9999999999999999999999999999
settings put system touch.pressure.calibration auto
settings put system scroll.accelerated.hw true
settings put system ui.hwframes 9999999999999999999999999999
settings put system force_high_end_gfx 1
settings put system sf.disable_smooth_effect true
settings put system max_num_touch auto
settings put system maxeventspersec 9999999999999999999999999999
settings put system resampler.quality 255
settings put system touch.sampling rate 720
settings put system adaptive_touch_sensitivity speed
settings put system touch.orientationAware 0
settings put system PressureForID 0.01
settings put system QuietInterval 0.1ms
settings put system MultitouchMinDistance 1px
settings put system AIM_SENSITIVITY_TRANSITION_TIME GRADUAL
settings put system APP_SWITCH_DELAY_TIME false
settings put system AbsoluteXForID SpeedForID
settings put system AccelerationX true
settings put system AccelerationY true
settings put system DoubleTouch OEM
settings put system PowerbuttonTapping 0
settings put system touch.assistant.enabled 0
settings put system type.touch_speed true
settings put system MovementSpeedRatio 0.8
settings put system accuracy.control 100
settings put system view_scroll_friction 10
settings put secure multi_press_timeout 300
settings put global KeyRepeatDelay 0
settings put global KeyRepeatTimeout 0
settings put global LOSS_OF_FOCUS_BY_MOUSE_MOVEMENT DISABLED
settings put global MOUSEX_AIM_LEVEL 95%
) > /dev/null 2>&1

echo""
echo "TOUCH RESPONSIVE ✅"
sleep 0.5
echo""
echo "SENSITIFITAS GAMING ✅"
sleep 0.5
echo""
sleep 0.5
echo ""█▓▒▒░░░SUCCSESS░░░▒▒▓█
echo""
cmd notification post -S bigtext -t 'TOUCH RESPONSIVE' 'Tag' ' DONE INSTALING TOUCH GAMING' > /dev/null 2>&1
