.class public Lnet/sourceforge/opencamera/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;,
        Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;,
        Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;,
        Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;,
        Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;,
        Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;,
        Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;,
        Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;,
        Lnet/sourceforge/opencamera/MainActivity$MyFolderChooserDialog;
    }
.end annotation


# static fields
.field private static final ACTION_SHORTCUT_CAMERA:Ljava/lang/String; = "net.sourceforge.opencamera.SHORTCUT_CAMERA"

.field private static final ACTION_SHORTCUT_GALLERY:Ljava/lang/String; = "net.sourceforge.opencamera.SHORTCUT_GALLERY"

.field private static final ACTION_SHORTCUT_SELFIE:Ljava/lang/String; = "net.sourceforge.opencamera.SHORTCUT_SELFIE"

.field private static final ACTION_SHORTCUT_SETTINGS:Ljava/lang/String; = "net.sourceforge.opencamera.SHORTCUT_SETTINGS"

.field private static final ACTION_SHORTCUT_VIDEO:Ljava/lang/String; = "net.sourceforge.opencamera.SHORTCUT_VIDEO"

.field private static final CHOOSE_GHOST_IMAGE_SAF_CODE:I = 0x2b

.field private static final CHOOSE_LOAD_SETTINGS_SAF_CODE:I = 0x2c

.field private static final CHOOSE_SAVE_FOLDER_SAF_CODE:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final WATER_DENSITY_FRESHWATER:F = 1.0f

.field private static final WATER_DENSITY_SALTWATER:F = 1.03f

.field private static activity_count:I = 0x0

.field public static final lock_to_landscape:Z = false

.field public static test_force_supports_camera2:Z

.field public static volatile test_preview_want_no_limits:Z

.field public static volatile test_preview_want_no_limits_value:Z


# instance fields
.field private final accelerometerListener:Landroid/hardware/SensorEventListener;

.field private app_is_paused:Z

.field private applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

.field private final audio_control_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private audio_listener:Lnet/sourceforge/opencamera/AudioListener;

.field private back_camera_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private block_startup_toast:Z

.field private bluetoothRemoteControl:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

.field private cached_display_rotation:I

.field private cached_display_rotation_time_ms:J

.field private cached_system_orientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

.field private camera_in_background:Z

.field private final changed_auto_stabilise_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private displayListener:Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

.field private final exposure_lock_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private front_camera_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile gallery_bitmap:Landroid/graphics/Bitmap;

.field private gallery_save_anim:Landroid/animation/ValueAnimator;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasOldSystemOrientation:Z

.field private has_cached_display_rotation:Z

.field private has_cached_system_orientation:Z

.field private immersive_timer_handler:Landroid/os/Handler;

.field private immersive_timer_runnable:Ljava/lang/Runnable;

.field private is_multi_cam:Z

.field public is_test:Z

.field private large_heap_memory:I

.field private last_continuous_fast_burst:Z

.field private layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSensorAccelerometer:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWaterDensity:F

.field private magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

.field private mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

.field private manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

.field private navigation_gap:I

.field private oldSystemOrientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private other_camera_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pausePreviewOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;

.field private permissionHandler:Lnet/sourceforge/opencamera/PermissionHandler;

.field private popupOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;

.field private final preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

.field private final preloaded_bitmap_resources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private preview:Lnet/sourceforge/opencamera/preview/Preview;

.field private push_info_toast_text:Ljava/lang/String;

.field private push_switched_camera:Z

.field private saf_dialog_from_preferences:Z

.field private save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

.field private save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

.field private screenLockOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;

.field private screen_is_locked:Z

.field private final screen_locked_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private set_window_insets_listener:Z

.field private settingsManager:Lnet/sourceforge/opencamera/SettingsManager;

.field private soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

.field private final stamp_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private final store_location_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private supports_auto_stabilise:Z

.field private supports_camera2:Z

.field private supports_force_video_4k:Z

.field private final switch_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field public volatile test_angle:F

.field public volatile test_have_angle:Z

.field public volatile test_last_saved_image:Ljava/lang/String;

.field public volatile test_last_saved_imageuri:Landroid/net/Uri;

.field public volatile test_low_memory:Z

.field public volatile test_save_settings_file:Ljava/lang/String;

.field private textFormatter:Lnet/sourceforge/opencamera/TextFormatter;

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private textToSpeechSuccess:Z

.field private update_gallery_future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private want_no_limits:Z

.field private final white_balance_lock_toast:Lnet/sourceforge/opencamera/ToastBoxer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->app_is_paused:Z

    .line 144
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preloaded_bitmap_resources:Ljava/util/Map;

    .line 172
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->switch_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 173
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->screen_locked_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 174
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->stamp_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 175
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->changed_auto_stabilise_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 176
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->white_balance_lock_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 177
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->exposure_lock_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 178
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_control_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 179
    new-instance v0, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->store_location_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->block_startup_toast:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->push_switched_camera:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mWaterDensity:F

    .line 1492
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$10;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$10;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 2596
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->immersive_timer_handler:Landroid/os/Handler;

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->immersive_timer_runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->allowLongPress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lnet/sourceforge/opencamera/MainActivity;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->pushCameraIdToast(I)V

    return-void
.end method

.method static synthetic access$1200(Lnet/sourceforge/opencamera/MainActivity;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->userSwitchToCamera(I)V

    return-void
.end method

.method static synthetic access$1300(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->bluetoothRemoteControl:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    return-object p0
.end method

.method static synthetic access$1402(Lnet/sourceforge/opencamera/MainActivity;F)F
    .locals 0

    .line 109
    iput p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mWaterDensity:F

    return p1
.end method

.method static synthetic access$1500(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/MainActivity;->screen_is_locked:Z

    return p0
.end method

.method static synthetic access$1600(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ToastBoxer;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->screen_locked_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    return-object p0
.end method

.method static synthetic access$1700(Lnet/sourceforge/opencamera/MainActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    return p0
.end method

.method static synthetic access$1702(Lnet/sourceforge/opencamera/MainActivity;I)I
    .locals 0

    .line 109
    iput p1, p0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    return p1
.end method

.method static synthetic access$1800(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    return p0
.end method

.method static synthetic access$1900(Lnet/sourceforge/opencamera/MainActivity;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->showUnderNavigation(Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->longClickedTakePhoto()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lnet/sourceforge/opencamera/MainActivity;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->immersiveModeChanged(Z)V

    return-void
.end method

.method static synthetic access$2100(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    return p0
.end method

.method static synthetic access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    return-object p0
.end method

.method static synthetic access$2300(Lnet/sourceforge/opencamera/MainActivity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->loadThumbnailFromUri(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lnet/sourceforge/opencamera/MainActivity;)Ljava/util/concurrent/Future;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->update_gallery_future:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$2502(Lnet/sourceforge/opencamera/MainActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->update_gallery_future:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$2600(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIconToBlank()V

    return-void
.end method

.method static synthetic access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->gallery_save_anim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2702(Lnet/sourceforge/opencamera/MainActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->gallery_save_anim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2800(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialog()V

    return-void
.end method

.method static synthetic access$2900(Lnet/sourceforge/opencamera/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->getHumanReadableSaveFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->longClickedGallery()V

    return-void
.end method

.method static synthetic access$3000(Lnet/sourceforge/opencamera/MainActivity;)Landroid/view/GestureDetector;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$3100(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/ManualSeekbars;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    return-object p0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->longClickedSwitchMultiCamera()V

    return-void
.end method

.method static synthetic access$602(Lnet/sourceforge/opencamera/MainActivity;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$702(Lnet/sourceforge/opencamera/MainActivity;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeechSuccess:Z

    return p1
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    return-object p0
.end method

.method static synthetic access$900(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->onSystemOrientationChanged()V

    return-void
.end method

.method private allowLongPress()Z
    .locals 3

    .line 823
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_allow_long_press"

    const/4 v2, 0x1

    .line 824
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cancelImageSavingNotification()V
    .locals 0

    return-void
.end method

.method private checkDisableGUIIcons()Z
    .locals 5

    .line 3321
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsExposureButton()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const v0, 0x7f09006b

    .line 3322
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3323
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 3324
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3326
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showExposureLockIcon()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f09006d

    .line 3327
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_3

    .line 3328
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 3329
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3331
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showWhiteBalanceLockIcon()Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f0900fd

    .line 3332
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_6

    .line 3333
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x1

    .line 3334
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3336
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleRawIcon()Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f09005e

    .line 3337
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_9

    .line 3338
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v4, 0x1

    .line 3339
    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3341
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showStoreLocationIcon()Z

    move-result v0

    if-nez v0, :cond_d

    const v0, 0x7f0900d1

    .line 3342
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_c

    .line 3343
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v4, 0x1

    .line 3344
    :goto_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3346
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showTextStampIcon()Z

    move-result v0

    if-nez v0, :cond_10

    const v0, 0x7f0900eb

    .line 3347
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_f

    .line 3348
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_e

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v4, 0x1

    .line 3349
    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3351
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showStampIcon()Z

    move-result v0

    if-nez v0, :cond_13

    const v0, 0x7f0900ce

    .line 3352
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_12

    .line 3353
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_11

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v4, 0x1

    .line 3354
    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3356
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showFocusPeakingIcon()Z

    move-result v0

    if-nez v0, :cond_16

    const v0, 0x7f090078

    .line 3357
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_15

    .line 3358
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_14

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v4, 0x1

    .line 3359
    :goto_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3361
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showAutoLevelIcon()Z

    move-result v0

    if-nez v0, :cond_19

    const v0, 0x7f090045

    .line 3362
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_18

    .line 3363
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_17

    goto :goto_10

    :cond_17
    const/4 v4, 0x0

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v4, 0x1

    .line 3364
    :goto_11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3366
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleFlashIcon()Z

    move-result v0

    if-nez v0, :cond_1c

    const v0, 0x7f09005d

    .line 3367
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_1b

    .line 3368
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_1a

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v4, 0x1

    .line 3369
    :goto_13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3371
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->showFaceDetectionIcon()Z

    move-result v0

    if-nez v0, :cond_1f

    const v0, 0x7f090073

    .line 3372
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_1e

    .line 3373
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v4, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    const/4 v4, 0x1

    .line 3374
    :goto_15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3376
    :cond_1f
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->showSwitchMultiCamIcon()Z

    move-result v0

    if-nez v0, :cond_22

    const v0, 0x7f0900d5

    .line 3379
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_21

    .line 3380
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_20

    goto :goto_16

    :cond_20
    const/4 v1, 0x0

    .line 3381
    :cond_21
    :goto_16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v4, v1

    :cond_22
    return v4
.end method

.method public static checkSaveLocation(Ljava/lang/String;)Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;
    .locals 1

    const/4 v0, 0x0

    .line 1175
    invoke-static {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->checkSaveLocation(Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    move-result-object p0

    return-object p0
.end method

.method public static checkSaveLocation(Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;
    .locals 5

    .line 1191
    invoke-static {p0}, Lnet/sourceforge/opencamera/StorageUtils;->saveFolderIsFull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 1200
    invoke-static {}, Lnet/sourceforge/opencamera/StorageUtils;->getBaseFolder()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1203
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1208
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_2

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1215
    :cond_2
    new-instance p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    invoke-direct {p0, v4, v1}, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 1219
    :cond_3
    new-instance p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    invoke-direct {p0, v2, v1}, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method private checkSaveLocations()V
    .locals 6

    .line 1083
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1086
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->checkSaveLocation(Ljava/lang/String;)Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    move-result-object v1

    .line 1088
    iget-boolean v2, v1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1092
    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v1, "OpenCamera"

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v1, v1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    .line 1102
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preference_save_location"

    .line 1103
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 1110
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_2
    if-ltz v1, :cond_4

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 1111
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-static {v2}, Lnet/sourceforge/opencamera/MainActivity;->checkSaveLocation(Ljava/lang/String;)Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    move-result-object v2

    .line 1113
    iget-boolean v5, v2, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    if-nez v5, :cond_3

    .line 1116
    iget-object v0, v2, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 1118
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->remove(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 1124
    iget-object v2, v2, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/SaveLocationHistory;->set(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 1131
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method private createImageSavingNotification()V
    .locals 0

    return-void
.end method

.method private disableForceVideo4K()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_force_video_4k:Z

    return-void
.end method

.method private enableScreenLockOnBackPressedCallback(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->screenLockOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;

    if-eqz v0, :cond_0

    .line 3536
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private freeAudioListener(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    if-eqz v0, :cond_0

    .line 6332
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/AudioListener;->release(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 6335
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->audioControlStopped()V

    return-void
.end method

.method private getActualCameraId()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 785
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 786
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getCameraIdPref()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 788
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v0

    return v0
.end method

.method private getHumanReadableSaveFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5046
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5048
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/StorageUtils;->getFilePathFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 5056
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DCIM"

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static getOnlineHelpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://opencamera.org.uk/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPhotoModeString(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;Z)Ljava/lang/String;
    .locals 3

    .line 6007
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ")"

    const-string v1, " ("

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 6052
    :pswitch_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6049
    :pswitch_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6046
    :pswitch_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000f8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6043
    :pswitch_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6040
    :pswitch_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6037
    :pswitch_5
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000ec

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6034
    :pswitch_6
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 6028
    :pswitch_7
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000e5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6029
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getBurstNImages()I

    move-result p2

    .line 6030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6022
    :pswitch_8
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000e7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6023
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFocusBracketingNImagesPref()I

    move-result p2

    .line 6024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6019
    :pswitch_9
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000e3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6016
    :pswitch_a
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000e8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6013
    :pswitch_b
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000e1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_c
    if-eqz p2, :cond_0

    .line 6010
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000ee

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRotationFromSystemOrientation(Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;)I
    .locals 1

    .line 1903
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    goto :goto_0

    .line 1905
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne p0, v0, :cond_1

    const/16 p0, 0xb4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private immersiveModeChanged(Z)V
    .locals 4

    .line 3606
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3609
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_immersive_mode"

    const-string v2, "immersive_mode_low_profile"

    .line 3610
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "immersive_mode_gui"

    .line 3611
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "immersive_mode_everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3618
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->setImmersiveMode(Z)V

    .line 3619
    :cond_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setImmersiveTimer()V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3626
    invoke-virtual {p1, v3}, Lnet/sourceforge/opencamera/ui/MainUI;->setImmersiveMode(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private initCamera2Support()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 1028
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    .line 1030
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->getNumberOfCameras()I

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    iget-boolean v6, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    if-nez v6, :cond_2

    .line 1037
    invoke-virtual {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->allowCamera2Support(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lnet/sourceforge/opencamera/MainActivity;->test_force_supports_camera2:Z

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    :cond_3
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    if-eqz v1, :cond_4

    .line 1060
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_camera_api"

    .line 1061
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "preference_use_camera2"

    .line 1062
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1063
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_camera_api_camera2"

    .line 1068
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1069
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1070
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method private initGyroSensors()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6447
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6448
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->enableSensors()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6451
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->disableSensors()V

    :goto_0
    return-void
.end method

.method private loadThumbnailFromUri(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "MainActivity"

    const/4 v1, 0x0

    .line 4196
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4197
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x1

    .line 4199
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4200
    invoke-static {v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4201
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4202
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4203
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 4204
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 4205
    invoke-virtual {v8, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4213
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_0

    .line 4215
    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    :cond_0
    if-ge v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    .line 4230
    :goto_0
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4231
    :goto_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    div-int v4, v5, v4

    iget v6, v7, Landroid/graphics/Point;->y:I

    if-lt v4, v6, :cond_2

    .line 4232
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 4234
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int v4, v4, p2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 4238
    iput-boolean p2, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4240
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 4241
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 4242
    invoke-static {p2, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "decodeStream returned null bitmap for ghost image last"

    .line 4244
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 4248
    invoke-virtual {p0, v1, p1}, Lnet/sourceforge/opencamera/MainActivity;->rotateForExif(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "failed to load bitmap for ghost image last"

    .line 4251
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v1

    :goto_2
    return-object p1
.end method

.method private longClickedGallery()V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5069
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    if-eqz v0, :cond_0

    .line 5070
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 5073
    :cond_0
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialogSAF(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5078
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 5081
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialog()V

    return-void

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5086
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5087
    :goto_0
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    .line 5088
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10004c

    .line 5089
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5090
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 5093
    :goto_1
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 5094
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Lnet/sourceforge/opencamera/SaveLocationHistory;->get(I)Ljava/lang/String;

    move-result-object v6

    .line 5095
    invoke-direct {p0, v6}, Lnet/sourceforge/opencamera/MainActivity;->getHumanReadableSaveFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    .line 5096
    aput-object v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v5, 0x1

    .line 5099
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f10004d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 5102
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f10004a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 5103
    new-instance v2, Lnet/sourceforge/opencamera/MainActivity$27;

    invoke-direct {v2, p0, v5, v1, v0}, Lnet/sourceforge/opencamera/MainActivity$27;-><init>(Lnet/sourceforge/opencamera/MainActivity;IILnet/sourceforge/opencamera/SaveLocationHistory;)V

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5179
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$28;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$28;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5187
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings()V

    .line 5188
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showAlert(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private longClickedSwitchMultiCamera()V
    .locals 10

    const/4 v0, 0x0

    .line 2454
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    .line 2455
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10004b

    .line 2456
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2458
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v2

    .line 2459
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 2461
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->getActualCameraId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 2464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v8

    invoke-virtual {v8, p0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ne v5, v4, :cond_1

    .line 2466
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<b>["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]</b>"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v8, v9, :cond_0

    add-int/lit8 v8, v6, 0x1

    .line 2468
    invoke-static {v7, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    aput-object v7, v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v6, 0x1

    .line 2471
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    aput-object v7, v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v6, 0x1

    .line 2475
    aput-object v7, v3, v6

    :goto_1
    move v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2478
    :cond_2
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$13;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$13;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2500
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$14;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$14;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 2507
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings(Z)V

    .line 2508
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showAlert(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private longClickedTakePhoto()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1957
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1960
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsFastBurst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1963
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1964
    iget-boolean v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supports_burst:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1965
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1966
    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1967
    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1974
    :cond_1
    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v2, :cond_2

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1976
    invoke-virtual {p0, v1, v0}, Lnet/sourceforge/opencamera/MainActivity;->takePicturePressed(ZZ)V

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private maxExpoBracketingNImages()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5927
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->maxExpoBracketingNImages()I

    move-result v0

    return v0
.end method

.method private onSystemOrientationChanged()V
    .locals 3

    .line 1790
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->resetCachedSystemOrientation()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1792
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->setCameraDisplayOrientation()V

    .line 1794
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->hasOldSystemOrientation:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->oldSystemOrientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v2, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->oldSystemOrientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 1802
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->getRotationFromSystemOrientation(Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;)I

    move-result v1

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->getRotationFromSystemOrientation(Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, -0xb4

    if-ge v1, v2, :cond_1

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    if-le v1, v2, :cond_2

    add-int/lit16 v1, v1, -0x168

    :cond_2
    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    int-to-float v1, v1

    .line 1809
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUIWithRotation(F)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1812
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    :goto_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1814
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->hasOldSystemOrientation:Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->oldSystemOrientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    :goto_2
    return-void
.end method

.method private openFolderChooserDialog()V
    .locals 3

    const/4 v0, 0x0

    .line 5013
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    .line 5014
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings()V

    .line 5016
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5017
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->createSaveFolderDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5018
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5020
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$26;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MainActivity$26;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5029
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 5032
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder()Ljava/io/File;

    move-result-object v0

    .line 5034
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$MyFolderChooserDialog;

    invoke-direct {v1}, Lnet/sourceforge/opencamera/MainActivity$MyFolderChooserDialog;-><init>()V

    .line 5035
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setStartFolder(Ljava/io/File;)V

    .line 5039
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "FOLDER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method private openGallery()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4553
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getLastMediaScanned()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4554
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/StorageUtils;->getLastMediaScannedIsRaw()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4562
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMedia()Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4568
    invoke-virtual {v4, p0}, Lnet/sourceforge/opencamera/StorageUtils$Media;->getMediaStoreUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 4571
    iget-object v3, v4, Lnet/sourceforge/opencamera/StorageUtils$Media;->filename:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v4, Lnet/sourceforge/opencamera/StorageUtils$Media;->filename:Ljava/lang/String;

    invoke-static {v3}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4577
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4582
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    .line 4583
    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 4591
    :cond_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_2
    move-object v0, v1

    const/4 v3, 0x0

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 4602
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    iget-boolean v3, p0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-nez v3, :cond_7

    if-nez v2, :cond_6

    .line 4620
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4621
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 4625
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 4632
    :cond_6
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4633
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "MainActivity"

    const-string v2, "SecurityException from ACTION_VIEW startActivity"

    .line 4641
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    .line 4636
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const v2, 0x7f1000c6

    .line 4637
    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    :cond_7
    :goto_5
    return-void
.end method

.method private preloadIcons(I)V
    .locals 6

    .line 1229
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1230
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1231
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1234
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->preloaded_bitmap_resources:Ljava/util/Map;

    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static processUserSaveLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4936
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "/"

    .line 4937
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4940
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4944
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4947
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4950
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private pushCameraIdToast(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2364
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2367
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->push_info_toast_text:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 5209
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5211
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5212
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5215
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private registerDisplayListener()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1754
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;-><init>(Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/MainActivity$1;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->displayListener:Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

    const-string v0, "display"

    .line 1755
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->displayListener:Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

    .line 1756
    invoke-static {v0, v2, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private resetCachedSystemOrientation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->has_cached_system_orientation:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->has_cached_display_rotation:Z

    return-void
.end method

.method private setFirstTimeFlag()V
    .locals 3

    .line 1334
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "done_first_time"

    const/4 v2, 0x1

    .line 1336
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setImmersiveTimer()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->immersive_timer_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->immersive_timer_runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3810
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3812
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->immersive_timer_handler:Landroid/os/Handler;

    .line 3813
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$18;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MainActivity$18;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->immersive_timer_runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setManualFocusSeekbar(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const v0, 0x7f090077

    goto :goto_0

    :cond_0
    const v0, 0x7f090079

    .line 5737
    :goto_0
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/4 v1, 0x0

    .line 5738
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5739
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumFocusDistance()F

    move-result v1

    float-to-double v4, v1

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusBracketingTargetDistance()F

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusDistance()F

    move-result v1

    :goto_1
    float-to-double v6, v1

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressSeekbarScaled(Landroid/widget/SeekBar;DDD)V

    .line 5740
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$38;

    invoke-direct {v1, p0, v0, p1}, Lnet/sourceforge/opencamera/MainActivity$38;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/widget/SeekBar;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 5782
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->setManualFocusSeekBarVisibility(Z)V

    return-void
.end method

.method private setModeFromIntents(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    return-void

    .line 929
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 930
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 935
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    const-string v0, "net.sourceforge.opencamera.TILE_CAMERA"

    .line 940
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "net.sourceforge.opencamera.SHORTCUT_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 943
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setVideoPref(Z)V

    goto :goto_2

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    const-string v0, "net.sourceforge.opencamera.TILE_VIDEO"

    .line 945
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const-string v0, "net.sourceforge.opencamera.SHORTCUT_VIDEO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 948
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setVideoPref(Z)V

    goto :goto_2

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_9

    const-string v0, "net.sourceforge.opencamera.TILE_FRONT_CAMERA"

    .line 950
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "net.sourceforge.opencamera.SHORTCUT_SELFIE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 954
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->switchToCamera(Z)V

    const/4 p1, 0x1

    goto :goto_3

    :cond_b
    const-string v0, "net.sourceforge.opencamera.SHORTCUT_GALLERY"

    .line 956
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 959
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->openGallery()V

    goto :goto_2

    :cond_c
    const-string v0, "net.sourceforge.opencamera.SHORTCUT_SETTINGS"

    .line 961
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 964
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->openSettings()V

    goto :goto_2

    :cond_d
    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 938
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setVideoPref(Z)V

    goto :goto_2

    :cond_e
    :goto_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 933
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setVideoPref(Z)V

    :cond_f
    :goto_2
    const/4 p1, 0x0

    .line 967
    :goto_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v3, -0x1

    if-nez p1, :cond_12

    const-string v4, "android.intent.extras.CAMERA_FACING"

    .line 972
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    if-ne v4, v2, :cond_12

    :cond_10
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    if-ne v4, v2, :cond_11

    const/4 v4, 0x1

    goto :goto_4

    :cond_11
    const/4 v4, 0x0

    .line 976
    :goto_4
    invoke-virtual {p1, v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->switchToCamera(Z)V

    const/4 p1, 0x1

    :cond_12
    if-nez p1, :cond_13

    const-string v4, "android.intent.extras.LENS_FACING_FRONT"

    .line 981
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_13

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 984
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->switchToCamera(Z)V

    const/4 p1, 0x1

    :cond_13
    if-nez p1, :cond_14

    const-string v4, "android.intent.extras.LENS_FACING_BACK"

    .line 989
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_14

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 992
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->switchToCamera(Z)V

    const/4 p1, 0x1

    :cond_14
    if-nez p1, :cond_15

    const-string v3, "android.intent.extra.USE_FRONT_CAMERA"

    .line 997
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1000
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->switchToCamera(Z)V

    goto :goto_5

    :cond_15
    if-nez p1, :cond_16

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1008
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->hasSetCameraId()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1013
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->switchToCamera(Z)V

    :cond_16
    :goto_5
    return-void
.end method

.method private setWindowFlagsForSettings()V
    .locals 1

    const/4 v0, 0x1

    .line 4020
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings(Z)V

    return-void
.end method

.method private settingsIsOpen()Z
    .locals 1

    .line 3393
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getPreferenceFragment()Lnet/sourceforge/opencamera/MyPreferenceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setupSystemUiVisibilityListener()V
    .locals 3

    .line 3634
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->set_window_insets_listener:Z

    .line 3641
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/MainActivity$16;

    invoke-direct {v2, p0}, Lnet/sourceforge/opencamera/MainActivity$16;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3756
    :cond_0
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$17;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MainActivity$17;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    .line 3757
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private showPhotoVideoToast(Z)V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "none"

    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6069
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-boolean v3, v1, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-eqz v3, :cond_0

    goto/16 :goto_12

    .line 6076
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6078
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoHighSpeed()Z

    move-result v4

    iget-object v5, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6079
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v5

    iget-object v6, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6080
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v6

    const-string v7, "x"

    const-string v9, "0"

    const-string v10, " "

    const-string v12, ""

    const-string v13, ": "

    const-string v14, "\n"

    if-eqz v6, :cond_11

    iget-object v6, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6081
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v6

    .line 6083
    iget-object v11, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    .line 6084
    iget-object v15, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    const-string v8, "mp4"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 6089
    iget v15, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    move/from16 v16, v8

    const v8, 0x989680

    if-lt v15, v8, :cond_1

    .line 6090
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    const v17, 0xf4240

    div-int v15, v15, v17

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "Mbps"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 6091
    :cond_1
    iget v8, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    const/16 v15, 0x2710

    if-lt v8, v15, :cond_2

    .line 6092
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    div-int/lit16 v15, v15, 0x3e8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "Kbps"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 6094
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "bps"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iget-object v15, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6095
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoBitratePref()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    const-string v2, "default"

    .line 6096
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object v15, v9

    move-object/from16 v18, v10

    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    move-object v15, v9

    move-object/from16 v18, v10

    .line 6100
    :goto_1
    iget-wide v9, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const-wide/high16 v19, 0x4023000000000000L    # 9.5

    cmpg-double v21, v9, v19

    if-gez v21, :cond_4

    move-object/from16 v19, v15

    .line 6101
    new-instance v15, Ljava/text/DecimalFormat;

    move-object/from16 v20, v0

    const-string v0, "#0.###"

    invoke-direct {v15, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object/from16 v20, v0

    move-object/from16 v19, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    add-double v9, v9, v21

    double-to-int v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6102
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v15, 0x7f100366

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6103
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f1000ae

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f1000b5

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6105
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v6

    .line 6106
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    const/16 v16, 0x0

    :cond_7
    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6110
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoCaptureRateFactor()F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v2, v6

    .line 6111
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v8, v6

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v6, v8, v10

    if-lez v6, :cond_8

    .line 6112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f1002c7

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    :cond_8
    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6117
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v2

    .line 6118
    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-eq v2, v6, :cond_b

    iget-object v6, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->supportsTonemapCurve()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6119
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v6

    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-eq v6, v7, :cond_b

    iget-object v6, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->supportsTonemapCurve()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6121
    sget-object v6, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_3

    :pswitch_0
    const v6, 0x7f1002d0

    goto :goto_3

    :pswitch_1
    const v6, 0x7f1002cf

    goto :goto_3

    :pswitch_2
    const v6, 0x7f1002d1

    goto :goto_3

    :pswitch_3
    const v6, 0x7f1002ce

    goto :goto_3

    :pswitch_4
    const v6, 0x7f100369

    goto :goto_3

    :pswitch_5
    const v6, 0x7f100301

    goto :goto_3

    :pswitch_6
    const v6, 0x7f1002fc

    :goto_3
    if-eqz v6, :cond_a

    .line 6146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6147
    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-ne v2, v6, :cond_9

    .line 6148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoProfileGamma()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object/from16 v6, v18

    :goto_4
    const/16 v16, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v6, v18

    .line 6152
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unknown tonemap_profile: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "MainActivity"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    move-object/from16 v6, v18

    :goto_5
    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6158
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRecordAudioPref()Z

    move-result v2

    if-nez v2, :cond_c

    .line 6160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f100030

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    :cond_c
    const-string v2, "preference_video_max_duration"

    move-object/from16 v8, v19

    .line 6163
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6164
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 6165
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f030068

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 6166
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030069

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 6167
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_d

    .line 6169
    aget-object v2, v7, v2

    .line 6170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f1000bf

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    :cond_d
    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6174
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoMaxFileSizeUserPref()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_f

    .line 6176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1000c0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v11, 0x40000000

    cmp-long v2, v9, v11

    if-ltz v2, :cond_e

    .line 6178
    div-long/2addr v9, v11

    .line 6179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1000b2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_e
    const-wide/32 v11, 0x100000

    .line 6182
    div-long/2addr v9, v11

    .line 6183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1000c1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/16 v16, 0x0

    :cond_f
    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6187
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoFlashPref()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFlash()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1002c9

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_11
    move-object/from16 v20, v0

    move-object/from16 v17, v2

    move-object v8, v9

    move-object v6, v10

    .line 6193
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v5, v0, :cond_12

    move-object v0, v12

    goto :goto_7

    .line 6198
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6199
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v2

    .line 6200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v2, 0x0

    .line 6203
    invoke-direct {v1, v5, v2}, Lnet/sourceforge/opencamera/MainActivity;->getPhotoModeString(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 6205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    move-object v0, v12

    goto :goto_8

    :cond_13
    move-object v0, v14

    :goto_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f1000e0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6206
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v5, v7, :cond_14

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v5, v7, :cond_14

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v5, v7, :cond_14

    const/4 v7, 0x0

    goto :goto_9

    :cond_14
    const/4 v7, 0x1

    :goto_9
    iget-object v9, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6210
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFocus()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedFocusValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_15

    sget-object v9, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v5, v9, :cond_15

    iget-object v9, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6211
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    const-string v10, "focus_mode_auto"

    .line 6212
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    const-string v10, "focus_mode_continuous_picture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6213
    invoke-virtual {v10, v9}, Lnet/sourceforge/opencamera/preview/Preview;->findFocusEntryForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 6215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    iget-object v9, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6220
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getAutoStabilisePref()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 6222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    move-object v12, v14

    :goto_a
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f10010f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    goto :goto_b

    :cond_17
    move/from16 v16, v7

    :goto_b
    iget-object v7, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6226
    invoke-virtual {v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFaceDetectionPref()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 6228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f100172

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    :cond_18
    const-string v7, "auto"

    if-nez v4, :cond_1b

    iget-object v4, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6233
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getISOPref()Ljava/lang/String;

    move-result-object v4

    .line 6234
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 6235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nISO: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6236
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureTime()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6237
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getExposureTimePref()J

    move-result-wide v9

    .line 6238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0, v9, v10}, Lnet/sourceforge/opencamera/preview/Preview;->getExposureTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_19
    const/16 v16, 0x0

    .line 6242
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getExposureCompensation()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 6244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/preview/Preview;->getExposureCompensationString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const/16 v16, 0x0

    goto :goto_c

    :cond_1b
    move-object v4, v0

    .line 6249
    :goto_c
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 6250
    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getWhiteBalance()Ljava/lang/String;

    move-result-object v9

    .line 6251
    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_1c

    .line 6252
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 6253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f100331

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-virtual {v12, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForSceneMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    :cond_1c
    if-eqz v9, :cond_1e

    .line 6256
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 6257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f100374

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-virtual {v7, v9}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForWhiteBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "manual"

    .line 6258
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsWhiteBalanceTemperature()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getWhiteBalanceTemperature()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1d
    const/16 v16, 0x0

    :cond_1e
    if-eqz v10, :cond_1f

    move-object/from16 v6, v17

    .line 6263
    :try_start_1
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 6264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10004f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-virtual {v7, v10}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForColorEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v16, 0x0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_d

    :cond_1f
    move-object/from16 v6, v17

    goto :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    .line 6270
    :goto_d
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_20
    :goto_e
    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6272
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLockOrientationPref()Ljava/lang/String;

    move-result-object v0

    .line 6273
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v5, v6, :cond_21

    .line 6275
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 6276
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f030031

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 6277
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_21

    .line 6279
    aget-object v0, v6, v0

    .line 6280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    :cond_21
    const-string v0, "preference_timer"

    .line 6284
    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6285
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v5, v3, :cond_22

    .line 6286
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f03005c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 6287
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 6288
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_22

    .line 6290
    aget-object v0, v3, v0

    .line 6291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100298

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    :cond_22
    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6295
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRepeatPref()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 6296
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 6297
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f03000e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 6298
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 6299
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_23

    .line 6301
    aget-object v0, v3, v0

    .line 6302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    goto :goto_f

    :cond_23
    move/from16 v15, v16

    :goto_f
    if-eqz v15, :cond_25

    if-eqz p1, :cond_24

    goto :goto_10

    :cond_24
    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->push_info_toast_text:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v3, v1, Lnet/sourceforge/opencamera/MainActivity;->switch_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const/4 v4, 0x1

    .line 6323
    invoke-virtual {v2, v3, v0, v4}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    goto :goto_11

    :cond_25
    :goto_10
    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->push_info_toast_text:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 6318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->push_info_toast_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_26
    iget-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v2, v1, Lnet/sourceforge/opencamera/MainActivity;->switch_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const/4 v3, 0x1

    .line 6320
    invoke-virtual {v0, v2, v4, v3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    :cond_27
    :goto_11
    const/4 v0, 0x0

    iput-object v0, v1, Lnet/sourceforge/opencamera/MainActivity;->push_info_toast_text:Ljava/lang/String;

    :cond_28
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showUnderNavigation(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 3582
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    .line 3584
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3587
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    and-int/lit16 v0, v0, -0x201

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3591
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/high16 p1, -0x1000000

    :goto_1
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_3
    return-void
.end method

.method private showWhenLocked(Z)V
    .locals 1

    const/high16 v0, 0x80000

    if-eqz p1, :cond_0

    .line 4087
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 4090
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method private startAudioListener()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 6345
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6348
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->requestRecordAudioPermission()V

    return-void

    .line 6353
    :cond_0
    new-instance v0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    .line 6354
    new-instance v1, Lnet/sourceforge/opencamera/AudioListener;

    invoke-direct {v1, v0}, Lnet/sourceforge/opencamera/AudioListener;-><init>(Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    .line 6355
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/AudioListener;->status()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_control_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const v4, 0x7f100032

    .line 6356
    invoke-virtual {v1, v3, v4, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    .line 6358
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/AudioListener;->start()V

    .line 6359
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "preference_audio_noise_control_sensitivity"

    const-string v4, "0"

    .line 6360
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6362
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :sswitch_5
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    packed-switch v2, :pswitch_data_0

    const/16 v1, 0x64

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x190

    goto :goto_2

    :pswitch_1
    const/16 v1, 0xc8

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x96

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x32

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x4b

    goto :goto_2

    :pswitch_5
    const/16 v1, 0x7d

    .line 6386
    :goto_2
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->setAudioNoiseSensitivity(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 6387
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->audioControlStarted()V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    .line 6390
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/AudioListener;->release(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const v2, 0x7f100031

    .line 6392
    invoke-virtual {v1, v0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_5
        0x32 -> :sswitch_4
        0x33 -> :sswitch_3
        0x5a4 -> :sswitch_2
        0x5a5 -> :sswitch_1
        0x5a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unregisterDisplayListener()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->displayListener:Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

    if-eqz v0, :cond_0

    const-string v0, "display"

    .line 1764
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->displayListener:Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

    .line 1765
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->displayListener:Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;

    :cond_0
    return-void
.end method

.method private updateGalleryIconToBlank()V
    .locals 7

    const v0, 0x7f09007c

    .line 4262
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 4263
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v1

    .line 4264
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v2

    .line 4265
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingRight()I

    move-result v3

    .line 4266
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    .line 4269
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v6, 0x7f08005c

    .line 4270
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4272
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->gallery_bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static useScopedStorage()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private userSwitchToCamera(I)V
    .locals 4

    const v0, 0x7f0900d4

    .line 2380
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d5

    .line 2381
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 2383
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2384
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    const/4 v3, 0x1

    .line 2385
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->reset(Z)V

    .line 2386
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setDimPreview(Z)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2387
    invoke-virtual {v2, p1}, Lnet/sourceforge/opencamera/preview/Preview;->setCamera(I)V

    .line 2388
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2389
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private zoomByStep(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1444
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoom()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1445
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1449
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result v0

    :goto_0
    add-int v1, v0, p1

    if-lez v1, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1453
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getMaxZoom()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio(I)F

    move-result v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    const v1, 0x7f090105

    neg-int p1, p1

    .line 1464
    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method audioTrigger()V
    .locals 1

    .line 1381
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1389
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1393
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1401
    :cond_3
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$9;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$9;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method cameraSetup()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5394
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 5402
    invoke-static/range {p0 .. p0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v3, v0, Lnet/sourceforge/opencamera/MainActivity;->set_window_insets_listener:Z

    if-eqz v3, :cond_5

    .line 5412
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 5413
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 5414
    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5415
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 5416
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-double v6, v4

    int-to-double v3, v3

    .line 5417
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v3

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5418
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPreviewAspectRatio()D

    move-result-wide v3

    const-wide v8, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    add-double/2addr v6, v8

    cmpl-double v8, v3, v6

    if-lez v8, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    sget-boolean v4, Lnet/sourceforge/opencamera/MainActivity;->test_preview_want_no_limits:Z

    if-eqz v4, :cond_3

    sget-boolean v3, Lnet/sourceforge/opencamera/MainActivity;->test_preview_want_no_limits_value:Z

    :cond_3
    if-eqz v3, :cond_4

    iput-boolean v5, v0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    if-nez v1, :cond_5

    iget v1, v0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    if-eqz v1, :cond_5

    .line 5441
    invoke-direct {v0, v5}, Lnet/sourceforge/opencamera/MainActivity;->showUnderNavigation(Z)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5445
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget v1, v0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    if-eqz v1, :cond_5

    .line 5456
    invoke-direct {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->showUnderNavigation(Z)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5460
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    .line 5464
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsForceVideo4K()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5467
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->disableForceVideo4K()V

    .line 5469
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsForceVideo4K()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5470
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 5471
    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    const/16 v6, 0xf00

    if-lt v4, v6, :cond_7

    iget v3, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    const/16 v4, 0x870

    if-lt v3, v4, :cond_7

    .line 5474
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->disableForceVideo4K()V

    goto :goto_2

    .line 5481
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v3, 0x7f090104

    .line 5487
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ZoomControls;

    const v4, 0x7f090105

    .line 5488
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iget-object v6, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5490
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoom()Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v6, :cond_c

    const-string v6, "preference_show_zoom_controls"

    .line 5491
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5492
    invoke-virtual {v3, v5}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 5493
    invoke-virtual {v3, v5}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    const-wide/16 v6, 0x14

    .line 5494
    invoke-virtual {v3, v6, v7}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 5496
    new-instance v6, Lnet/sourceforge/opencamera/MainActivity$30;

    invoke-direct {v6, v0}, Lnet/sourceforge/opencamera/MainActivity$30;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 5501
    new-instance v6, Lnet/sourceforge/opencamera/MainActivity$31;

    invoke-direct {v6, v0}, Lnet/sourceforge/opencamera/MainActivity$31;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5506
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v6

    if-nez v6, :cond_a

    .line 5507
    invoke-virtual {v3, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_3

    .line 5511
    :cond_9
    invoke-virtual {v3, v7}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 5514
    :cond_a
    :goto_3
    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5515
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaxZoom()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5516
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaxZoom()I

    move-result v3

    iget-object v6, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5517
    new-instance v3, Lnet/sourceforge/opencamera/MainActivity$32;

    invoke-direct {v3, v0}, Lnet/sourceforge/opencamera/MainActivity$32;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v3, "preference_show_zoom_slider_controls"

    .line 5538
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5539
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v3

    if-nez v3, :cond_d

    .line 5540
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_4

    .line 5544
    :cond_b
    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_4

    .line 5548
    :cond_c
    invoke-virtual {v3, v7}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 5549
    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_d
    :goto_4
    const v3, 0x7f0900e5

    .line 5554
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "preference_show_take_photo"

    .line 5555
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5556
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5557
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 5561
    :cond_e
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5567
    :cond_f
    :goto_5
    invoke-direct {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->setManualFocusSeekbar(Z)V

    .line 5568
    invoke-direct {v0, v5}, Lnet/sourceforge/opencamera/MainActivity;->setManualFocusSeekbar(Z)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5573
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f090089

    .line 5576
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 5577
    invoke-virtual {v1, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/MainActivity;->manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5579
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumISO()I

    move-result v3

    int-to-long v12, v3

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumISO()I

    move-result v3

    int-to-long v14, v3

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getISO()I

    move-result v3

    int-to-long v3, v3

    move-object v11, v1

    move-wide/from16 v16, v3

    invoke-virtual/range {v10 .. v17}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressSeekbarISO(Landroid/widget/SeekBar;JJJ)V

    .line 5580
    new-instance v3, Lnet/sourceforge/opencamera/MainActivity$33;

    invoke-direct {v3, v0}, Lnet/sourceforge/opencamera/MainActivity$33;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5611
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureTime()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f090071

    .line 5614
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 5615
    invoke-virtual {v1, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/MainActivity;->manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5617
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposureTime()J

    move-result-wide v12

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposureTime()J

    move-result-wide v14

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getExposureTime()J

    move-result-wide v16

    move-object v11, v1

    invoke-virtual/range {v10 .. v17}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressSeekbarShutterSpeed(Landroid/widget/SeekBar;JJJ)V

    .line 5618
    new-instance v3, Lnet/sourceforge/opencamera/MainActivity$34;

    invoke-direct {v3, v0}, Lnet/sourceforge/opencamera/MainActivity$34;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 5643
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->setManualWBSeekbar()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5647
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposures()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5650
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposure()I

    move-result v1

    const v3, 0x7f09006e

    .line 5651
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 5652
    invoke-virtual {v3, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5653
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposure()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5654
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentExposure()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5655
    new-instance v4, Lnet/sourceforge/opencamera/MainActivity$35;

    invoke-direct {v4, v0, v1}, Lnet/sourceforge/opencamera/MainActivity$35;-><init>(Lnet/sourceforge/opencamera/MainActivity;I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f090070

    .line 5672
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomControls;

    .line 5673
    new-instance v3, Lnet/sourceforge/opencamera/MainActivity$36;

    invoke-direct {v3, v0}, Lnet/sourceforge/opencamera/MainActivity$36;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 5678
    new-instance v3, Lnet/sourceforge/opencamera/MainActivity$37;

    invoke-direct {v3, v0}, Lnet/sourceforge/opencamera/MainActivity$37;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v1, 0x7f09006b

    .line 5693
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5695
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsExposureButton()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v3

    if-nez v3, :cond_12

    .line 5696
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5700
    :cond_12
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->checkDisableGUIIcons()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5703
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    :cond_13
    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5707
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateOnScreenIcons()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5709
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->setPopupIcon()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5713
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->setTakePhotoIcon()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 5714
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->setSwitchCameraContentDescription()V

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/MainActivity;->block_startup_toast:Z

    if-nez v1, :cond_14

    .line 5719
    invoke-direct {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->showPhotoVideoToast(Z)V

    :cond_14
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/MainActivity;->block_startup_toast:Z

    .line 5725
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setDimPreview(Z)V

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/MainActivity;->push_switched_camera:Z

    if-eqz v1, :cond_15

    iput-boolean v2, v0, Lnet/sourceforge/opencamera/MainActivity;->push_switched_camera:Z

    const v1, 0x7f0900d4

    .line 5729
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5730
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_15
    return-void
.end method

.method public changeExposure(I)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1477
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposures()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    const v1, 0x7f09006e

    .line 1478
    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    :cond_0
    return-void
.end method

.method public changeFocusDistance(IZ)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    if-eqz p2, :cond_0

    const p2, 0x7f090077

    goto :goto_0

    :cond_0
    const p2, 0x7f090079

    .line 1489
    :goto_0
    invoke-virtual {v0, p2, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    return-void
.end method

.method public changeISO(I)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1483
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    const v1, 0x7f090089

    .line 1484
    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    :cond_0
    return-void
.end method

.method public clearFolderHistory()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5196
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->clearFolderHistory(Ljava/lang/String;)V

    return-void
.end method

.method public clearFolderHistorySAF()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5204
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocationSAF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->clearFolderHistory(Ljava/lang/String;)V

    return-void
.end method

.method public clickedAudioControl(Landroid/view/View;)V
    .locals 2

    .line 2228
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->hasAudioControl()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2233
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    .line 2234
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "preference_audio_control"

    const-string v1, "none"

    .line 2235
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "noise"

    .line 2260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_listener:Lnet/sourceforge/opencamera/AudioListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2262
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->freeAudioListener(Z)V

    goto :goto_0

    .line 2265
    :cond_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->startAudioListener()V

    :cond_2
    :goto_0
    return-void
.end method

.method public clickedAutoLevel()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2170
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getAutoStabilisePref()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2174
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preference_auto_stabilise"

    .line 2175
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2176
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v3, 0x7f10010f

    if-eqz v0, :cond_0

    const-string v4, "done_auto_stabilise_info"

    .line 2180
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    const v1, 0x7f100035

    .line 2182
    invoke-virtual {v0, v3, v1, v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_1

    .line 2188
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1

    const v0, 0x7f1000cf

    goto :goto_0

    :cond_1
    const v0, 0x7f1000ce

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2189
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getChangedAutoStabiliseToastBoxer()Lnet/sourceforge/opencamera/ToastBoxer;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2192
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateAutoLevelIcon()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2193
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    .line 2194
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    return-void
.end method

.method public clickedAutoLevel(Landroid/view/View;)V
    .locals 0

    .line 2164
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->clickedAutoLevel()V

    return-void
.end method

.method public clickedCancelPanorama(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    const/4 v0, 0x1

    .line 2025
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->stopPanorama(Z)V

    return-void
.end method

.method public clickedCycleFlash(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v0, 0x1

    .line 2201
    invoke-virtual {p1, v0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->cycleFlash(ZZ)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2202
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateCycleFlashIcon()V

    return-void
.end method

.method public clickedCycleRaw(Landroid/view/View;)V
    .locals 7

    .line 2032
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "preference_raw"

    const-string v1, "preference_raw_no"

    .line 2034
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "preference_raw_yes"

    const-string v5, "preference_raw_only"

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    const-string v1, "MainActivity"

    const-string v2, "unrecognised raw preference"

    .line 2045
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    move-object v1, v4

    goto :goto_1

    :pswitch_1
    move-object v1, v5

    :goto_1
    :pswitch_2
    if-eqz v1, :cond_3

    .line 2049
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2050
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2051
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2053
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateCycleRawIcon()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2054
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2055
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->reopenCamera()V

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x402e4bb9 -> :sswitch_2
        -0x339e4114 -> :sswitch_1
        0x27a00d1c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clickedExposure(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2564
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    return-void
.end method

.method public clickedExposureLock(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2556
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->toggleExposureLock()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2557
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateExposureLockIcon()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->exposure_lock_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 2558
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isExposureLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100081

    goto :goto_0

    :cond_0
    const v1, 0x7f100084

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    return-void
.end method

.method public clickedFaceDetection(Landroid/view/View;)V
    .locals 3

    .line 2209
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2211
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFaceDetectionPref()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 2213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2214
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_face_detection"

    .line 2215
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2216
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2218
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateFaceDetectionIcon()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->stamp_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    if-eqz p1, :cond_0

    const p1, 0x7f10008a

    goto :goto_0

    :cond_0
    const p1, 0x7f100088

    .line 2219
    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->block_startup_toast:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2221
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->reopenCamera()V

    return-void
.end method

.method public clickedFocusPeaking()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2151
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFocusPeakingPref()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2155
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "preference_focus_peaking_on"

    goto :goto_0

    :cond_0
    const-string v0, "preference_focus_peaking_off"

    :goto_0
    const-string v2, "preference_focus_peaking"

    .line 2156
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2159
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateFocusPeakingIcon()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2160
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    return-void
.end method

.method public clickedFocusPeaking(Landroid/view/View;)V
    .locals 0

    .line 2145
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->clickedFocusPeaking()V

    return-void
.end method

.method public clickedGallery(Landroid/view/View;)V
    .locals 0

    .line 4546
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->openGallery()V

    return-void
.end method

.method public clickedPauseVideo(Landroid/view/View;)V
    .locals 0

    .line 2010
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->pauseVideo()V

    return-void
.end method

.method public clickedPopupSettings(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2593
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->togglePopupSettings()V

    return-void
.end method

.method public clickedSettings(Landroid/view/View;)V
    .locals 0

    .line 2570
    new-instance p1, Lnet/sourceforge/opencamera/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lnet/sourceforge/opencamera/MainActivity$$ExternalSyntheticLambda11;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-static {p0, p1}, Lnet/sourceforge/opencamera/KeyguardUtils;->requireKeyguard(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public clickedShare(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5222
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->shareLastImage()V

    return-void
.end method

.method public clickedStamp(Landroid/view/View;)V
    .locals 4

    .line 2130
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2132
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampPref()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_stamp_yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    .line 2134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2135
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "preference_stamp_no"

    :goto_0
    const-string v3, "preference_stamp"

    .line 2136
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2137
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2139
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateStampIcon()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2140
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->stamp_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    if-eqz p1, :cond_1

    const p1, 0x7f100350

    goto :goto_1

    :cond_1
    const p1, 0x7f10034e

    .line 2141
    :goto_1
    invoke-virtual {v0, v2, p1, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    return-void
.end method

.method public clickedStoreLocation(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2062
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeotaggingPref()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 2065
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2066
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_location"

    .line 2067
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2068
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2070
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateStoreLocationIcon()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2071
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    .line 2072
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->initLocation()V

    .line 2073
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    .line 2075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    const p1, 0x7f1000cf

    goto :goto_0

    :cond_0
    const p1, 0x7f1000ce

    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->store_location_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 2076
    invoke-virtual {v1, v2, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    return-void
.end method

.method public clickedSwitchCamera(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2401
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isOpeningCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2406
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2407
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->canSwitchCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2408
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getNextCameraId()I

    move-result p1

    .line 2409
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isMultiCamEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2410
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->pushCameraIdToast(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2420
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->clearActiveFakeToast()V

    .line 2422
    :goto_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->userSwitchToCamera(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->push_switched_camera:Z

    :cond_2
    return-void
.end method

.method public clickedSwitchMultiCamera(Landroid/view/View;)V
    .locals 1

    .line 2431
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isMultiCamEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "MainActivity"

    const-string v0, "switch multi camera icon shouldn\'t have been visible"

    .line 2432
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2435
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isOpeningCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 2440
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2441
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->canSwitchCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2442
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getNextMultiCameraId()I

    move-result p1

    .line 2443
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->pushCameraIdToast(I)V

    .line 2444
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->userSwitchToCamera(I)V

    :cond_2
    return-void
.end method

.method public clickedSwitchVideo(Landroid/view/View;)V
    .locals 3

    .line 2517
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2518
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    const/4 v0, 0x1

    .line 2524
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->stopPanorama(Z)V

    const p1, 0x7f0900d6

    .line 2526
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    .line 2527
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2528
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->reset(Z)V

    .line 2529
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setDimPreview(Z)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2530
    invoke-virtual {v2, v1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->switchVideo(ZZ)V

    .line 2531
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2533
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->setTakePhotoIcon()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2534
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->setPopupIcon()V

    .line 2538
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->checkDisableGUIIcons()Z

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->block_startup_toast:Z

    if-nez p1, :cond_0

    .line 2541
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPhotoVideoToast(Z)V

    :cond_0
    return-void
.end method

.method public clickedTakePhoto(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1996
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    return-void
.end method

.method public clickedTakePhotoVideoSnapshot(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 2004
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    return-void
.end method

.method public clickedTextStamp(Landroid/view/View;)V
    .locals 5

    .line 2082
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    .line 2084
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100294

    .line 2085
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2087
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090066

    .line 2088
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2090
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2091
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getTextStampPref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2093
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$11;

    invoke-direct {v0, p0, v2}, Lnet/sourceforge/opencamera/MainActivity$11;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/widget/EditText;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 2108
    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2110
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2111
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$12;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$12;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    .line 2121
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    .line 2122
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings()V

    .line 2123
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->showAlert(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public clickedTrash(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5228
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->trashLastImage()V

    return-void
.end method

.method public clickedWhiteBalanceLock(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2548
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->toggleWhiteBalanceLock()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2549
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateWhiteBalanceLockIcon()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->white_balance_lock_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 2550
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isWhiteBalanceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10037b

    goto :goto_0

    :cond_0
    const v1, 0x7f100380

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    return-void
.end method

.method public closePopup()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2583
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->closePopup()V

    return-void
.end method

.method public createSaveFolderDialog()Landroid/app/AlertDialog$Builder;
    .locals 8

    .line 4960
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10022a

    .line 4961
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4963
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090066

    .line 4964
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 4967
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 4968
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4969
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "preference_save_location"

    const-string v7, "OpenCamera"

    .line 4970
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4971
    new-instance v5, Lnet/sourceforge/opencamera/MainActivity$24;

    invoke-direct {v5, p0}, Lnet/sourceforge/opencamera/MainActivity$24;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    .line 4987
    aput-object v5, v1, v6

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4989
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4991
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$25;

    invoke-direct {v1, p0, v3}, Lnet/sourceforge/opencamera/MainActivity$25;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/widget/EditText;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 5003
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public deviceSupportsAutoStabilise()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_auto_stabilise:Z

    return v0
.end method

.method public enablePausePreviewOnBackPressedCallback(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->pausePreviewOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;

    if-eqz v0, :cond_0

    .line 3503
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enablePopupOnBackPressedCallback(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->popupOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;

    if-eqz v0, :cond_0

    .line 3467
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    return-object v0
.end method

.method getAudioControlToast()Lnet/sourceforge/opencamera/ToastBoxer;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->audio_control_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    return-object v0
.end method

.method public getBluetoothRemoteControl()Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->bluetoothRemoteControl:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    return-object v0
.end method

.method public getChangedAutoStabiliseToastBoxer()Lnet/sourceforge/opencamera/ToastBoxer;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->changed_auto_stabilise_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    return-object v0
.end method

.method public getDisplayRotation(Z)I
    .locals 6

    if-eqz p1, :cond_0

    .line 1926
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    return p1

    .line 1933
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->has_cached_display_rotation:Z

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lnet/sourceforge/opencamera/MainActivity;->cached_display_rotation_time_ms:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    iget p1, p0, Lnet/sourceforge/opencamera/MainActivity;->cached_display_rotation:I

    return p1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->has_cached_display_rotation:Z

    .line 1938
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/MainActivity;->cached_display_rotation:I

    iput-wide v0, p0, Lnet/sourceforge/opencamera/MainActivity;->cached_display_rotation_time_ms:J

    return p1
.end method

.method public getImageFolder()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5998
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5990
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object v0

    return-object v0
.end method

.method public getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    return-object v0
.end method

.method public getManualSeekbars()Lnet/sourceforge/opencamera/ui/ManualSeekbars;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    return-object v0
.end method

.method public getNavigationGap()I
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNextCameraId()I
    .locals 4

    .line 2277
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->getActualCameraId()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2280
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->canSwitchCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2281
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isMultiCamEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2283
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 2297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 2298
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 2299
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 2300
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 2291
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 2292
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 2293
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 2294
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 2285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 2286
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 2287
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 2288
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2305
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 2306
    rem-int/2addr v0, v1

    :cond_6
    :goto_0
    return v0
.end method

.method public getNextMultiCameraId()I
    .locals 6

    .line 2320
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isMultiCamEnabled()Z

    move-result v0

    const-string v1, "MainActivity"

    if-eqz v0, :cond_4

    .line 2326
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->getActualCameraId()I

    move-result v0

    .line 2327
    sget-object v2, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 2339
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const-string v3, "camera id not in current camera set"

    .line 2341
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "camera_set is empty"

    .line 2346
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2350
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    add-int/2addr v4, v3

    .line 2353
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v4, v0

    .line 2354
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0

    :cond_4
    const-string v0, "getNextMultiCameraId() called but not in multi-cam mode"

    .line 2321
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPermissionHandler()Lnet/sourceforge/opencamera/PermissionHandler;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->permissionHandler:Lnet/sourceforge/opencamera/PermissionHandler;

    return-object v0
.end method

.method public getPreferenceFragment()Lnet/sourceforge/opencamera/MyPreferenceFragment;
    .locals 2

    .line 3389
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PREFERENCE_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MyPreferenceFragment;

    return-object v0
.end method

.method public getPreloadedBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preloaded_bitmap_resources:Ljava/util/Map;

    .line 2587
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getPreview()Lnet/sourceforge/opencamera/preview/Preview;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    return-object v0
.end method

.method public getSaveLocationHistory()Lnet/sourceforge/opencamera/SaveLocationHistory;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    return-object v0
.end method

.method public getSaveLocationHistorySAF()Lnet/sourceforge/opencamera/SaveLocationHistory;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    return-object v0
.end method

.method public getSettingsManager()Lnet/sourceforge/opencamera/SettingsManager;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->settingsManager:Lnet/sourceforge/opencamera/SettingsManager;

    return-object v0
.end method

.method getSoundPoolManager()Lnet/sourceforge/opencamera/SoundPoolManager;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

    return-object v0
.end method

.method public getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5994
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    return-object v0
.end method

.method public getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;
    .locals 5

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->has_cached_system_orientation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->cached_system_orientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    return-object v0

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1888
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    goto :goto_0

    .line 1844
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 1848
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1849
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1850
    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1851
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_4

    .line 1852
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    goto :goto_0

    .line 1867
    :cond_2
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    goto :goto_0

    .line 1881
    :cond_3
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->has_cached_system_orientation:Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->cached_system_orientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    return-object v0
.end method

.method public getTextFormatter()Lnet/sourceforge/opencamera/TextFormatter;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->textFormatter:Lnet/sourceforge/opencamera/TextFormatter;

    return-object v0
.end method

.method public getUIButton(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2579
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->getUIButton(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getWaterDensity()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mWaterDensity:F

    return v0
.end method

.method public hasAudioControl()Z
    .locals 3

    .line 6397
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_audio_control"

    const-string v2, "none"

    .line 6398
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noise"

    .line 6402
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasThumbnailAnimation()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6510
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->hasThumbnailAnimation()Z

    move-result v0

    return v0
.end method

.method imageQueueChanged()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4497
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->canTakeNewPhoto()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setImageQueueFull(Z)V

    return-void
.end method

.method public initImmersiveMode()V
    .locals 1

    .line 3825
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3826
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->setImmersiveMode(Z)V

    goto :goto_0

    .line 3830
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setImmersiveTimer()V

    :goto_0
    return-void
.end method

.method public initLocation()V
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->app_is_paused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6437
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/LocationSupplier;->setupLocationListener()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->permissionHandler:Lnet/sourceforge/opencamera/PermissionHandler;

    .line 6440
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PermissionHandler;->requestLocationPermission()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isAppPaused()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->app_is_paused:Z

    return v0
.end method

.method public isCameraInBackground()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    return v0
.end method

.method public isMultiCam()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->is_multi_cam:Z

    return v0
.end method

.method public isMultiCamEnabled()Z
    .locals 3

    .line 768
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->is_multi_cam:Z

    if-eqz v1, :cond_0

    const-string v1, "preference_multi_cam_button"

    const/4 v2, 0x1

    .line 769
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isScreenLocked()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->screen_is_locked:Z

    return v0
.end method

.method lastContinuousFastBurst()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->last_continuous_fast_burst:Z

    return v0
.end method

.method launchOnlineHelp()V
    .locals 3

    .line 1354
    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->getOnlineHelpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1355
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method launchOnlineLicences()V
    .locals 3

    .line 1371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "#licence"

    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->getOnlineHelpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1372
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method launchOnlinePrivacyPolicy()V
    .locals 3

    .line 1363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "privacy_oc.html"

    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->getOnlineHelpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1364
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method lockScreen()V
    .locals 2

    const v0, 0x7f090094

    .line 5294
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$29;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MainActivity$29;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->screen_is_locked:Z

    .line 5302
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->enableScreenLockOnBackPressedCallback(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 4727
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SecurityException failed to take permission"

    const-string v1, "MainActivity"

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 4850
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 4854
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/2addr p2, v4

    .line 4860
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->settingsManager:Lnet/sourceforge/opencamera/SettingsManager;

    .line 4862
    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/SettingsManager;->loadSettings(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4865
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const p2, 0x7f100327

    .line 4867
    invoke-virtual {p1, v5, p2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->saf_dialog_from_preferences:Z

    if-nez p1, :cond_5

    .line 4876
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    .line 4877
    invoke-virtual {p0, v4}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "preference_ghost_image_off"

    const-string v6, "preference_ghost_image"

    const-string v7, "preference_ghost_selected_image_saf"

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 4795
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 4799
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/2addr p3, v4

    .line 4805
    :try_start_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 4807
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 4808
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 4809
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4810
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 4813
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const p3, 0x7f10032c

    .line 4815
    invoke-virtual {p2, v5, p3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    .line 4817
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 4818
    invoke-interface {p2, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4819
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    .line 4822
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 4823
    invoke-interface {p2, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4824
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 4832
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 4833
    invoke-interface {p2, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4834
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    .line 4837
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 4838
    invoke-interface {p2, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4839
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->saf_dialog_from_preferences:Z

    if-nez p1, :cond_5

    .line 4844
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    .line 4845
    invoke-virtual {p0, v4}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    goto/16 :goto_3

    :pswitch_2
    const/4 p1, 0x0

    const-string v6, "preference_using_saf"

    const-string v7, "preference_save_location_saf"

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    .line 4732
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 4736
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x3

    .line 4740
    :try_start_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 4742
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 4743
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 4744
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4745
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4749
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sourceforge/opencamera/MainActivity;->updateFolderHistorySAF(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4751
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolderPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 4753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v5, p2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 4757
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const p3, 0x7f10032b

    .line 4759
    invoke-virtual {p2, v5, p3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    .line 4761
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 4762
    invoke-interface {p2, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4763
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    .line 4766
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 4767
    invoke-interface {p2, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4768
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 4776
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 4777
    invoke-interface {p2, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4778
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    .line 4781
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 4782
    invoke-interface {p2, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4783
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const p2, 0x7f10032a

    .line 4784
    invoke-virtual {p1, v5, p2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    :cond_4
    :goto_2
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->saf_dialog_from_preferences:Z

    if-nez p1, :cond_5

    .line 4789
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    .line 4790
    invoke-virtual {p0, v4}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1777
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->onSystemOrientationChanged()V

    .line 1778
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    sget v0, Lnet/sourceforge/opencamera/MainActivity;->activity_count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lnet/sourceforge/opencamera/MainActivity;->activity_count:I

    .line 251
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001d

    .line 253
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->setContentView(I)V

    const/high16 v0, 0x7f130000

    const/4 v2, 0x0

    .line 254
    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 258
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "test_project"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    .line 273
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 278
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "activity"

    .line 282
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 286
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v4

    iput v4, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v5, 0x80

    if-lt v4, v5, :cond_2

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_auto_stabilise:Z

    .line 295
    :cond_2
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    const/16 v4, 0x200

    if-lt v3, v4, :cond_3

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_force_video_4k:Z

    .line 302
    :cond_3
    new-instance v3, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->bluetoothRemoteControl:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 303
    new-instance v3, Lnet/sourceforge/opencamera/PermissionHandler;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/PermissionHandler;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->permissionHandler:Lnet/sourceforge/opencamera/PermissionHandler;

    .line 304
    new-instance v3, Lnet/sourceforge/opencamera/SettingsManager;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/SettingsManager;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->settingsManager:Lnet/sourceforge/opencamera/SettingsManager;

    .line 305
    new-instance v3, Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/ui/MainUI;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 306
    new-instance v3, Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    invoke-direct {v3}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    .line 307
    new-instance v3, Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-direct {v3, p0, p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/os/Bundle;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 310
    new-instance v3, Lnet/sourceforge/opencamera/TextFormatter;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/TextFormatter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->textFormatter:Lnet/sourceforge/opencamera/TextFormatter;

    .line 311
    new-instance v3, Lnet/sourceforge/opencamera/SoundPoolManager;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/SoundPoolManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

    .line 312
    new-instance v3, Lnet/sourceforge/opencamera/MagneticSensor;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/MagneticSensor;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 317
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->initCamera2Support()V

    const-string v3, "done_first_time"

    .line 321
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 326
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->setDeviceDefaults()V

    .line 329
    :cond_4
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->settingsIsOpen()Z

    move-result v4

    if-nez v4, :cond_5

    .line 336
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    .line 341
    :cond_5
    new-instance v5, Lnet/sourceforge/opencamera/SaveLocationHistory;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v6

    const-string v7, "save_location_history"

    invoke-direct {v5, p0, v7, v6}, Lnet/sourceforge/opencamera/SaveLocationHistory;-><init>(Lnet/sourceforge/opencamera/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 342
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->checkSaveLocations()V

    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 343
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 346
    new-instance v5, Lnet/sourceforge/opencamera/SaveLocationHistory;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocationSAF()Ljava/lang/String;

    move-result-object v6

    const-string v7, "save_location_history_saf"

    invoke-direct {v5, p0, v7, v6}, Lnet/sourceforge/opencamera/SaveLocationHistory;-><init>(Lnet/sourceforge/opencamera/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    :cond_6
    const-string v5, "sensor"

    .line 352
    invoke-virtual {p0, v5}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 355
    invoke-virtual {v5, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 358
    invoke-virtual {v5, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorAccelerometer:Landroid/hardware/Sensor;

    :cond_7
    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    iget-object v6, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 368
    invoke-virtual {v5, v6}, Lnet/sourceforge/opencamera/MagneticSensor;->initSensor(Landroid/hardware/SensorManager;)V

    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 373
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/ui/MainUI;->closeExposureUI()V

    .line 376
    new-instance v5, Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v6, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    const v7, 0x7f0900ab

    invoke-virtual {p0, v7}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {v5, v6, v7}, Lnet/sourceforge/opencamera/preview/Preview;-><init>(Lnet/sourceforge/opencamera/preview/ApplicationInterface;Landroid/view/ViewGroup;)V

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    if-eqz v4, :cond_8

    .line 382
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings()V

    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    const/4 v6, 0x2

    if-lt v4, v5, :cond_b

    .line 388
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 396
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v5

    if-nez v5, :cond_9

    .line 397
    invoke-static {v4, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    :cond_9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v5, v7, :cond_a

    const/4 v5, 0x3

    .line 399
    invoke-static {v4, v5}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    .line 401
    :cond_a
    invoke-static {v4, v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 402
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_b
    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 414
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v6, :cond_15

    .line 416
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 417
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 418
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_e

    .line 420
    sget-object v8, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    iget-object v9, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v1, :cond_d

    if-eq v8, v6, :cond_c

    iget-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 429
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    iget-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 425
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iget-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 422
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_e
    iget-object v7, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 433
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v6, :cond_10

    iget-object v7, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v6, :cond_10

    iget-object v7, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v6, :cond_f

    goto :goto_3

    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    :cond_10
    :goto_3
    const/4 v7, 0x1

    :goto_4
    iget-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 435
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_11

    const/4 v8, 0x1

    goto :goto_5

    :cond_11
    const/4 v8, 0x0

    :goto_5
    iget-object v9, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 437
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_12

    add-int/lit8 v8, v8, 0x1

    :cond_12
    iget-object v9, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 439
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_13

    add-int/lit8 v8, v8, 0x1

    :cond_13
    if-eqz v7, :cond_14

    if-lt v8, v6, :cond_14

    const/4 v7, 0x1

    goto :goto_6

    :cond_14
    const/4 v7, 0x0

    :goto_6
    iput-boolean v7, p0, Lnet/sourceforge/opencamera/MainActivity;->is_multi_cam:Z

    if-nez v7, :cond_15

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    iput-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    :cond_15
    const v7, 0x7f0900d4

    .line 457
    invoke-virtual {p0, v7}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    if-le v4, v1, :cond_16

    const/4 v9, 0x0

    goto :goto_7

    :cond_16
    const/16 v9, 0x8

    .line 458
    :goto_7
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f090044

    .line 460
    invoke-virtual {p0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 461
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0900a6

    .line 464
    invoke-virtual {p0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 465
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0900e6

    .line 466
    invoke-virtual {p0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 467
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f09004e

    .line 468
    invoke-virtual {p0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 469
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0900e5

    .line 477
    invoke-virtual {p0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    .line 478
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x7f090104

    .line 479
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 480
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f090105

    .line 481
    invoke-virtual {p0, v8}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 482
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 485
    invoke-virtual {v8}, Lnet/sourceforge/opencamera/ui/MainUI;->updateOnScreenIcons()V

    .line 500
    new-instance v8, Lnet/sourceforge/opencamera/MainActivity$2;

    invoke-direct {v8, p0}, Lnet/sourceforge/opencamera/MainActivity$2;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v8, p0, Lnet/sourceforge/opencamera/MainActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 533
    new-instance v8, Lnet/sourceforge/opencamera/MainActivity$3;

    invoke-direct {v8, p0}, Lnet/sourceforge/opencamera/MainActivity$3;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 544
    new-instance v8, Lnet/sourceforge/opencamera/MainActivity$4;

    invoke-direct {v8, p0}, Lnet/sourceforge/opencamera/MainActivity$4;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v8, 0x7f09007c

    .line 564
    invoke-virtual {p0, v8}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 565
    new-instance v9, Lnet/sourceforge/opencamera/MainActivity$5;

    invoke-direct {v9, p0}, Lnet/sourceforge/opencamera/MainActivity$5;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-le v4, v6, :cond_17

    .line 580
    new-instance v4, Lnet/sourceforge/opencamera/MainActivity$6;

    invoke-direct {v4, p0}, Lnet/sourceforge/opencamera/MainActivity$6;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    .line 591
    invoke-virtual {v7, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v6, 0x7f0900d5

    .line 598
    invoke-virtual {p0, v6}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 599
    invoke-virtual {v6, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 606
    :cond_17
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v6, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;

    invoke-direct {v6, p0, v5}, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;-><init>(Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/MainActivity$1;)V

    invoke-direct {v4, p0, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 610
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setupSystemUiVisibilityListener()V

    const v4, 0x104000a

    if-nez v3, :cond_19

    iget-boolean v6, p0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-nez v6, :cond_18

    .line 617
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f10002c

    .line 618
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f1000b9

    .line 619
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {v6, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    new-instance v7, Lnet/sourceforge/opencamera/MainActivity$7;

    invoke-direct {v7, p0}, Lnet/sourceforge/opencamera/MainActivity$7;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    const v8, 0x7f1001ef

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 629
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 632
    :cond_18
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setFirstTimeFlag()V

    :cond_19
    const/4 v6, -0x1

    .line 639
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 640
    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v7

    .line 645
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v7, -0x1

    :goto_8
    if-eq v7, v6, :cond_1b

    const-string v6, "latest_version"

    .line 648
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, 0x59

    .line 662
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    const-string v10, "preference_show_whats_new"

    .line 668
    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_1a

    if-le v9, v8, :cond_1a

    .line 673
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100372

    .line 674
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f100373

    .line 675
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 676
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 687
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 693
    :cond_1a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 699
    :cond_1b
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->setModeFromIntents(Landroid/os/Bundle;)V

    const p1, 0x7f030001

    .line 702
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->preloadIcons(I)V

    const p1, 0x7f030004

    .line 703
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->preloadIcons(I)V

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeechSuccess:Z

    .line 710
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$8;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MainActivity$8;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 729
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 732
    new-instance p1, Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;

    invoke-direct {p1, p0, v2}, Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;-><init>(Lnet/sourceforge/opencamera/MainActivity;Z)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->popupOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;

    .line 733
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->popupOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PopupOnBackPressedCallback;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 734
    new-instance p1, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;

    invoke-direct {p1, p0, v2}, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;-><init>(Lnet/sourceforge/opencamera/MainActivity;Z)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->pausePreviewOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;

    .line 735
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->pausePreviewOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 736
    new-instance p1, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;

    invoke-direct {p1, p0, v2}, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;-><init>(Lnet/sourceforge/opencamera/MainActivity;Z)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->screenLockOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;

    .line 737
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->screenLockOnBackPressedCallback:Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1327
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    sget v0, Lnet/sourceforge/opencamera/MainActivity;->activity_count:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lnet/sourceforge/opencamera/MainActivity;->activity_count:I

    .line 1265
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->cancelImageSavingNotification()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1275
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showUnderNavigation(Z)V

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->waitUntilImageQueueEmpty()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1286
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->onDestroy()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    if-eqz v0, :cond_1

    .line 1288
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->onDestroy()V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget v0, Lnet/sourceforge/opencamera/MainActivity;->activity_count:I

    if-nez v0, :cond_2

    .line 1298
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()V

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preloaded_bitmap_resources:Ljava/util/Map;

    .line 1301
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preloaded_bitmap_resources:Ljava/util/Map;

    .line 1306
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_4

    .line 1311
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1312
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1317
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/LocationSupplier;->freeLocationListeners()V

    .line 1319
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1420
    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1424
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1436
    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 1438
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1664
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->app_is_paused:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1667
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    .line 1668
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->unregisterDisplayListener()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 1669
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1670
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MagneticSensor;->unregisterMagneticListener(Landroid/hardware/SensorManager;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 1672
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 1674
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->bluetoothRemoteControl:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 1675
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->stopRemoteControl()V

    const/4 v1, 0x0

    .line 1676
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->freeAudioListener(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1678
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/LocationSupplier;->freeLocationListeners()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1679
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->stopPanorama(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1680
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->disableSensors()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1681
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver;->onPause()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

    .line 1682
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/SoundPoolManager;->releaseSound()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1683
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->clearLastImages()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1684
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearGhostImage()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1685
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->onPause()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1686
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setCoverPreview(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1688
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver;->getNImagesToSave()I

    move-result v1

    if-lez v1, :cond_1

    .line 1689
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->createImageSavingNotification()V

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->update_gallery_future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    .line 1693
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1697
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/LocationSupplier;->freeLocationListeners()V

    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 3

    .line 3072
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3074
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 3075
    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3082
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PREFERENCE_FRAGMENT_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 6465
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->permissionHandler:Lnet/sourceforge/opencamera/PermissionHandler;

    .line 6466
    invoke-virtual {p2, p1, p3}, Lnet/sourceforge/opencamera/PermissionHandler;->onRequestPermissionsResult(I[I)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 1514
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->app_is_paused:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1519
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setCoverPreview(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1521
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearDimPreview()V

    .line 1523
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->cancelImageSavingNotification()V

    .line 1527
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1529
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->registerDisplayListener()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->accelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorAccelerometer:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    .line 1531
    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1532
    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MagneticSensor;->registerMagneticListener(Landroid/hardware/SensorManager;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 1534
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 1536
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->bluetoothRemoteControl:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 1539
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->startRemoteControl()V

    .line 1542
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->initLocation()V

    .line 1543
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->initGyroSensors()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1544
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver;->onResume()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

    .line 1545
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/SoundPoolManager;->initSound()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

    const/high16 v3, 0x7f0f0000

    .line 1546
    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/SoundPoolManager;->loadSound(I)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->soundPoolManager:Lnet/sourceforge/opencamera/SoundPoolManager;

    const v3, 0x7f0f0001

    .line 1547
    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/SoundPoolManager;->loadSound(I)V

    .line 1549
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->resetCachedSystemOrientation()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1550
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    .line 1557
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getLastMediaScannedHasNoExifDateTime()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1558
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon()V

    goto :goto_2

    .line 1565
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getLastMediaScannedCheckUri()Landroid/net/Uri;

    move-result-object v1

    .line 1569
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1578
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1581
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1591
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->allowGhostImage()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1584
    throw v0

    .line 1596
    :catch_1
    :cond_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon()V

    :goto_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1600
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->reset(Z)V

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1604
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->onResume()V

    :cond_5
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1611
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getCameraIdPref()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1613
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v3

    .line 1614
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v4

    .line 1617
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_8

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_7

    .line 1620
    invoke-virtual {v3, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v6

    if-ne v6, v4, :cond_6

    const/4 v2, 0x0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    .line 1631
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->pushCameraIdToast(I)V

    :cond_8
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->push_switched_camera:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 5363
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    if-eqz v0, :cond_0

    .line 5365
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    if-eqz v0, :cond_1

    .line 5368
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1247
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1250
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/LocationSupplier;->freeLocationListeners()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1648
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1653
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->initImmersiveMode()V

    :cond_0
    return-void
.end method

.method openFolderChooserDialogSAF(Z)V
    .locals 1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->saf_dialog_from_preferences:Z

    .line 4656
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2a

    .line 4659
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method openGhostImageChooserDialogSAF(Z)V
    .locals 3

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->saf_dialog_from_preferences:Z

    .line 4670
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 4671
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 4672
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2b

    .line 4674
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    const v2, 0x7f1000d1

    .line 4678
    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const-string v0, "MainActivity"

    const-string v1, "ActivityNotFoundException from startActivityForResult"

    .line 4679
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method openLoadSettingsChooserDialogSAF(Z)V
    .locals 3

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity;->saf_dialog_from_preferences:Z

    .line 4692
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 4693
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/xml"

    .line 4694
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2c

    .line 4696
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    const v2, 0x7f1000d0

    .line 4700
    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const-string v0, "MainActivity"

    const-string v1, "ActivityNotFoundException from startActivityForResult"

    .line 4701
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public openSettings()V
    .locals 14

    .line 2804
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2805
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelTimer()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2806
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelRepeat()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    .line 2807
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    const/4 v2, 0x1

    .line 2808
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->stopPanorama(Z)V

    .line 2809
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->stopAudioListeners()V

    .line 2812
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->enablePopupOnBackPressedCallback(Z)V

    .line 2813
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->enablePausePreviewOnBackPressedCallback(Z)V

    .line 2814
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->enableScreenLockOnBackPressedCallback(Z)V

    .line 2816
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2817
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v3

    const-string v4, "cameraId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2818
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v3

    const-string v4, "nCameras"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2819
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "camera_open"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2820
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraAPI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "camera_api"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2821
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v3

    const-string v4, "using_android_l"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2822
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2823
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraOrientation()I

    move-result v3

    const-string v4, "camera_orientation"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2825
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lnet/sourceforge/opencamera/MainActivity;->getPhotoModeString(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_mode_string"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "supports_auto_stabilise"

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_auto_stabilise:Z

    .line 2826
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2827
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFlash()Z

    move-result v3

    const-string v4, "supports_flash"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_force_video_4k"

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_force_video_4k:Z

    .line 2828
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_camera2"

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    .line 2829
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2830
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFaceDetection()Z

    move-result v3

    const-string v4, "supports_face_detection"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2831
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsRaw()Z

    move-result v3

    const-string v4, "supports_raw"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_burst_raw"

    .line 2832
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsBurstRaw()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_hdr"

    .line 2833
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsHDR()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_nr"

    .line 2834
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsNoiseReduction()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_panorama"

    .line 2835
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsPanorama()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2836
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/GyroSensor;->hasSensors()Z

    move-result v3

    const-string v4, "has_gyro_sensors"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_expo_bracketing"

    .line 2837
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsExpoBracketing()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "supports_preview_bitmaps"

    .line 2838
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->supportsPreviewBitmaps()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "max_expo_bracketing_n_images"

    .line 2839
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->maxExpoBracketingNImages()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2840
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposures()Z

    move-result v3

    const-string v4, "supports_exposure_compensation"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2841
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposure()I

    move-result v3

    const-string v4, "exposure_compensation_min"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2842
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposure()I

    move-result v3

    const-string v4, "exposure_compensation_max"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2843
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v3

    const-string v4, "supports_iso_range"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2844
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumISO()I

    move-result v3

    const-string v4, "iso_range_min"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2845
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumISO()I

    move-result v3

    const-string v4, "iso_range_max"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2846
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureTime()Z

    move-result v3

    const-string v4, "supports_exposure_time"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2847
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureLock()Z

    move-result v3

    const-string v4, "supports_exposure_lock"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2848
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsWhiteBalanceLock()Z

    move-result v3

    const-string v4, "supports_white_balance_lock"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2849
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposureTime()J

    move-result-wide v3

    const-string v5, "exposure_time_min"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2850
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposureTime()J

    move-result-wide v3

    const-string v5, "exposure_time_max"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2851
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsWhiteBalanceTemperature()Z

    move-result v3

    const-string v4, "supports_white_balance_temperature"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2852
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumWhiteBalanceTemperature()I

    move-result v3

    const-string v4, "white_balance_temperature_min"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2853
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumWhiteBalanceTemperature()I

    move-result v3

    const-string v4, "white_balance_temperature_max"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "is_multi_cam"

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MainActivity;->is_multi_cam:Z

    .line 2854
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2855
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsOpticalStabilization()Z

    move-result v3

    const-string v4, "supports_optical_stabilization"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2856
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getOpticalStabilization()Z

    move-result v3

    const-string v4, "optical_stabilization_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2857
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsVideoStabilization()Z

    move-result v3

    const-string v4, "supports_video_stabilization"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2858
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoStabilization()Z

    move-result v3

    const-string v4, "video_stabilization_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2859
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->canDisableShutterSound()Z

    move-result v3

    const-string v4, "can_disable_shutter_sound"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2860
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getTonemapMaxCurvePoints()I

    move-result v3

    const-string v4, "tonemap_max_curve_points"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2861
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsTonemapCurve()Z

    move-result v3

    const-string v4, "supports_tonemap_curve"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2862
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsPhotoVideoRecording()Z

    move-result v3

    const-string v4, "supports_photo_video_recording"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2863
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleX(Z)F

    move-result v3

    const-string v4, "camera_view_angle_x"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2864
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleY(Z)F

    move-result v3

    const-string v4, "camera_view_angle_y"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2865
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinZoomRatio()F

    move-result v3

    const-string v4, "min_zoom_factor"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2866
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getMaxZoomRatio()F

    move-result v3

    const-string v4, "max_zoom_factor"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2868
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    const-string v4, "color_effects"

    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2869
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    const-string v4, "scene_modes"

    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2870
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedWhiteBalances()Ljava/util/List;

    move-result-object v3

    const-string v4, "white_balances"

    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2871
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedISOs()Ljava/util/List;

    move-result-object v3

    const-string v4, "isos"

    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 2872
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MagneticSensor;->getMagneticAccuracy()I

    move-result v3

    const-string v4, "magnetic_accuracy"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2873
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getISOKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iso_key"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2874
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2875
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getParametersString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parameters_string"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2877
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedAntiBanding()Ljava/util/List;

    move-result-object v3

    const-string v4, "antibanding"

    .line 2878
    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v3, :cond_4

    .line 2880
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 2882
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2883
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForAntiBanding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/2addr v5, v2

    goto :goto_1

    :cond_3
    const-string v3, "antibanding_entries"

    .line 2886
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2888
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedEdgeModes()Ljava/util/List;

    move-result-object v3

    const-string v4, "edge_modes"

    .line 2889
    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v3, :cond_6

    .line 2891
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 2893
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2894
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForNoiseReductionMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/2addr v5, v2

    goto :goto_2

    :cond_5
    const-string v3, "edge_modes_entries"

    .line 2897
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2899
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedNoiseReductionModes()Ljava/util/List;

    move-result-object v3

    const-string v4, "noise_reduction_modes"

    .line 2900
    invoke-static {v0, v4, v3}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v3, :cond_8

    .line 2902
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 2904
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2905
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForNoiseReductionMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/2addr v5, v2

    goto :goto_3

    :cond_7
    const-string v3, "noise_reduction_modes_entries"

    .line 2908
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2911
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2913
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2914
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2916
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 2917
    iget v8, v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    aput v8, v4, v6

    .line 2918
    iget v7, v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    aput v7, v5, v6

    add-int/2addr v6, v2

    goto :goto_4

    :cond_9
    const-string v3, "preview_widths"

    .line 2921
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "preview_heights"

    .line 2922
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_a
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2924
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v3

    iget v3, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    const-string v4, "preview_width"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2925
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v3

    iget v3, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    const-string v4, "preview_height"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2931
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedPictureSizes(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2933
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2934
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2935
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Z

    .line 2937
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 2938
    iget v9, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    aput v9, v4, v7

    .line 2939
    iget v9, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    aput v9, v5, v7

    .line 2940
    iget-boolean v8, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supports_burst:Z

    aput-boolean v8, v6, v7

    add-int/2addr v7, v2

    goto :goto_5

    :cond_b
    const-string v3, "resolution_widths"

    .line 2943
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "resolution_heights"

    .line 2944
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "resolution_supports_burst"

    .line 2945
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_c
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2947
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2948
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v3

    iget v3, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    const-string v4, "resolution_width"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2949
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v3

    iget v3, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    const-string v4, "resolution_height"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2953
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2956
    invoke-virtual {v4, v3}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedVideoQuality(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 2957
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    const-string v4, "MainActivity"

    const-string v5, "can\'t find any supported video sizes for current fps!"

    .line 2958
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2960
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v4

    :cond_f
    if-eqz v4, :cond_11

    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2962
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 2963
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 2964
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 2966
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2967
    aput-object v8, v5, v7

    iget-object v9, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2968
    invoke-virtual {v9, v8}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfileDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v2

    goto :goto_6

    :cond_10
    const-string v4, "video_quality"

    .line 2971
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "video_quality_string"

    .line 2972
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2974
    invoke-virtual {v4, v3}, Lnet/sourceforge/opencamera/preview/Preview;->fpsIsHighSpeed(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "video_is_high_speed"

    .line 2975
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2976
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v4

    invoke-static {v4, v3}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoQualityPreferenceKey(IZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "video_quality_preference_key"

    .line 2979
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2982
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQuality()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2983
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQuality()Ljava/lang/String;

    move-result-object v3

    const-string v4, "current_video_quality"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2985
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v3

    const-string v4, "video_frame_width"

    .line 2986
    iget v5, v3, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "video_frame_height"

    .line 2987
    iget v5, v3, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "video_bit_rate"

    .line 2988
    iget v5, v3, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "video_frame_rate"

    .line 2989
    iget v5, v3, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "video_capture_rate"

    .line 2990
    iget-wide v5, v3, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2991
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoHighSpeed()Z

    move-result v3

    const-string v4, "video_high_speed"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2992
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoCaptureRateFactor()F

    move-result v3

    const-string v4, "video_capture_rate_factor"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2994
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 2996
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2997
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2999
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 3000
    iget v8, v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    aput v8, v4, v6

    .line 3001
    iget v7, v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    aput v7, v5, v6

    add-int/2addr v6, v2

    goto :goto_7

    :cond_13
    const-string v3, "video_widths"

    .line 3004
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "video_heights"

    .line 3005
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_14
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3009
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v3

    const-string v4, "video_fps_high_speed"

    const-string v5, "video_fps"

    if-eqz v3, :cond_1a

    const/16 v3, 0x9

    new-array v6, v3, [I

    fill-array-data v6, :array_0

    .line 3012
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3013
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v3, :cond_17

    .line 3014
    aget v10, v6, v9

    iget-object v11, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3015
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnet/sourceforge/opencamera/preview/Preview;->fpsIsHighSpeed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 3016
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3017
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    iget-object v11, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3019
    invoke-virtual {v11}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v11

    invoke-virtual {v11, v10}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 3020
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3021
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 3024
    :cond_17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 3025
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_18

    .line 3026
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3028
    :cond_18
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3029
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    .line 3030
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_19

    .line 3031
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3033
    :cond_19
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_d

    :cond_1a
    const/16 v2, 0x8

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    .line 3039
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v3, v2, [Z

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_1b

    .line 3042
    aput-boolean v1, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 3044
    :cond_1b
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :goto_d
    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3047
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedFlashValues()Ljava/util/List;

    move-result-object v2

    const-string v3, "flash_values"

    invoke-static {v0, v3, v2}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3048
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedFocusValues()Ljava/util/List;

    move-result-object v2

    const-string v3, "focus_values"

    invoke-static {v0, v3, v2}, Lnet/sourceforge/opencamera/MainActivity;->putBundleExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    .line 3050
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->startListening()V

    .line 3052
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    .line 3053
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings()V

    .line 3054
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment;

    invoke-direct {v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;-><init>()V

    .line 3055
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3058
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    const-string v3, "PREFERENCE_FRAGMENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :array_0
    .array-data 4
        0xf
        0x18
        0x19
        0x1e
        0x3c
        0x60
        0x64
        0x78
        0xf0
    .end array-data

    :array_1
    .array-data 4
        0xf
        0x18
        0x19
        0x1e
        0x3c
        0x60
        0x64
        0x78
    .end array-data
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2016
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2017
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->pauseVideo()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2018
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->setPauseVideoContentDescription()V

    :cond_0
    return-void
.end method

.method public popupIsOpen()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2574
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    return v0
.end method

.method public restartOpenCamera()V
    .locals 2

    .line 6472
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->waitUntilImageQueueEmpty()V

    .line 6474
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 6475
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6476
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public rotateForExif(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4129
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 4130
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4134
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const-string v0, "Orientation"

    const/4 v1, 0x0

    .line 4138
    invoke-virtual {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/16 v1, 0xb4

    const/16 p2, 0xb4

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x6

    if-ne p2, v2, :cond_3

    const/16 v1, 0x5a

    const/16 p2, 0x5a

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4

    const/16 v1, 0x10e

    const/16 p2, 0x10e

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 4169
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 4170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {v7, p2, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, p1, :cond_5

    .line 4173
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p2

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_6

    .line 4134
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4135
    :cond_6
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method savingImage(Z)V
    .locals 1

    .line 4462
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$23;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/MainActivity$23;-><init>(Lnet/sourceforge/opencamera/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBrightnessForCamera(Z)V
    .locals 3

    .line 3876
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3877
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez p1, :cond_1

    const-string p1, "preference_max_brightness"

    const/4 v2, 0x1

    .line 3878
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 3882
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3879
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3889
    :goto_1
    new-instance p1, Lnet/sourceforge/opencamera/MainActivity$19;

    invoke-direct {p1, p0, v1}, Lnet/sourceforge/opencamera/MainActivity$19;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBrightnessToMinimumIfWanted()V
    .locals 4

    .line 3902
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3903
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "preference_remote_disconnect_screen_dim"

    const/4 v3, 0x0

    .line 3904
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3905
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 3908
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3911
    :goto_0
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$20;

    invoke-direct {v0, p0, v1}, Lnet/sourceforge/opencamera/MainActivity$20;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDeviceDefaults()V
    .locals 7

    .line 834
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-nez v2, :cond_0

    .line 876
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 877
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_camera2_fast_burst"

    .line 878
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 879
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-nez v2, :cond_5

    .line 883
    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;

    invoke-direct {v2, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;-><init>(Landroid/content/Context;)V

    .line 884
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->getNumberOfCameras()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    if-eqz v4, :cond_2

    .line 887
    invoke-virtual {v2, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->allowCamera2Support(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    .line 896
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 897
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hmd global"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x1f

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    .line 908
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_camera_api"

    const-string v2, "preference_camera_api_camera2"

    .line 910
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 911
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method setImmersiveMode(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3841
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_2

    .line 3846
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3847
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object p1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v1, :cond_1

    .line 3849
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 3852
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    or-int/lit16 v0, v0, 0x906

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 3856
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "preference_immersive_mode"

    const-string v2, "immersive_mode_low_profile"

    .line 3857
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3858
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3859
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 3861
    :cond_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 3865
    :cond_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    return-void
.end method

.method setManualFocusSeekBarVisibility(Z)V
    .locals 2

    .line 5794
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->showManualFocusSeekbar(Z)Z

    move-result v0

    if-eqz p1, :cond_0

    const p1, 0x7f090077

    goto :goto_0

    :cond_0
    const p1, 0x7f090079

    .line 5795
    :goto_0
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 5797
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5799
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    :cond_2
    return-void
.end method

.method public setManualWBSeekbar()V
    .locals 10

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5806
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedWhiteBalances()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsWhiteBalanceTemperature()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900fe

    .line 5809
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/4 v1, 0x0

    .line 5810
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5811
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumWhiteBalanceTemperature()I

    move-result v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5812
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumWhiteBalanceTemperature()I

    move-result v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->manualSeekbars:Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    int-to-long v4, v1

    int-to-long v6, v2

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5818
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getWhiteBalanceTemperature()I

    move-result v1

    int-to-long v8, v1

    move-object v1, v3

    move-object v2, v0

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    invoke-virtual/range {v1 .. v8}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressSeekbarWhiteBalance(Landroid/widget/SeekBar;JJJ)V

    .line 5819
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$39;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MainActivity$39;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public setWindowFlagsForCamera()V
    .locals 5

    .line 3933
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 3938
    invoke-static {p0, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Lnet/sourceforge/opencamera/MainActivity;Z)V

    :cond_0
    const/4 v1, 0x4

    .line 3948
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->setRequestedOrientation(I)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    if-eqz v1, :cond_1

    .line 3954
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->setCameraDisplayOrientation()V

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    if-eqz v1, :cond_2

    .line 3965
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    :cond_2
    const-string v1, "preference_keep_display_on"

    const/4 v2, 0x1

    .line 3970
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v4, 0x80

    if-eqz v1, :cond_3

    .line 3973
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 3978
    :cond_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    const-string v1, "preference_show_when_locked"

    .line 3980
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3984
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/MainActivity;->showWhenLocked(Z)V

    goto :goto_1

    .line 3989
    :cond_4
    invoke-direct {p0, v3}, Lnet/sourceforge/opencamera/MainActivity;->showWhenLocked(Z)V

    :goto_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    if-eqz v0, :cond_5

    .line 3995
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/MainActivity;->showUnderNavigation(Z)V

    .line 3998
    :cond_5
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/MainActivity;->setBrightnessForCamera(Z)V

    .line 4000
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->initImmersiveMode()V

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 4003
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MagneticSensor;->clearDialog()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->app_is_paused:Z

    if-nez v0, :cond_6

    .line 4010
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->initLocation()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    if-eqz v0, :cond_6

    .line 4014
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->onResume()V

    :cond_6
    return-void
.end method

.method public setWindowFlagsForSettings(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 4037
    invoke-static {p0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Lnet/sourceforge/opencamera/MainActivity;Z)V

    :cond_0
    const/4 v0, -0x1

    .line 4041
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->setRequestedOrientation(I)V

    .line 4044
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->want_no_limits:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->navigation_gap:I

    if-eqz v0, :cond_1

    .line 4048
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->showUnderNavigation(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 4052
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->showWhenLocked(Z)V

    .line 4056
    :cond_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v0, -0x40800000    # -1.0f

    .line 4057
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4058
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4061
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MainActivity;->setImmersiveMode(Z)V

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->camera_in_background:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4065
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/LocationSupplier;->freeLocationListeners()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 4068
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/preview/Preview;->onPause(Z)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->push_switched_camera:Z

    return-void
.end method

.method settingsClosing()V
    .locals 2

    .line 3401
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    const/4 v0, 0x1

    .line 3402
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    .line 3404
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->stopListening()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3412
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3417
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setCoverPreview(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    .line 3419
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->anyChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3420
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateOnScreenIcons()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    .line 3423
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->anySignificantChange()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3425
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preferencesListener:Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;

    .line 3430
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity$PreferencesListener;->anyChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3433
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showAlert(Landroid/app/AlertDialog;)V
    .locals 4

    .line 4103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4104
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$21;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/MainActivity$21;-><init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/app/AlertDialog;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showManualFocusSeekbar(Z)Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5786
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "focus_mode_manual2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5788
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object p1

    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public showPreview(Z)V
    .locals 1

    const v0, 0x7f09007f

    .line 4116
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4117
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showSwitchMultiCamIcon()Z
    .locals 3

    .line 800
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isMultiCamEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->getActualCameraId()I

    move-result v0

    .line 802
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->other_camera_ids:Ljava/util/List;

    .line 812
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->front_camera_ids:Ljava/util/List;

    .line 808
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->back_camera_ids:Ljava/util/List;

    .line 804
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method speak(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity;->textToSpeechSuccess:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6457
    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method public stopAudioListeners()V
    .locals 1

    const/4 v0, 0x1

    .line 6414
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->freeAudioListener(Z)V

    return-void
.end method

.method public supportsAutoStabilise()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5841
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5843
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_auto_stabilise:Z

    return v0
.end method

.method public supportsBurstRaw()Z
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsCamera2()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_camera2:Z

    return v0
.end method

.method public supportsCameraExtension(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5910
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsCameraExtension(I)Z

    move-result p1

    return p1
.end method

.method public supportsDRO()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5856
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public supportsExpoBracketing()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5869
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5871
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExpoBracketing()Z

    move-result v0

    return v0
.end method

.method public supportsExposureButton()Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5373
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoHighSpeed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5378
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5382
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_iso"

    const-string v3, "auto"

    .line 5383
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5384
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5385
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposures()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public supportsFastBurst()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5893
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5896
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v2, 0x200

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsBurst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public supportsFocusBracketing()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5875
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5877
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFocusBracketing()Z

    move-result v0

    return v0
.end method

.method public supportsForceVideo4K()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->supports_force_video_4k:Z

    return v0
.end method

.method public supportsHDR()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5865
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExpoBracketing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsNoiseReduction()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5902
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsPanorama()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5883
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v2, 0x100

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5888
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->hasSensors()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public supportsPreviewBitmaps()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5923
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity;->large_heap_memory:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public takePhotoButtonLongClickCancelled()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6482
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isContinuousBurstInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6483
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->stopContinuousBurst()V

    :cond_0
    return-void
.end method

.method public takePicture(Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5241
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5242
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5246
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5249
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->finishPanorama()V

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5252
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->canTakeNewPhoto()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 5261
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->startPanorama()V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 5265
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->takePicturePressed(ZZ)V

    return-void
.end method

.method takePicturePressed(ZZ)V
    .locals 1

    .line 5284
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/MainActivity;->last_continuous_fast_burst:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5287
    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePicturePressed(ZZ)V

    return-void
.end method

.method unlockScreen()V
    .locals 2

    const v0, 0x7f090094

    .line 5308
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity;->screen_is_locked:Z

    .line 5310
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->enableScreenLockOnBackPressedCallback(Z)V

    return-void
.end method

.method public updateFolderHistorySAF(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    if-nez v0, :cond_0

    .line 4714
    new-instance v0, Lnet/sourceforge/opencamera/SaveLocationHistory;

    const-string v1, "save_location_history_saf"

    invoke-direct {v0, p0, v1, p1}, Lnet/sourceforge/opencamera/SaveLocationHistory;-><init>(Lnet/sourceforge/opencamera/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    const/4 v1, 0x1

    .line 4716
    invoke-virtual {v0, p1, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateForSettings(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3101
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;)V

    return-void
.end method

.method public updateForSettings(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3105
    invoke-virtual {p0, p1, p2, v0, v0}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public updateForSettings(ZLjava/lang/String;ZZ)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 3140
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    .line 3146
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->imageQueueChanged()V

    if-nez p3, :cond_0

    iget-object p3, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3149
    invoke-virtual {p3}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3160
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3162
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "preference_scene_mode"

    const-string v4, "auto"

    .line 3166
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    move-object v1, v4

    .line 3171
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3177
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->useCamera2()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3179
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getUseCamera2FakeFlash()Z

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3182
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->useCamera2FakeFlash()Z

    move-result v1

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3191
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v0

    .line 3192
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3193
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v1

    .line 3194
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-eq v1, v3, :cond_4

    if-eq v1, v0, :cond_4

    const/4 p3, 0x1

    :cond_4
    if-nez p3, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3205
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3206
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v1

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    const/4 p3, 0x1

    :cond_6
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->mainUI:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3229
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    .line 3236
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->checkDisableGUIIcons()Z

    .line 3238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_audio_control"

    const-string v3, "none"

    .line 3239
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noise"

    .line 3243
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f090044

    .line 3244
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 3245
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3256
    :cond_7
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MainActivity;->initGyroSensors()V

    if-eqz p2, :cond_8

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity;->block_startup_toast:Z

    :cond_8
    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    if-nez p3, :cond_c

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3265
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3274
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->setCameraDisplayOrientation()V

    if-eqz p4, :cond_b

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3279
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setDimPreview(Z)V

    :cond_b
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3280
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->pausePreview(Z)V

    .line 3285
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 3288
    new-instance p3, Lnet/sourceforge/opencamera/MainActivity$15;

    invoke-direct {p3, p0}, Lnet/sourceforge/opencamera/MainActivity$15;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    const-wide/16 v0, 0x42

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_c
    :goto_2
    if-eqz p4, :cond_d

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3267
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setDimPreview(Z)V

    :cond_d
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 3268
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->reopenCamera()V

    :goto_3
    if-eqz p2, :cond_e

    .line 3295
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 p3, 0x0

    .line 3296
    invoke-virtual {p1, p3, p2, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    :cond_e
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3305
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MagneticSensor;->registerMagneticListener(Landroid/hardware/SensorManager;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->magneticSensor:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 3306
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MagneticSensor;->checkMagneticAccuracy()V

    return-void
.end method

.method public updateGalleryIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->update_gallery_future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const-string v0, "MainActivity"

    const-string v1, "previous updateGalleryIcon task already running"

    .line 4305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4309
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_ghost_image"

    const-string v2, "preference_ghost_image_off"

    .line 4310
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_ghost_image_last"

    .line 4311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4313
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4316
    new-instance v2, Lnet/sourceforge/opencamera/MainActivity$22;

    invoke-direct {v2, p0, v0, v1}, Lnet/sourceforge/opencamera/MainActivity$22;-><init>(Lnet/sourceforge/opencamera/MainActivity;ZLandroid/os/Handler;)V

    .line 4450
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4452
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->update_gallery_future:Ljava/util/concurrent/Future;

    return-void
.end method

.method updateGalleryIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->update_gallery_future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4288
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const v0, 0x7f09007c

    .line 4290
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 4291
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->gallery_bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method updateSaveFolder(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 4889
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4890
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    .line 4892
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4895
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_save_location"

    .line 4896
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4897
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 4899
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 4900
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->getHumanReadableSaveFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 4901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public usedFolderPicker()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 6501
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history_saf:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 6502
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocationSAF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->save_location_history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 6505
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public usingKitKatImmersiveMode()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 3785
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_immersive_mode"

    const-string v2, "immersive_mode_low_profile"

    .line 3786
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "immersive_mode_navigation"

    .line 3787
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "immersive_mode_gui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "immersive_mode_everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public usingKitKatImmersiveModeEverything()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3796
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_immersive_mode"

    const-string v2, "immersive_mode_low_profile"

    .line 3797
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "immersive_mode_everything"

    .line 3798
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public waitUntilImageQueueEmpty()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1947
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->waitUntilDone()V

    return-void
.end method

.method public zoomIn()V
    .locals 1

    const/4 v0, 0x1

    .line 1469
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->zoomByStep(I)V

    return-void
.end method

.method public zoomOut()V
    .locals 1

    const/4 v0, -0x1

    .line 1473
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MainActivity;->zoomByStep(I)V

    return-void
.end method
