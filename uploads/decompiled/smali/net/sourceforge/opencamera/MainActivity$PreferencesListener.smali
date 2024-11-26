.class Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferencesListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferencesListener"


# instance fields
.field private any_change:Z

.field private any_significant_change:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method anyChange()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->any_change:Z

    return v0
.end method

.method anySignificantChange()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->any_significant_change:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->any_change:Z

    .line 2638
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "preference_water_type"

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "preference_video_flash"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x46

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "preference_show_pitch_lines"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x45

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "preference_using_saf"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x44

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "preference_shutter_sound"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x43

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "preference_video_low_power_check"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x42

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "preference_record_audio_channels"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x41

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "preference_take_photo_border"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x40

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "preference_stamp_gpsformat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x3f

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "preference_startup_focus"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x3e

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "preference_textstamp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x3d

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "preference_enable_remote"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "preference_units_distance"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "preference_video_subtitle"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "preference_focus_peaking_color"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "preference_show_toasts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "preference_stamp_timeformat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "preference_focus_assist"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "preference_save_zulu_time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "preference_stamp_dateformat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "preference_zebra_stripes_foreground_color"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "preference_timer_speak"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "preference_show_zoom"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "preference_show_time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "preference_free_memory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "preference_record_audio_src"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "preference_show_angle_line"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "preference_pause_preview"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "preference_zebra_stripes_background_color"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "preference_audio_noise_control_sensitivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "preference_require_location"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "preference_thumbnail_animation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "preference_save_photo_prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "ghost_image_alpha"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "preference_stamp_fontsize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "preference_remote_device_name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "preference_histogram"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "preference_front_camera_mirror"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "preference_timer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "preference_stamp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "preference_volume_keys"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "preference_stamp_style"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "preference_exif_artist"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "preference_record_audio"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "preference_touch_capture"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "preference_grid"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "preference_zebra_stripes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "preference_stamp_font_color"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "preference_lock_orientation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "preference_keep_display_on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "preference_show_video_max_amp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "preference_burst_interval"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "preference_timer_beep"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "preference_panorama_crop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "preference_crop_guide"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "preference_max_brightness"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "preference_hdr_tonemapping"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_39
    const-string v1, "preference_lock_video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_3a
    const-string v1, "preference_hdr_contrast_enhancement"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_3b
    const-string v1, "preference_background_photo_saving"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "preference_show_whats_new"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_3d
    const-string v1, "preference_show_angle"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3e
    const-string v1, "preference_show_battery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3f
    const-string v1, "preference_focus_peaking"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    goto :goto_0

    :cond_40
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_40
    const-string v1, "preference_save_video_prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    goto :goto_0

    :cond_41
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_41
    const-string v1, "preference_stamp_geo_address"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    goto :goto_0

    :cond_42
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_42
    const-string v1, "preference_show_when_locked"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_43

    goto :goto_0

    :cond_43
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_43
    const-string v1, "preference_exif_copyright"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    goto :goto_0

    :cond_44
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_44
    const-string v1, "preference_angle_highlight_color"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    goto :goto_0

    :cond_45
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_45
    const-string v1, "preference_show_iso"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    goto :goto_0

    :cond_46
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_46
    const-string v1, "preference_burst_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    goto :goto_0

    :cond_47
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->any_significant_change:Z

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2772
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$1300(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->startRemoteControl()V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2776
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$1300(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteEnabled()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2777
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$1300(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->stopRemoteControl()V

    :cond_48
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2778
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$1300(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->startRemoteControl()V

    goto :goto_2

    .line 2781
    :pswitch_2
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    if-eqz p1, :cond_49

    const p1, 0x3f83d70a    # 1.03f

    goto :goto_1

    :cond_49
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2782
    :goto_1
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/MainActivity;->access$1402(Lnet/sourceforge/opencamera/MainActivity;F)F

    :goto_2
    :pswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7abcb0ba -> :sswitch_46
        -0x725d68d9 -> :sswitch_45
        -0x6efa57b8 -> :sswitch_44
        -0x6a68ecc4 -> :sswitch_43
        -0x630273af -> :sswitch_42
        -0x624c33da -> :sswitch_41
        -0x6178540c -> :sswitch_40
        -0x57d36228 -> :sswitch_3f
        -0x51e17451 -> :sswitch_3e
        -0x5119a90b -> :sswitch_3d
        -0x4aea2b4e -> :sswitch_3c
        -0x4a64ba4c -> :sswitch_3b
        -0x499da024 -> :sswitch_3a
        -0x496ffdb5 -> :sswitch_39
        -0x45da4811 -> :sswitch_38
        -0x437caa10 -> :sswitch_37
        -0x3cf8418f -> :sswitch_36
        -0x3078fe4a -> :sswitch_35
        -0x3033e534 -> :sswitch_34
        -0x30098f18 -> :sswitch_33
        -0x2d295739 -> :sswitch_32
        -0x2c8d43ee -> :sswitch_31
        -0x2942b860 -> :sswitch_30
        -0x2873d7ad -> :sswitch_2f
        -0x27de06d7 -> :sswitch_2e
        -0x2146a7d6 -> :sswitch_2d
        -0x1e4a54ba -> :sswitch_2c
        -0x165bee1e -> :sswitch_2b
        -0x12c82cb4 -> :sswitch_2a
        -0x1156840e -> :sswitch_29
        -0x9072f2f -> :sswitch_28
        -0x761f56b -> :sswitch_27
        -0x6e46ca1 -> :sswitch_26
        -0x6db291f -> :sswitch_25
        -0x15abae1 -> :sswitch_24
        -0x1045d00 -> :sswitch_23
        -0x103d9c1 -> :sswitch_22
        0x3b925b0 -> :sswitch_21
        0x7bf77ca -> :sswitch_20
        0xaa3765d -> :sswitch_1f
        0xd9a7e8d -> :sswitch_1e
        0x11192833 -> :sswitch_1d
        0x138fdb8b -> :sswitch_1c
        0x16bc8d68 -> :sswitch_1b
        0x17c3ce1b -> :sswitch_1a
        0x192022fe -> :sswitch_19
        0x1b723a71 -> :sswitch_18
        0x24a27cd0 -> :sswitch_17
        0x26b5286b -> :sswitch_16
        0x26b7f971 -> :sswitch_15
        0x2aabccf4 -> :sswitch_14
        0x2bf07dbd -> :sswitch_13
        0x35a12e05 -> :sswitch_12
        0x370d37ca -> :sswitch_11
        0x3f363094 -> :sswitch_10
        0x45337de4 -> :sswitch_f
        0x4e5c154a -> :sswitch_e
        0x53886e3c -> :sswitch_d
        0x54ad4340 -> :sswitch_c
        0x586552a9 -> :sswitch_b
        0x5b419a1e -> :sswitch_a
        0x5b695452 -> :sswitch_9
        0x5c4fdc32 -> :sswitch_8
        0x5ff80441 -> :sswitch_7
        0x66d7852d -> :sswitch_6
        0x697c7763 -> :sswitch_5
        0x76c008bb -> :sswitch_4
        0x76de11d9 -> :sswitch_3
        0x79914739 -> :sswitch_2
        0x7e1d41e2 -> :sswitch_1
        0x7ea189c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method startListening()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->any_significant_change:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->any_change:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2612
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2615
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method stopListening()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2621
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2622
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
