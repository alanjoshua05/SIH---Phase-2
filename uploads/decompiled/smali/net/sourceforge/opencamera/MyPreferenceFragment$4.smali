.class Lnet/sourceforge/opencamera/MyPreferenceFragment$4;
.super Ljava/lang/Object;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$camera_api:Ljava/lang/String;

.field final synthetic val$camera_orientation:I

.field final synthetic val$camera_view_angle_x:F

.field final synthetic val$camera_view_angle_y:F

.field final synthetic val$can_disable_shutter_sound:Z

.field final synthetic val$current_video_quality:Ljava/lang/String;

.field final synthetic val$exposure_compensation_max:I

.field final synthetic val$exposure_compensation_min:I

.field final synthetic val$exposure_time_max:J

.field final synthetic val$exposure_time_min:J

.field final synthetic val$has_gyro_sensors:Z

.field final synthetic val$heights:[I

.field final synthetic val$is_multi_cam:Z

.field final synthetic val$iso_range_max:I

.field final synthetic val$iso_range_min:I

.field final synthetic val$max_zoom_factor:F

.field final synthetic val$min_zoom_factor:F

.field final synthetic val$nCameras:I

.field final synthetic val$optical_stabilization_enabled:Z

.field final synthetic val$photo_mode_string:Ljava/lang/String;

.field final synthetic val$pref:Landroid/preference/Preference;

.field final synthetic val$preview_height:I

.field final synthetic val$preview_heights:[I

.field final synthetic val$preview_width:I

.field final synthetic val$preview_widths:[I

.field final synthetic val$resolution_height:I

.field final synthetic val$resolution_width:I

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic val$supports_auto_stabilise:Z

.field final synthetic val$supports_burst:[Z

.field final synthetic val$supports_expo_bracketing:Z

.field final synthetic val$supports_exposure_compensation:Z

.field final synthetic val$supports_exposure_time:Z

.field final synthetic val$supports_face_detection:Z

.field final synthetic val$supports_hdr:Z

.field final synthetic val$supports_iso_range:Z

.field final synthetic val$supports_optical_stabilization:Z

.field final synthetic val$supports_panorama:Z

.field final synthetic val$supports_raw:Z

.field final synthetic val$supports_tonemap_curve:Z

.field final synthetic val$supports_video_stabilization:Z

.field final synthetic val$supports_white_balance_temperature:Z

.field final synthetic val$tonemap_max_curve_points:I

.field final synthetic val$using_android_l:Z

.field final synthetic val$video_bit_rate:I

.field final synthetic val$video_capture_rate:D

.field final synthetic val$video_capture_rate_factor:F

.field final synthetic val$video_frame_height:I

.field final synthetic val$video_frame_rate:I

.field final synthetic val$video_frame_width:I

.field final synthetic val$video_heights:[I

.field final synthetic val$video_high_speed:Z

.field final synthetic val$video_quality:[Ljava/lang/String;

.field final synthetic val$video_stabilization_enabled:Z

.field final synthetic val$video_widths:[I

.field final synthetic val$white_balance_temperature_max:I

.field final synthetic val$white_balance_temperature_min:I

.field final synthetic val$widths:[I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/preference/Preference;IZLjava/lang/String;ILjava/lang/String;Landroid/content/SharedPreferences;FF[I[III[I[I[ZII[Ljava/lang/String;[I[ILjava/lang/String;IIIIDZFZZZZZZZZIIZIIZJJZIIZZZZZIZFFLandroid/os/Bundle;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    move-object v1, p2

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$pref:Landroid/preference/Preference;

    move v1, p3

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$nCameras:I

    move v1, p4

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$is_multi_cam:Z

    move-object v1, p5

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_api:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_orientation:I

    move-object v1, p7

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$photo_mode_string:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move v1, p9

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$min_zoom_factor:F

    move v1, p10

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$max_zoom_factor:F

    move-object v1, p11

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_widths:[I

    move-object v1, p12

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_heights:[I

    move/from16 v1, p13

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_width:I

    move/from16 v1, p14

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_height:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$widths:[I

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$heights:[I

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_burst:[Z

    move/from16 v1, p18

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$resolution_width:I

    move/from16 v1, p19

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$resolution_height:I

    move-object/from16 v1, p20

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_quality:[Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_widths:[I

    move-object/from16 v1, p22

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_heights:[I

    move-object/from16 v1, p23

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$current_video_quality:Ljava/lang/String;

    move/from16 v1, p24

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_frame_width:I

    move/from16 v1, p25

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_frame_height:I

    move/from16 v1, p26

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_bit_rate:I

    move/from16 v1, p27

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_frame_rate:I

    move-wide/from16 v1, p28

    iput-wide v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_capture_rate:D

    move/from16 v1, p30

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_high_speed:Z

    move/from16 v1, p31

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_capture_rate_factor:F

    move/from16 v1, p32

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_auto_stabilise:Z

    move/from16 v1, p33

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_face_detection:Z

    move/from16 v1, p34

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_raw:Z

    move/from16 v1, p35

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_hdr:Z

    move/from16 v1, p36

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_panorama:Z

    move/from16 v1, p37

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$has_gyro_sensors:Z

    move/from16 v1, p38

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_expo_bracketing:Z

    move/from16 v1, p39

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_exposure_compensation:Z

    move/from16 v1, p40

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_compensation_min:I

    move/from16 v1, p41

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_compensation_max:I

    move/from16 v1, p42

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_iso_range:Z

    move/from16 v1, p43

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$iso_range_min:I

    move/from16 v1, p44

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$iso_range_max:I

    move/from16 v1, p45

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_exposure_time:Z

    move-wide/from16 v1, p46

    iput-wide v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_time_min:J

    move-wide/from16 v1, p48

    iput-wide v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_time_max:J

    move/from16 v1, p50

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_white_balance_temperature:Z

    move/from16 v1, p51

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$white_balance_temperature_min:I

    move/from16 v1, p52

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$white_balance_temperature_max:I

    move/from16 v1, p53

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_optical_stabilization:Z

    move/from16 v1, p54

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$optical_stabilization_enabled:Z

    move/from16 v1, p55

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_video_stabilization:Z

    move/from16 v1, p56

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_stabilization_enabled:Z

    move/from16 v1, p57

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_tonemap_curve:Z

    move/from16 v1, p58

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$tonemap_max_curve_points:I

    move/from16 v1, p59

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$can_disable_shutter_sound:Z

    move/from16 v1, p60

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_view_angle_x:F

    move/from16 v1, p61

    iput v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_view_angle_y:F

    move-object/from16 v1, p62

    iput-object v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    move/from16 v1, p63

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$using_android_l:Z

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$pref:Landroid/preference/Preference;

    .line 387
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_about"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 390
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000f9

    .line 391
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN_VERSION"

    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 396
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 397
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 398
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 403
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_0
    const-string v4, "Open Camera v"

    .line 405
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nCode: "

    .line 407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nPackage: "

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 410
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAndroid API version: "

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nDevice manufacturer: "

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nDevice model: "

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 419
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 420
    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string v4, "\nDisplay size: "

    .line 421
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    .line 423
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 426
    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v3, "\nDisplay metrics: "

    .line 427
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nCurrent camera ID: "

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 433
    invoke-static {v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->access$000(Lnet/sourceforge/opencamera/MyPreferenceFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nNo. of cameras: "

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$nCameras:I

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nMulti-camera?: "

    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$is_multi_cam:Z

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nCamera API: "

    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_api:Ljava/lang/String;

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nCamera orientation: "

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_orientation:I

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nPhoto mode: "

    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$photo_mode_string:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "UNKNOWN"

    .line 443
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_video_error"

    const-string v5, ""

    .line 445
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "\nLast video error: "

    .line 447
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\nMin zoom factor: "

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$min_zoom_factor:F

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\nMax zoom factor: "

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$max_zoom_factor:F

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_widths:[I

    const-string v3, ", "

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_heights:[I

    if-eqz v2, :cond_3

    const-string v2, "\nPreview resolutions: "

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_widths:[I

    .line 457
    array-length v6, v6

    if-ge v2, v6, :cond_3

    if-lez v2, :cond_2

    .line 459
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_widths:[I

    .line 461
    aget v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_heights:[I

    .line 463
    aget v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "\nPreview resolution: "

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_width:I

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$preview_height:I

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$widths:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$heights:[I

    if-eqz v2, :cond_6

    const-string v2, "\nPhoto resolutions: "

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$widths:[I

    .line 472
    array-length v6, v6

    if-ge v2, v6, :cond_6

    if-lez v2, :cond_4

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$widths:[I

    .line 476
    aget v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$heights:[I

    .line 478
    aget v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_burst:[Z

    if-eqz v6, :cond_5

    .line 479
    aget-boolean v6, v6, v2

    if-nez v6, :cond_5

    const-string v6, "[no burst]"

    .line 480
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const-string v2, "\nPhoto resolution: "

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$resolution_width:I

    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$resolution_height:I

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_quality:[Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "\nVideo qualities: "

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_quality:[Ljava/lang/String;

    .line 490
    array-length v6, v6

    if-ge v2, v6, :cond_8

    if-lez v2, :cond_7

    .line 492
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_quality:[Ljava/lang/String;

    .line 494
    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_widths:[I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_heights:[I

    if-eqz v2, :cond_a

    const-string v2, "\nVideo resolutions: "

    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_4
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_widths:[I

    .line 499
    array-length v6, v6

    if-ge v2, v6, :cond_a

    if-lez v2, :cond_9

    .line 501
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_widths:[I

    .line 503
    aget v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_heights:[I

    .line 505
    aget v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    const-string v2, "\nVideo quality: "

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$current_video_quality:Ljava/lang/String;

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo frame width: "

    .line 510
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_frame_width:I

    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo frame height: "

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_frame_height:I

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo bit rate: "

    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_bit_rate:I

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo frame rate: "

    .line 516
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_frame_rate:I

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo capture rate: "

    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_capture_rate:D

    .line 519
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo high speed: "

    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_high_speed:Z

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo capture rate factor: "

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_capture_rate_factor:F

    .line 523
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\nAuto-level?: "

    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_auto_stabilise:Z

    const v6, 0x7f10001b

    const v7, 0x7f10001d

    if-eqz v4, :cond_b

    const v4, 0x7f10001b

    goto :goto_5

    :cond_b
    const v4, 0x7f10001d

    .line 525
    :goto_5
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAuto-level enabled?: "

    .line 526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "preference_auto_stabilise"

    .line 527
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nFace detection?: "

    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_face_detection:Z

    if-eqz v4, :cond_c

    const v4, 0x7f10001b

    goto :goto_6

    :cond_c
    const v4, 0x7f10001d

    .line 529
    :goto_6
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nRAW?: "

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_raw:Z

    if-eqz v4, :cond_d

    const v4, 0x7f10001b

    goto :goto_7

    :cond_d
    const v4, 0x7f10001d

    .line 531
    :goto_7
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nHDR?: "

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_hdr:Z

    if-eqz v4, :cond_e

    const v4, 0x7f10001b

    goto :goto_8

    :cond_e
    const v4, 0x7f10001d

    .line 533
    :goto_8
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPanorama?: "

    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_panorama:Z

    if-eqz v4, :cond_f

    const v4, 0x7f10001b

    goto :goto_9

    :cond_f
    const v4, 0x7f10001d

    .line 535
    :goto_9
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nGyro sensors?: "

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$has_gyro_sensors:Z

    if-eqz v4, :cond_10

    const v4, 0x7f10001b

    goto :goto_a

    :cond_10
    const v4, 0x7f10001d

    .line 537
    :goto_a
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nExpo?: "

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_expo_bracketing:Z

    if-eqz v4, :cond_11

    const v4, 0x7f10001b

    goto :goto_b

    :cond_11
    const v4, 0x7f10001d

    .line 539
    :goto_b
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nExpo compensation?: "

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_exposure_compensation:Z

    if-eqz v4, :cond_12

    const v4, 0x7f10001b

    goto :goto_c

    :cond_12
    const v4, 0x7f10001d

    .line 541
    :goto_c
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_exposure_compensation:Z

    const-string v4, " to "

    if-eqz v2, :cond_13

    const-string v2, "\nExposure compensation range: "

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_compensation_min:I

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_compensation_max:I

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_13
    const-string v2, "\nManual ISO?: "

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v8, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_iso_range:Z

    if-eqz v8, :cond_14

    const v8, 0x7f10001b

    goto :goto_d

    :cond_14
    const v8, 0x7f10001d

    .line 549
    :goto_d
    invoke-virtual {v2, v8}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_iso_range:Z

    if-eqz v2, :cond_15

    const-string v2, "\nISO range: "

    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$iso_range_min:I

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$iso_range_max:I

    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_15
    const-string v2, "\nManual exposure?: "

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v8, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_exposure_time:Z

    if-eqz v8, :cond_16

    const v8, 0x7f10001b

    goto :goto_e

    :cond_16
    const v8, 0x7f10001d

    .line 557
    :goto_e
    invoke-virtual {v2, v8}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_exposure_time:Z

    if-eqz v2, :cond_17

    const-string v2, "\nExposure range: "

    .line 559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_time_min:J

    .line 560
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$exposure_time_max:J

    .line 562
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_17
    const-string v2, "\nManual WB?: "

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v8, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_white_balance_temperature:Z

    if-eqz v8, :cond_18

    const v8, 0x7f10001b

    goto :goto_f

    :cond_18
    const v8, 0x7f10001d

    .line 565
    :goto_f
    invoke-virtual {v2, v8}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_white_balance_temperature:Z

    if-eqz v2, :cond_19

    const-string v2, "\nWB temperature: "

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$white_balance_temperature_min:I

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$white_balance_temperature_max:I

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_19
    const-string v2, "\nOptical stabilization?: "

    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_optical_stabilization:Z

    if-eqz v4, :cond_1a

    const v4, 0x7f10001b

    goto :goto_10

    :cond_1a
    const v4, 0x7f10001d

    .line 573
    :goto_10
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nOptical stabilization enabled?: "

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$optical_stabilization_enabled:Z

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo stabilization?: "

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_video_stabilization:Z

    if-eqz v4, :cond_1b

    const v4, 0x7f10001b

    goto :goto_11

    :cond_1b
    const v4, 0x7f10001d

    .line 577
    :goto_11
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nVideo stabilization enabled?: "

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$video_stabilization_enabled:Z

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nTonemap curve?: "

    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$supports_tonemap_curve:Z

    if-eqz v4, :cond_1c

    const v4, 0x7f10001b

    goto :goto_12

    :cond_1c
    const v4, 0x7f10001d

    .line 581
    :goto_12
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nTonemap max curve points: "

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$tonemap_max_curve_points:I

    .line 583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nCan disable shutter sound?: "

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$can_disable_shutter_sound:Z

    if-eqz v4, :cond_1d

    goto :goto_13

    :cond_1d
    const v6, 0x7f10001d

    .line 585
    :goto_13
    invoke-virtual {v2, v6}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nCamera view angle: "

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_view_angle_x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$camera_view_angle_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\nFlash modes: "

    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v4, "flash_values"

    .line 590
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "None"

    if-eqz v2, :cond_1f

    .line 591
    array-length v6, v2

    if-lez v6, :cond_1f

    const/4 v6, 0x0

    .line 592
    :goto_14
    array-length v7, v2

    if-ge v6, v7, :cond_20

    if-lez v6, :cond_1e

    .line 594
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_1e
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 600
    :cond_1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v2, "\nFocus modes: "

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "focus_values"

    .line 603
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 604
    array-length v6, v2

    if-lez v6, :cond_22

    const/4 v6, 0x0

    .line 605
    :goto_15
    array-length v7, v2

    if-ge v6, v7, :cond_23

    if-lez v6, :cond_21

    .line 607
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_21
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 613
    :cond_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v2, "\nColor effects: "

    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "color_effects"

    .line 616
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 617
    array-length v6, v2

    if-lez v6, :cond_25

    const/4 v6, 0x0

    .line 618
    :goto_16
    array-length v7, v2

    if-ge v6, v7, :cond_26

    if-lez v6, :cond_24

    .line 620
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_24
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 626
    :cond_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const-string v2, "\nScene modes: "

    .line 628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "scene_modes"

    .line 629
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 630
    array-length v6, v2

    if-lez v6, :cond_28

    const/4 v6, 0x0

    .line 631
    :goto_17
    array-length v7, v2

    if-ge v6, v7, :cond_29

    if-lez v6, :cond_27

    .line 633
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_27
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 639
    :cond_28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v2, "\nWhite balances: "

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "white_balances"

    .line 642
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 643
    array-length v6, v2

    if-lez v6, :cond_2b

    const/4 v6, 0x0

    .line 644
    :goto_18
    array-length v7, v2

    if-ge v6, v7, :cond_2c

    if-lez v6, :cond_2a

    .line 646
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_2a
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 652
    :cond_2b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$using_android_l:Z

    if-nez v2, :cond_30

    const-string v2, "\nISOs: "

    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "isos"

    .line 656
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 657
    array-length v6, v2

    if-lez v6, :cond_2e

    const/4 v6, 0x0

    .line 658
    :goto_19
    array-length v7, v2

    if-ge v6, v7, :cond_2f

    if-lez v6, :cond_2d

    .line 660
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_2d
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 665
    :cond_2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v3, "iso_key"

    .line 667
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    const-string v3, "\nISO key: "

    .line 669
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v3, "magnetic_accuracy"

    .line 674
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\nMagnetic accuracy?: "

    .line 675
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nUsing SAF?: "

    .line 678
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_using_saf"

    .line 679
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_save_location"

    const-string v6, "OpenCamera"

    .line 680
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\nSave Location: "

    .line 681
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_save_location_saf"

    .line 683
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\nSave Location SAF: "

    .line 684
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nParameters: "

    .line 687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->val$bundle:Landroid/os/Bundle;

    const-string v3, "parameters_string"

    .line 688
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 690
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 693
    :cond_31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :goto_1a
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 701
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c001f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900ec

    .line 702
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 704
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 706
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x1030044

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 707
    invoke-static {v2, p1, v3}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->access$100(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/app/AlertDialog$Builder;Landroid/widget/TextView;)V

    const v2, 0x104000a

    .line 710
    invoke-virtual {p1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    new-instance v2, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;

    invoke-direct {v2, p0, v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment$4;Ljava/lang/StringBuilder;)V

    const v1, 0x7f10001c

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 722
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment$4;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 730
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 731
    invoke-static {v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->access$200(Lnet/sourceforge/opencamera/MyPreferenceFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_32
    return v0
.end method
