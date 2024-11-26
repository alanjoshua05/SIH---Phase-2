.class public Lnet/sourceforge/opencamera/preview/Preview;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;,
        Lnet/sourceforge/opencamera/preview/Preview$HistogramType;,
        Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;,
        Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;,
        Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;,
        Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;,
        Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;,
        Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;,
        Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;,
        Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;
    }
.end annotation


# static fields
.field private static final FOCUS_DONE:I = 0x3

.field private static final FOCUS_FAILED:I = 0x2

.field private static final FOCUS_SUCCESS:I = 0x1

.field private static final FOCUS_WAITING:I = 0x0

.field private static final PHASE_NORMAL:I = 0x0

.field private static final PHASE_PREVIEW_PAUSED:I = 0x3

.field private static final PHASE_TAKING_PHOTO:I = 0x2

.field private static final PHASE_TIMER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Preview"

.field private static final min_safe_restart_video_time:J = 0x3e8L

.field private static final sensor_alpha:F = 0.8f


# instance fields
.field private active_fake_toast:Landroid/widget/TextView;

.field private antibanding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private app_is_paused:Z

.field private final applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

.field private aspect_ratio:D

.field private autofocus_in_continuous_mode:Z

.field private final batteryCheckVideoTimer:Ljava/util/Timer;

.field private batteryCheckVideoTimerTask:Ljava/util/TimerTask;

.field private final battery_ifilter:Landroid/content/IntentFilter;

.field private final beepTimer:Ljava/util/Timer;

.field private beepTimerTask:Ljava/util/TimerTask;

.field private final cameraRotation:[F

.field private final cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

.field private camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

.field private final camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

.field private camera_controller_supports_zoom:Z

.field private camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

.field private final camera_to_preview_matrix:Landroid/graphics/Matrix;

.field private can_disable_shutter_sound:Z

.field private canvasView:Lnet/sourceforge/opencamera/preview/CanvasView;

.field private capture_rate_factor:F

.field private close_camera_task:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

.field private color_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private continuous_focus_move_is_started:Z

.field public volatile count_cameraAutoFocus:I

.field public volatile count_cameraContinuousFocusMoving:I

.field public volatile count_cameraStartPreview:I

.field public volatile count_cameraTakePicture:I

.field private current_flash_index:I

.field private current_focus_index:I

.field private current_orientation:I

.field private current_rotation:I

.field private current_size_index:I

.field private final decimal_format_1dp:Ljava/text/DecimalFormat;

.field private final decimal_format_2dp_force0:Ljava/text/DecimalFormat;

.field private final deviceInclination:[F

.field private final deviceRotation:[F

.field private edge_modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exposure_step:F

.field private exposures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final face_rect:Landroid/graphics/RectF;

.field private faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

.field private final fake_toast_handler:Landroid/os/Handler;

.field private final flashVideoTimer:Ljava/util/Timer;

.field private flashVideoTimerTask:Ljava/util/TimerTask;

.field private focus_camera_x:F

.field private focus_camera_y:F

.field private focus_complete_time:J

.field private final focus_flash_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private focus_peaking_bitmap:Landroid/graphics/Bitmap;

.field private focus_peaking_bitmap_buffer:Landroid/graphics/Bitmap;

.field private focus_peaking_bitmap_buffer_temp:Landroid/graphics/Bitmap;

.field private focus_started_time:J

.field private focus_success:I

.field private final geo_direction:[F

.field private final geomagnetic:[F

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final gravity:[F

.field private has_aspect_ratio:Z

.field private has_capture_rate_factor:Z

.field private has_focus_area:Z

.field private has_geo_direction:Z

.field private has_geomagnetic:Z

.field private has_gravity:Z

.field private has_level_angle:Z

.field private has_permissions:Z

.field private has_pitch_angle:Z

.field private has_smooth_zoom:Z

.field private has_surface:Z

.field private has_zoom:Z

.field private histogram:[I

.field private histogramScript:Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

.field private histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field private is_exposure_lock_supported:Z

.field private is_exposure_locked:Z

.field private is_paused:Z

.field private is_preview_started:Z

.field private is_test:Z

.field private is_test_junit4:Z

.field private is_video:Z

.field private is_white_balance_lock_supported:Z

.field private is_white_balance_locked:Z

.field private isos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private last_histogram_time_ms:J

.field private last_preview_bitmap_time_ms:J

.field private last_toast:Landroid/widget/Toast;

.field private last_toast_time_ms:J

.field private level_angle:D

.field private max_expo_bracketing_n_images:I

.field private max_exposure:I

.field private max_exposure_time:J

.field private max_iso:I

.field private max_num_focus_areas:I

.field private max_temperature:I

.field private max_zoom_factor:I

.field private min_exposure:I

.field private min_exposure_time:J

.field private min_iso:I

.field private min_temperature:I

.field private minimum_focus_distance:F

.field private natural_level_angle:D

.field private final new_geo_direction:[F

.field private nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

.field private noise_reduction_modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private open_camera_task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private orig_level_angle:D

.field private final pause_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private volatile phase:I

.field private photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

.field private photo_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

.field private pitch_angle:D

.field private preview_bitmap:Landroid/graphics/Bitmap;

.field private preview_h:I

.field private preview_targetRatio:D

.field private final preview_to_camera_matrix:Landroid/graphics/Matrix;

.field private preview_w:I

.field private refreshPreviewBitmapTask:Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

.field private remaining_repeat_photos:I

.field private remaining_restart_video:I

.field private final reset_continuous_focus_handler:Landroid/os/Handler;

.field private reset_continuous_focus_runnable:Ljava/lang/Runnable;

.field private rs:Landroid/renderscript/RenderScript;

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scene_modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private set_flash_value_after_autofocus:Ljava/lang/String;

.field private set_preview_size:Z

.field private set_textureview_size:Z

.field private smooth_zoom:F

.field private successfully_focused:Z

.field private successfully_focused_time:J

.field private supported_apertures:[F

.field public supported_extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public supported_extensions_zoom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supported_flash_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supported_focus_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supported_preview_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

.field private supports_burst:Z

.field private supports_expo_bracketing:Z

.field private supports_exposure_time:Z

.field private supports_face_detection:Z

.field private supports_focus_bracketing:Z

.field private supports_iso_range:Z

.field private supports_optical_stabilization:Z

.field private supports_photo_video_recording:Z

.field private supports_raw:Z

.field private supports_tonemap_curve:Z

.field private supports_video:Z

.field private supports_video_high_speed:Z

.field private supports_video_stabilization:Z

.field private supports_white_balance_temperature:Z

.field private final takePictureTimer:Ljava/util/Timer;

.field private takePictureTimerTask:Ljava/util/TimerTask;

.field private take_photo_after_autofocus:Z

.field private take_photo_time:J

.field private final take_photo_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field public volatile test_burst_resolution:Z

.field public volatile test_called_next_output_file:Z

.field public volatile test_fail_open_camera:Z

.field public volatile test_runtime_on_video_stop:Z

.field public volatile test_started_next_output_file:Z

.field public volatile test_ticker_called:Z

.field public volatile test_video_cameracontrollerexception:Z

.field public volatile test_video_failure:Z

.field public volatile test_video_ioexception:Z

.field private textureview_h:I

.field private textureview_w:I

.field private tonemap_max_curve_points:I

.field private touch_orig_x:F

.field private touch_orig_y:F

.field private touch_was_multitouch:Z

.field private ui_rotation:I

.field private final using_android_l:Z

.field private using_face_detection:Z

.field private videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

.field private video_accumulated_time:J

.field private video_high_speed:Z

.field private final video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

.field private volatile video_recorder:Landroid/media/MediaRecorder;

.field private video_recorder_is_paused:Z

.field private video_restart_on_max_filesize:Z

.field private video_start_time:J

.field private volatile video_start_time_set:Z

.field private video_time_last_maxfilesize_restart:J

.field private view_angle_x:F

.field private view_angle_y:F

.field private want_focus_peaking:Z

.field private want_histogram:Z

.field private want_preview_bitmap:Z

.field private want_zebra_stripes:Z

.field private white_balances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zebra_stripes_bitmap:Landroid/graphics/Bitmap;

.field private zebra_stripes_bitmap_buffer:Landroid/graphics/Bitmap;

.field private zebra_stripes_color_background:I

.field private zebra_stripes_color_foreground:I

.field private zebra_stripes_threshold:I

.field private zoom_ratios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/preview/ApplicationInterface;Landroid/view/ViewGroup;)V
    .locals 7

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    .line 179
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_to_camera_matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->app_is_paused:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_paused:Z

    .line 197
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_permissions:Z

    .line 244
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    .line 252
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->takePictureTimer:Ljava/util/Timer;

    .line 254
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimer:Ljava/util/Timer;

    .line 256
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->flashVideoTimer:Ljava/util/Timer;

    .line 258
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->battery_ifilter:Landroid/content/IntentFilter;

    .line 259
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->batteryCheckVideoTimer:Ljava/util/Timer;

    const/4 v2, -0x1

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    .line 346
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    invoke-direct {v3}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 350
    new-instance v3, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v3}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_flash_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 351
    new-instance v3, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v3}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 352
    new-instance v3, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v3}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->pause_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 359
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->face_rect:Landroid/graphics/RectF;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    iput-wide v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_started_time:J

    const/4 v5, 0x3

    iput v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const-string v6, ""

    iput-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iput-wide v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused_time:J

    new-array v3, v5, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->gravity:[F

    new-array v3, v5, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->geomagnetic:[F

    const/16 v3, 0x9

    new-array v4, v3, [F

    iput-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->deviceRotation:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraRotation:[F

    new-array v3, v3, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->deviceInclination:[F

    new-array v3, v5, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->geo_direction:[F

    new-array v3, v5, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->new_geo_direction:[F

    .line 395
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.#"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->decimal_format_1dp:Ljava/text/DecimalFormat;

    .line 399
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->decimal_format_2dp_force0:Ljava/text/DecimalFormat;

    .line 405
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_handler:Landroid/os/Handler;

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    .line 7784
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->fake_toast_handler:Landroid/os/Handler;

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->active_fake_toast:Landroid/widget/TextView;

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 443
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 444
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 446
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "test_project"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_test:Z

    .line 447
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "test_project_junit4"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_test_junit4:Z

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 454
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->useCamera2()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v0, :cond_2

    .line 467
    new-instance p1, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;-><init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 469
    new-instance p1, Lnet/sourceforge/opencamera/preview/CanvasView;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/sourceforge/opencamera/preview/CanvasView;-><init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->canvasView:Lnet/sourceforge/opencamera/preview/CanvasView;

    .line 470
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    goto :goto_1

    .line 473
    :cond_2
    new-instance p1, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;-><init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 474
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    .line 482
    :goto_1
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->gestureDetector:Landroid/view/GestureDetector;

    .line 483
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;

    invoke-direct {v0, p0, v2}, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$1;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 484
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 486
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->canvasView:Lnet/sourceforge/opencamera/preview/CanvasView;

    if-eqz p1, :cond_3

    .line 488
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method static synthetic access$1000(Lnet/sourceforge/opencamera/preview/Preview;Landroid/view/MotionEvent;Z)Z
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->handleSingleTouch(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1402(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;)Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    return-object p1
.end method

.method static synthetic access$1502(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;)Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->close_camera_task:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    return-object p1
.end method

.method static synthetic access$1600(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->openCamera()V

    return-void
.end method

.method static synthetic access$1700(Lnet/sourceforge/opencamera/preview/Preview;I)Lnet/sourceforge/opencamera/cameracontroller/CameraController;
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->openCameraCore(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cameraOpened()V

    return-void
.end method

.method static synthetic access$1902(Lnet/sourceforge/opencamera/preview/Preview;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->open_camera_task:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    return-object p0
.end method

.method static synthetic access$202(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/cameracontroller/CameraController;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    return-object p1
.end method

.method static synthetic access$2100(Lnet/sourceforge/opencamera/preview/Preview;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$2200(Lnet/sourceforge/opencamera/preview/Preview;ZZZ)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/preview/Preview;->takePicture(ZZZ)V

    return-void
.end method

.method static synthetic access$2300(Lnet/sourceforge/opencamera/preview/Preview;ZZ)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->tryAutoFocus(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lnet/sourceforge/opencamera/preview/Preview;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    return-object p0
.end method

.method static synthetic access$2502(Lnet/sourceforge/opencamera/preview/Preview;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    return-object p1
.end method

.method static synthetic access$2700(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Matrix;
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraToPreviewMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/RectF;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->face_rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2900(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    return-object p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    return p0
.end method

.method static synthetic access$3000(Lnet/sourceforge/opencamera/preview/Preview;)I
    .locals 0

    .line 134
    iget p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->ui_rotation:I

    return p0
.end method

.method static synthetic access$3100(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->continuous_focus_move_is_started:Z

    return p0
.end method

.method static synthetic access$3102(Lnet/sourceforge/opencamera/preview/Preview;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->continuous_focus_move_is_started:Z

    return p1
.end method

.method static synthetic access$3200(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$3202(Lnet/sourceforge/opencamera/preview/Preview;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimerTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic access$3300(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$3500(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->restartVideo(Z)V

    return-void
.end method

.method static synthetic access$3600(Lnet/sourceforge/opencamera/preview/Preview;II)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->onVideoInfo(II)V

    return-void
.end method

.method static synthetic access$3700(Lnet/sourceforge/opencamera/preview/Preview;II)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->onVideoError(II)V

    return-void
.end method

.method static synthetic access$3800(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->flashVideoTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$3900(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->flashVideo()V

    return-void
.end method

.method static synthetic access$4000(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/IntentFilter;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->battery_ifilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic access$402(Lnet/sourceforge/opencamera/preview/Preview;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    return p1
.end method

.method static synthetic access$4100(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->batteryCheckVideoTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$4200(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V

    return-void
.end method

.method static synthetic access$4300(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->ensureFlashCorrect()V

    return-void
.end method

.method static synthetic access$4400(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->prepareAutoFocusPhoto()V

    return-void
.end method

.method static synthetic access$4500(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    return p0
.end method

.method static synthetic access$4602(Lnet/sourceforge/opencamera/preview/Preview;I)I
    .locals 0

    .line 134
    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    return p1
.end method

.method static synthetic access$4700(Lnet/sourceforge/opencamera/preview/Preview;)I
    .locals 0

    .line 134
    iget p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    return p0
.end method

.method static synthetic access$4800(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->setPreviewPaused(Z)V

    return-void
.end method

.method static synthetic access$4900(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->continuousFocusReset()V

    return-void
.end method

.method static synthetic access$5000(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->takeRemainingRepeatPhotos()V

    return-void
.end method

.method static synthetic access$502(Lnet/sourceforge/opencamera/preview/Preview;F)F
    .locals 0

    .line 134
    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    return p1
.end method

.method static synthetic access$5100(Lnet/sourceforge/opencamera/preview/Preview;ZZZ)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/preview/Preview;->autoFocusCompleted(ZZZ)V

    return-void
.end method

.method static synthetic access$5202(Lnet/sourceforge/opencamera/preview/Preview;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_runnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->active_fake_toast:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5302(Lnet/sourceforge/opencamera/preview/Preview;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->active_fake_toast:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5400(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->app_is_paused:Z

    return p0
.end method

.method static synthetic access$5500(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/res/Resources;
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/os/Handler;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->fake_toast_handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5700(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->clearActiveFakeToast(Z)V

    return-void
.end method

.method static synthetic access$5802(Lnet/sourceforge/opencamera/preview/Preview;J)J
    .locals 0

    .line 134
    iput-wide p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->last_toast_time_ms:J

    return-wide p1
.end method

.method static synthetic access$5902(Lnet/sourceforge/opencamera/preview/Preview;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->last_toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/List;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6000(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$6100(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap_buffer:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$6200(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$6300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer_temp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->rs:Landroid/renderscript/RenderScript;

    return-object p0
.end method

.method static synthetic access$6402(Lnet/sourceforge/opencamera/preview/Preview;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->rs:Landroid/renderscript/RenderScript;

    return-object p1
.end method

.method static synthetic access$6500(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/ScriptC_histogram_compute;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogramScript:Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    return-object p0
.end method

.method static synthetic access$6502(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/ScriptC_histogram_compute;)Lnet/sourceforge/opencamera/ScriptC_histogram_compute;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogramScript:Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    return-object p1
.end method

.method static synthetic access$6700(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/Preview$HistogramType;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    return-object p0
.end method

.method static synthetic access$6800(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_zebra_stripes:Z

    return p0
.end method

.method static synthetic access$6900(Lnet/sourceforge/opencamera/preview/Preview;)I
    .locals 0

    .line 134
    iget p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_threshold:I

    return p0
.end method

.method static synthetic access$700(Lnet/sourceforge/opencamera/preview/Preview;)I
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->find1xZoom()I

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lnet/sourceforge/opencamera/preview/Preview;)I
    .locals 0

    .line 134
    iget p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_color_foreground:I

    return p0
.end method

.method static synthetic access$7100(Lnet/sourceforge/opencamera/preview/Preview;)I
    .locals 0

    .line 134
    iget p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_color_background:I

    return p0
.end method

.method static synthetic access$7200(Lnet/sourceforge/opencamera/preview/Preview;Z)I
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getDisplayRotationDegrees(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$7300(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_focus_peaking:Z

    return p0
.end method

.method static synthetic access$7402(Lnet/sourceforge/opencamera/preview/Preview;[I)[I
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogram:[I

    return-object p1
.end method

.method static synthetic access$7500(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$7502(Lnet/sourceforge/opencamera/preview/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$7600(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$7602(Lnet/sourceforge/opencamera/preview/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$7702(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;)Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTask:Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    return-object p1
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoOnDoubleTap()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lnet/sourceforge/opencamera/preview/Preview;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    return p0
.end method

.method static synthetic access$902(Lnet/sourceforge/opencamera/preview/Preview;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    return p1
.end method

.method private autoFocusCompleted(ZZZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    .line 6800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    :goto_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    if-nez p2, :cond_2

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6802
    invoke-interface {p2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isTestAlwaysFocus()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused_time:J

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->autofocus_in_continuous_mode:Z

    if-eqz p1, :cond_4

    .line 6807
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6810
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "focus_mode_auto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6811
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$20;

    invoke-direct {p1, p0}, Lnet/sourceforge/opencamera/preview/Preview$20;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_runnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_handler:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    .line 6820
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6823
    :cond_4
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->ensureFlashCorrect()V

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz p1, :cond_5

    .line 6828
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->cancelAutoFocus()V

    .line 6833
    :cond_5
    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    .line 6836
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 6841
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->prepareAutoFocusPhoto()V

    .line 6842
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 6836
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private calculateCameraToPreviewMatrix()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    .line 522
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 526
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v0

    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 527
    :goto_1
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 528
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getDisplayOrientation()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    .line 532
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 538
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v0

    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v0, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 539
    :goto_3
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 540
    invoke-direct {p0, v3}, Lnet/sourceforge/opencamera/preview/Preview;->getDisplayRotationDegrees(Z)I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 541
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraOrientation()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    int-to-float v1, v1

    .line 546
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 550
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    invoke-interface {v3}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 551
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    invoke-interface {v3}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private calculateGeoDirection()V
    .locals 7

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_gravity:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_geomagnetic:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->deviceRotation:[F

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->deviceInclination:[F

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->gravity:[F

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->geomagnetic:[F

    .line 7030
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->deviceRotation:[F

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraRotation:[F

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 7033
    invoke-static {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_geo_direction:Z

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_geo_direction:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraRotation:[F

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->new_geo_direction:[F

    .line 7037
    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->geo_direction:[F

    .line 7043
    aget v2, v2, v1

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->new_geo_direction:[F

    .line 7044
    aget v4, v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    if-eqz v0, :cond_2

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x41200000    # 10.0f

    .line 7046
    invoke-direct {p0, v2, v4, v5, v6}, Lnet/sourceforge/opencamera/preview/Preview;->lowPassFilter(FFFF)F

    move-result v4

    :cond_2
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->geo_direction:[F

    float-to-double v4, v4

    .line 7051
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private calculatePreviewToCameraMatrix()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->calculateCameraToPreviewMatrix()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_to_camera_matrix:Landroid/graphics/Matrix;

    .line 558
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private calculateTargetRatioForPreview(Landroid/graphics/Point;)D
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3820
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getPreviewSizePref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_preview_size_wysiwyg"

    .line 3823
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3846
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz p1, :cond_2

    .line 3827
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object p1

    .line 3830
    iget v0, p1, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    int-to-double v0, v0

    iget p1, p1, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3835
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    .line 3838
    iget v0, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v0, v0

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    div-double/2addr v0, v2

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_targetRatio:D

    return-wide v0
.end method

.method private cameraOpened()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_2

    .line 1871
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1883
    sget-boolean v1, Lnet/sourceforge/opencamera/TakePhoto;->TAKE_PHOTO:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1885
    sput-boolean v2, Lnet/sourceforge/opencamera/TakePhoto;->TAKE_PHOTO:Z

    .line 1889
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setCameraDisplayOrientation()V

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v2, :cond_1

    .line 1893
    new-instance v2, Lnet/sourceforge/opencamera/preview/Preview$4;

    invoke-direct {v2, p0, v0}, Lnet/sourceforge/opencamera/preview/Preview$4;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Landroid/content/Context;)V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 1899
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1907
    invoke-interface {v0, v2}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->setPreviewDisplay(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V

    .line 1912
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->setupCamera(Z)V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v0, :cond_2

    .line 1914
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->configureTransform()V

    :cond_2
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    .line 6773
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->cancelAutoFocus()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6774
    invoke-direct {p0, v1, v1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->autoFocusCompleted(ZZZ)V

    :cond_0
    return-void
.end method

.method private cancelRefreshPreviewBitmap()V
    .locals 2

    .line 8783
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTaskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTask:Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    const/4 v1, 0x1

    .line 8784
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public static chooseBestPreviewFps(Ljava/util/List;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 4635
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 4639
    aget v6, v4, v6

    .line 4640
    aget v4, v4, v5

    const/16 v5, 0x7530

    if-lt v4, v5, :cond_0

    if-eq v2, v1, :cond_2

    if-ge v6, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v2, :cond_0

    if-le v4, v3, :cond_0

    :cond_2
    :goto_1
    move v3, v4

    move v2, v6

    goto :goto_0

    :cond_3
    if-eq v2, v1, :cond_4

    goto :goto_4

    .line 4661
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 4662
    aget v7, v4, v6

    .line 4663
    aget v4, v4, v5

    sub-int v8, v4, v7

    if-eq v0, v1, :cond_7

    if-le v8, v0, :cond_6

    goto :goto_3

    :cond_6
    if-ne v8, v0, :cond_5

    if-le v4, v3, :cond_5

    :cond_7
    :goto_3
    move v3, v4

    move v2, v7

    move v0, v8

    goto :goto_2

    :cond_8
    :goto_4
    filled-new-array {v2, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method private clearActiveFakeToast(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->fake_toast_handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 7798
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7801
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 7802
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$21;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$21;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V
    .locals 3

    .line 1405
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->removePendingContinuousFocusReset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    const/4 v1, 0x3

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_started_time:J

    .line 1409
    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    .line 1413
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_targetRatio:D

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->continuous_focus_move_is_started:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->continuous_focus_move_is_started:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1420
    invoke-interface {v1, v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onContinuousFocusMove(Z)V

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1422
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraClosed()V

    .line 1423
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelTimer()V

    .line 1424
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelRepeat()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 1430
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    .line 1435
    :cond_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocusForVideo()Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v1, :cond_4

    .line 1442
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->pausePreview(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz p1, :cond_2

    .line 1450
    sget-object p1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1451
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    invoke-direct {p1, p0, v1, p2}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/cameracontroller/CameraController;Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->close_camera_task:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    new-array p2, v0, [Ljava/lang/Void;

    .line 1452
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1458
    :cond_2
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->stopPreview()V

    .line 1462
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->release()V

    .line 1463
    sget-object p1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 1475
    invoke-interface {p2}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;->onClosed()V

    :cond_4
    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz p1, :cond_5

    .line 1482
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->orientationEventListener:Landroid/view/OrientationEventListener;

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 1413
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private configureTransform()V
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_preview_size:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_textureview_size:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    const/4 v1, 0x1

    .line 1126
    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getDisplayRotation(Z)I

    move-result v0

    .line 1129
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1130
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_w:I

    int-to-float v4, v4

    iget v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_h:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1131
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    int-to-float v5, v5

    iget v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    int-to-float v7, v7

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1132
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 1133
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/4 v7, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_3

    const/high16 v0, 0x43340000    # 180.0f

    .line 1144
    invoke-virtual {v2, v0, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 1135
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v1, v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v6, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 1136
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_h:I

    int-to-float v1, v1

    iget v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_w:I

    int-to-float v3, v3

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1137
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1140
    invoke-virtual {v2, v1, v1, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 1141
    invoke-virtual {v2, v0, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 1146
    invoke-interface {v0, v2}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->setTransform(Landroid/graphics/Matrix;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private continuousFocusReset()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->autofocus_in_continuous_mode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->autofocus_in_continuous_mode:Z

    .line 6755
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6756
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "focus_mode_auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6757
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->cancelAutoFocus()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6760
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createFocusPeakingBitmap()V
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_focus_peaking:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 8224
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    .line 8225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer_temp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Preview"

    const-string v2, "failed to create focus_peaking_bitmap_buffers"

    .line 8229
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8230
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private createVideoFile(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5722
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->createOutputVideoMethod()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v1

    .line 5727
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5730
    invoke-interface {v2, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->createOutputVideoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 5731
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_1

    .line 5737
    :cond_0
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5738
    invoke-interface {v2, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->createOutputVideoSAF(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 5740
    :cond_1
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5741
    invoke-interface {v2, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->createOutputVideoMediaStore(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5744
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->createOutputVideoUri()Landroid/net/Uri;

    move-result-object p1

    .line 5748
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    move-object v2, v0

    .line 5752
    :goto_1
    :try_start_1
    new-instance v4, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {v4, v1, p1, v2, v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v4

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v0

    .line 5757
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 5764
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 5767
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_4

    .line 5764
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 5767
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5770
    :cond_4
    :goto_5
    throw p1
.end method

.method private createZebraStripesBitmap()V
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_zebra_stripes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 8189
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap_buffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Preview"

    const-string v2, "failed to create zebra_stripes_bitmap_buffer"

    .line 8193
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8194
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private ensureFlashCorrect()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    .line 6780
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    .line 6783
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private failedToStartVideoRecorder(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6149
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onVideoRecordStartError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6150
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6151
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 6154
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    .line 6155
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    const/4 v1, 0x1

    .line 6156
    invoke-interface {v0, p1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    .line 6157
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->reconnectCamera(Z)V

    return-void
.end method

.method private find1xZoom()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 2280
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 2281
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private findEntryForValue(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 5156
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 5157
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 5158
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 5161
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5164
    aget-object p1, p2, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private flashVideo()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5474
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 5475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 5477
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "flash_torch"

    .line 5480
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 5482
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5484
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5485
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    return-void

    .line 5489
    :cond_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5490
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    .line 5492
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5495
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5498
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5499
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    return-void
.end method

.method private focusIsVideo()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    .line 4857
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->focusIsVideo()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static formatFloatToString(F)Ljava/lang/String;
    .locals 3

    float-to-int v0, p0

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 3729
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3730
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.2f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private freeFocusPeakingBitmap()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8203
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->recycleBitmapForPreviewTask(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer_temp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 8207
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->recycleBitmapForPreviewTask(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer_temp:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private freePreviewBitmap()V
    .locals 2

    .line 8116
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelRefreshPreviewBitmap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogram:[I

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 8119
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->recycleBitmapForPreviewTask(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    .line 8124
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freeZebraStripesBitmap()V

    .line 8125
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freeFocusPeakingBitmap()V

    return-void
.end method

.method private freeZebraStripesBitmap()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap_buffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8172
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->recycleBitmapForPreviewTask(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap_buffer:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 8176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private getAreas(FF)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/ArrayList<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation

    .line 582
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    float-to-int p1, p1

    add-int/lit8 v1, p1, -0x32

    .line 583
    iput v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, 0x32

    .line 584
    iput p1, v0, Landroid/graphics/Rect;->right:I

    float-to-int p1, p2

    add-int/lit8 p2, p1, -0x32

    .line 585
    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, 0x32

    .line 586
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 587
    iget p1, v0, Landroid/graphics/Rect;->left:I

    const/16 p2, 0x3e8

    const/16 v1, -0x3e8

    if-ge p1, v1, :cond_0

    .line 588
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 589
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, 0x64

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 591
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_1

    .line 592
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 593
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, -0x64

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 595
    :cond_1
    :goto_0
    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v1, :cond_2

    .line 596
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 597
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, 0x64

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 599
    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_3

    .line 600
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 601
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, -0x64

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 604
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    invoke-direct {v1, v0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private getAspectRatio()D
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->aspect_ratio:D

    return-wide v0
.end method

.method private static getAspectRatio(II)Ljava/lang/String;
    .locals 1

    .line 3743
    invoke-static {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->greatestCommonFactor(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 3746
    div-int/2addr p0, v0

    .line 3747
    div-int/2addr p1, v0

    .line 3749
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAspectRatioMPString(Landroid/content/res/Resources;IIZ)Ljava/lang/String;
    .locals 2

    .line 3763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->getAspectRatio(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->getMPString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3}, Lnet/sourceforge/opencamera/preview/Preview;->getBurstString(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBurstString(Landroid/content/res/Resources;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 3759
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCamcorderProfileDescriptionType(Landroid/media/CamcorderProfile;)Ljava/lang/String;
    .locals 3

    .line 3769
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x870

    if-ne v0, v1, :cond_0

    const-string p1, "4K"

    goto/16 :goto_0

    .line 3772
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_1

    const-string p1, "FullHD"

    goto :goto_0

    .line 3775
    :cond_1
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v2, :cond_2

    const-string p1, "HD"

    goto :goto_0

    .line 3778
    :cond_2
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v2, :cond_3

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v1, :cond_3

    const-string p1, "SD"

    goto :goto_0

    .line 3781
    :cond_3
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x280

    if-ne v0, v2, :cond_4

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v1, :cond_4

    const-string p1, "VGA"

    goto :goto_0

    .line 3784
    :cond_4
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x160

    if-ne v0, v1, :cond_5

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x120

    if-ne v0, v1, :cond_5

    const-string p1, "CIF"

    goto :goto_0

    .line 3787
    :cond_5
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_6

    const-string p1, "QVGA"

    goto :goto_0

    .line 3790
    :cond_6
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_7

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v0, 0x90

    if-ne p1, v0, :cond_7

    const-string p1, "QCIF"

    goto :goto_0

    :cond_7
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private getCameraToPreviewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 565
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->calculateCameraToPreviewMatrix()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static getClosestSize(Ljava/util/List;DLnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;D",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ")",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    .line 3862
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 3863
    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v4, v4

    iget v6, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    if-eqz p3, :cond_1

    .line 3865
    iget v6, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v7, p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-gt v6, v7, :cond_0

    iget v6, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    iget v7, p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    if-le v6, v7, :cond_1

    goto :goto_0

    :cond_1
    sub-double/2addr v4, p1

    .line 3868
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v1

    if-gez v8, :cond_0

    .line 3870
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    move-wide v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1236
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceDefaultOrientation()I
    .locals 5

    .line 4103
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4104
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4105
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 4106
    :cond_0
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_4

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    :cond_2
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v2
.end method

.method private getDisplayRotationDegrees(Z)I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4032
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getDisplayRotation(Z)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :cond_3
    :goto_0
    return v0
.end method

.method private getImageVideoRotation()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4122
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getLockOrientationPref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    .line 4123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4124
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraOrientation()I

    move-result v0

    .line 4125
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getDeviceDefaultOrientation()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4129
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v1

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x5a

    .line 4130
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x10e

    .line 4133
    rem-int/lit16 v0, v0, 0x168

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "portrait"

    .line 4144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4145
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraOrientation()I

    move-result v0

    .line 4147
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getDeviceDefaultOrientation()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4154
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v1

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v1, v2, :cond_4

    add-int/lit16 v0, v0, 0x10e

    .line 4155
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x5a

    .line 4158
    rem-int/lit16 v0, v0, 0x168

    :goto_1
    return v0

    :cond_5
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_rotation:I

    return v0
.end method

.method public static getMPString(II)Ljava/lang/String;
    .locals 0

    mul-int p0, p0, p1

    int-to-float p0, p0

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr p0, p1

    .line 3754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnet/sourceforge/opencamera/preview/Preview;->formatFloatToString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MP"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalVideoPictureSize(Ljava/util/List;DLnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;D",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ")",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3980
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 3983
    iget v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v3, v3

    iget v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    .line 3984
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3fa999999999999aL    # 0.05

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    goto :goto_0

    .line 3986
    :cond_2
    iget v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v4, p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-gt v3, v4, :cond_1

    iget v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    iget v4, p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    if-le v3, v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 3988
    iget v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-le v3, v4, :cond_1

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 3996
    invoke-static {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/preview/Preview;->getClosestSize(Ljava/util/List;DLnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 507
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static greatestCommonFactor(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-lez p0, :cond_0

    .line 3736
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private handleSingleTouch(Landroid/view/MotionEvent;Z)Z
    .locals 6

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez v0, :cond_1

    .line 701
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    .line 703
    :cond_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 705
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getTouchCapturePref()Z

    move-result v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    if-nez v4, :cond_2

    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 710
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v2, v1

    .line 717
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->calculatePreviewToCameraMatrix()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_to_camera_matrix:Landroid/graphics/Matrix;

    .line 718
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v2, v3

    aget v2, v2, v1

    .line 721
    invoke-direct {p0, p1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->getAreas(FF)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 723
    invoke-virtual {v5, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusAndMeteringArea(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_camera_x:F

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_camera_y:F

    :cond_2
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 745
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->requestTakePhoto()V

    return v1

    :cond_3
    if-nez p2, :cond_4

    .line 751
    invoke-direct {p0, v3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->tryAutoFocus(ZZ)V

    :cond_4
    return v1
.end method

.method private hasAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_aspect_ratio:Z

    return v0
.end method

.method private initCameraParameters()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2337
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getSceneModePref()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2341
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setSceneMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2343
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->scene_modes:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2345
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-interface {v1, v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setSceneModePref(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2349
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->clearSceneModePref()V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2357
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraFeatures()Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;

    move-result-object v0

    .line 2359
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->minimum_focus_distance:F

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->minimum_focus_distance:F

    .line 2360
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_face_detection:Z

    .line 2361
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_burst_resolution:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    move-object v4, v2

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2365
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2366
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    if-eqz v4, :cond_1

    .line 2367
    iget v6, v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v7, v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v6, v6, v7

    iget v7, v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v8, v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v7, v7, v8

    if-le v6, v7, :cond_2

    :cond_1
    move-object v4, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 2372
    iput-boolean v3, v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supports_burst:Z

    .line 2374
    :cond_4
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 2375
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    .line 2376
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_num_focus_areas:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_num_focus_areas:I

    .line 2377
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_exposure_lock_supported:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_lock_supported:Z

    .line 2378
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_white_balance_lock_supported:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_lock_supported:Z

    .line 2379
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_optical_stabilization_supported:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_optical_stabilization:Z

    .line 2380
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_video_stabilization_supported:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_stabilization:Z

    .line 2381
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_photo_video_recording_supported:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_photo_video_recording:Z

    .line 2382
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->can_disable_shutter_sound:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->can_disable_shutter_sound:Z

    .line 2383
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->tonemap_max_curve_points:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->tonemap_max_curve_points:I

    .line 2384
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_tonemap_curve:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_tonemap_curve:Z

    .line 2385
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->apertures:[F

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_apertures:[F

    .line 2386
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_white_balance_temperature:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_white_balance_temperature:Z

    .line 2387
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_temperature:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_temperature:I

    .line 2388
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_temperature:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_temperature:I

    .line 2389
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_iso_range:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_iso_range:Z

    .line 2390
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_iso:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_iso:I

    .line 2391
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_iso:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_iso:I

    .line 2392
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_exposure_time:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_exposure_time:Z

    .line 2393
    iget-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure_time:J

    iput-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure_time:J

    .line 2394
    iget-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure_time:J

    iput-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure_time:J

    .line 2395
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    .line 2396
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    .line 2397
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->exposure_step:F

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->exposure_step:F

    .line 2398
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_expo_bracketing:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_expo_bracketing:Z

    .line 2399
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_expo_bracketing_n_images:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_expo_bracketing_n_images:I

    .line 2400
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_focus_bracketing:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_focus_bracketing:Z

    .line 2401
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_burst:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_burst:Z

    .line 2402
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_raw:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_raw:Z

    .line 2403
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_x:F

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    .line 2404
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_y:F

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    .line 2405
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes_high_speed:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes_high_speed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 2406
    iget-object v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    invoke-virtual {v1, v5}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setVideoSizes(Ljava/util/List;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 2407
    iget-object v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes_high_speed:Ljava/util/List;

    invoke-virtual {v1, v5}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setVideoSizesHighSpeed(Ljava/util/List;)V

    .line 2408
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->preview_sizes:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_preview_sizes:Ljava/util/List;

    .line 2409
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_extensions:Ljava/util/List;

    .line 2410
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions_zoom:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_extensions_zoom:Ljava/util/List;

    .line 2416
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_supports_zoom:Z

    .line 2417
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->allowZoom()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    if-eqz v4, :cond_7

    .line 2419
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_zoom:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    .line 2420
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->zoom_ratios:Ljava/util/List;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    goto :goto_4

    :cond_7
    iput v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    :goto_4
    return-void
.end method

.method private initialiseVideoQuality()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3336
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraId()I

    move-result v0

    .line 3337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    .line 3339
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3340
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3342
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    const/16 v3, 0x8

    .line 3345
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3346
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3347
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3348
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x6

    .line 3351
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3352
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3354
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x5

    .line 3356
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3357
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3358
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3359
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x4

    .line 3361
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3362
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3363
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3364
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v3, 0x3

    .line 3366
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3367
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3369
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v3, 0x7

    .line 3371
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3372
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3374
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v3, 0x2

    .line 3376
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3377
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3379
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v5, v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v3, 0x0

    .line 3381
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3382
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 3383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3384
    new-instance v3, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v4, v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3386
    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->initialiseVideoQualityFromProfiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private initialiseVideoSizes()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3332
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->sortVideoSizes()V

    return-void
.end method

.method public static isFlashSupportedForVideo(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "flash_off"

    .line 4936
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flash_torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flash_frontscreen_torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lowPassFilter(FFFF)F
    .locals 3

    sub-float v0, p2, p1

    .line 7065
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    cmpl-float p4, v1, p4

    if-lez p4, :cond_0

    goto :goto_1

    :cond_0
    mul-float p3, p3, v0

    add-float p2, p1, p3

    goto :goto_1

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    sub-float v1, v0, v1

    cmpl-float p4, v1, p4

    if-lez p4, :cond_2

    goto :goto_1

    :cond_2
    cmpl-float p4, p1, p2

    if-lez p4, :cond_3

    add-float/2addr p2, v0

    sub-float/2addr p2, p1

    rem-float/2addr p2, v0

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    goto :goto_0

    :cond_3
    sub-float p2, v0, p2

    add-float/2addr p2, p1

    rem-float/2addr p2, v0

    mul-float p3, p3, p2

    sub-float/2addr p1, p3

    :goto_0
    add-float/2addr p1, v0

    rem-float p2, p1, v0

    :goto_1
    return p2
.end method

.method public static matchPreviewFpsToVideo(Ljava/util/List;I)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I)[I"
        }
    .end annotation

    .line 4581
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 4585
    aget v7, v5, v7

    .line 4586
    aget v5, v5, v6

    if-gt v7, p1, :cond_0

    if-lt v5, p1, :cond_0

    sub-int v6, v5, v7

    if-eq v3, v1, :cond_1

    if-ge v6, v3, :cond_0

    :cond_1
    move v4, v5

    move v3, v6

    move v2, v7

    goto :goto_0

    :cond_2
    if-eq v2, v1, :cond_3

    goto :goto_3

    .line 4604
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v3, -0x1

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 4605
    aget v8, v5, v7

    .line 4606
    aget v5, v5, v6

    sub-int v9, v5, v8

    if-ge v5, p1, :cond_5

    sub-int v10, p1, v5

    goto :goto_2

    :cond_5
    sub-int v10, v8, p1

    :goto_2
    if-eq v0, v1, :cond_6

    if-lt v10, v0, :cond_6

    if-ne v10, v0, :cond_4

    if-ge v9, v3, :cond_4

    :cond_6
    move v4, v5

    move v2, v8

    move v3, v9

    move v0, v10

    goto :goto_1

    :cond_7
    :goto_3
    filled-new-array {v2, v4}, [I

    move-result-object p0

    return-object p0
.end method

.method private mySurfaceChanged()V
    .locals 0

    return-void
.end method

.method private mySurfaceCreated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    .line 999
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->openCamera()V

    return-void
.end method

.method private mySurfaceDestroyed()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    const/4 v1, 0x0

    .line 1006
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x2d

    .line 4082
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    .line 4083
    rem-int/lit16 v1, p1, 0x168

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_orientation:I

    .line 4085
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraOrientation()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4086
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v1

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v1, v2, :cond_2

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    .line 4087
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_2
    add-int/2addr v0, p1

    .line 4090
    rem-int/lit16 v0, v0, 0x168

    :goto_0
    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_rotation:I

    if-eq v0, p1, :cond_3

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_rotation:I

    :cond_3
    return-void
.end method

.method private onVideoError(II)V
    .locals 1

    const/4 v0, 0x0

    .line 5639
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5640
    invoke-interface {v0, p1, p2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onVideoError(II)V

    return-void
.end method

.method private onVideoInfo(II)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Preview"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_4

    const/16 v0, 0x322

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_restart_on_max_filesize:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5515
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoMaxDurationPref()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5534
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoMaxFileSizePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;
    :try_end_0
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 5542
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v0

    .line 5543
    iget-object v4, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    const-string v5, "3gp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v3, :cond_9

    .line 5550
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->createVideoFile(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5557
    :try_start_1
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v3

    sget-object v4, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 5558
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaRecorder;Ljava/io/File;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 5561
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$3400(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;)V

    :goto_1
    iput-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_called_next_output_file:Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string v3, "failed to setNextOutputFile"

    .line 5569
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5570
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 5571
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->close()V

    goto/16 :goto_2

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    const/16 v0, 0x323

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_restart_on_max_filesize:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    if-nez v0, :cond_5

    const-string v0, "received MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED but nextVideoFileInfo is null"

    .line 5583
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 5586
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->close()V

    .line 5587
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoTime(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_time_last_maxfilesize_restart:J

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 5588
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v4}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->restartedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_started_next_output_file:Z

    goto :goto_2

    :cond_6
    const/16 v0, 0x321

    if-ne p1, v0, :cond_7

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_restart_on_max_filesize:Z

    if-eqz v1, :cond_7

    .line 5599
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5600
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$10;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$10;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    const/16 v1, 0x320

    if-ne p1, v1, :cond_8

    .line 5616
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5617
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$11;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$11;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    if-ne p1, v0, :cond_9

    .line 5631
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5633
    invoke-interface {v0, p1, p2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onVideoInfo(II)V

    return-void
.end method

.method private openCamera()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1569
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isPreviewInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1578
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1583
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_2

    const-string v0, "Preview"

    const-string v1, "tried to open camera while camera is still closing in background thread"

    .line 1584
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_preview_size:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    const/4 v1, 0x3

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_started_time:J

    .line 1596
    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    .line 1600
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_targetRatio:D

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->scene_modes:Ljava/util/List;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_supports_zoom:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    const/4 v2, 0x0

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->minimum_focus_distance:F

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_face_detection:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_optical_stabilization:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_stabilization:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_photo_video_recording:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->can_disable_shutter_sound:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->tonemap_max_curve_points:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_tonemap_curve:Z

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->color_effects:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->white_balances:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->antibanding:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->edge_modes:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->noise_reduction_modes:Ljava/util/List;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->isos:Ljava/util/List;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_white_balance_temperature:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_temperature:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_temperature:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_iso_range:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_iso:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_iso:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_exposure_time:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure_time:J

    iput-wide v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure_time:J

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->exposures:Ljava/util/List;

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->exposure_step:F

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_expo_bracketing:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_expo_bracketing_n_images:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_focus_bracketing:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_burst:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_raw:Z

    const/high16 v2, 0x425c0000    # 55.0f

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    const/high16 v2, 0x422c0000    # 43.0f

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_capture_rate_factor:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 1653
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->resetCurrentQuality()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_num_focus_areas:I

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1659
    invoke-interface {v1, v0, v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1661
    invoke-interface {v1, v0, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    :cond_3
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_paused:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_7

    .line 1679
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.CAMERA"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_permissions:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1683
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->requestCameraPermission()V

    return-void

    :cond_6
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1687
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->needsStoragePermission()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_permissions:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1691
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->requestStoragePermission()V

    return-void

    :cond_7
    iput-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_permissions:Z

    .line 1710
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1711
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getCameraIdPref()I

    move-result v1

    if-ltz v1, :cond_8

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    .line 1712
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v3

    if-lt v1, v3, :cond_9

    :cond_8
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1716
    invoke-interface {v1, v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setCameraIdPref(I)V

    const/4 v1, 0x0

    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_a

    .line 1735
    new-instance v2, Lnet/sourceforge/opencamera/preview/Preview$1;

    invoke-direct {v2, p0, v1}, Lnet/sourceforge/opencamera/preview/Preview$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview;I)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1777
    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/preview/Preview$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->open_camera_task:Landroid/os/AsyncTask;

    goto :goto_0

    .line 1780
    :cond_a
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->openCameraCore(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1785
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cameraOpened()V

    .line 1786
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 1600
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openCameraCore(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController;
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_fail_open_camera:Z

    if-nez v0, :cond_1

    .line 1816
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$2;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$2;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1833
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$3;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$3;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    .line 1840
    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;-><init>(Landroid/content/Context;ILnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1841
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->useCamera2FakeFlash()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1842
    invoke-virtual {v2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setUseCamera2FakeFlash(Z)V

    goto :goto_0

    .line 1846
    :cond_0
    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-direct {v2, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;-><init>(ILnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    goto :goto_0

    .line 1814
    :cond_1
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1852
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return-object v2
.end method

.method private prepareAutoFocusPhoto()V
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6323
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 6325
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "flash_auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flash_red_eye"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x64

    .line 6329
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6332
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private recentlyFocused()Z
    .locals 6

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    if-eqz v0, :cond_0

    .line 8970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused_time:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reconnectCamera(Z)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1302
    :try_start_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->reconnect()V

    .line 1303
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->setPreviewPaused(Z)V
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1308
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1309
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onFailedReconnectError()V

    .line 1310
    invoke-direct {p0, v2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    .line 1313
    :goto_0
    :try_start_1
    invoke-direct {p0, v2, v2}, Lnet/sourceforge/opencamera/preview/Preview;->tryAutoFocus(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1318
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    if-nez p1, :cond_0

    .line 1324
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1325
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onVideoRecordStopError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1327
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->release()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1329
    sget-object p1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1330
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->openCamera()V

    :cond_1
    :goto_1
    return-void
.end method

.method private recreatePreviewBitmap()V
    .locals 5

    .line 8134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freePreviewBitmap()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_preview_bitmap:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_w:I

    .line 8138
    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_h:I

    .line 8139
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    .line 8140
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->getDisplayRotationDegrees(Z)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    .line 8155
    :cond_1
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Preview"

    const-string v2, "failed to create preview_bitmap"

    .line 8158
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8159
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 8163
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->createZebraStripesBitmap()V

    .line 8164
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->createFocusPeakingBitmap()V

    :cond_2
    return-void
.end method

.method private recycleBitmapForPreviewTask(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 8083
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTaskIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8086
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 8093
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8095
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$23;

    invoke-direct {v1, p0, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview$23;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Landroid/graphics/Bitmap;Landroid/os/Handler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private refreshPreviewBitmap()V
    .locals 9

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_zebra_stripes:Z

    const-wide/16 v1, 0xc8

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_focus_peaking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v3, 0x53

    .line 8754
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_preview_bitmap:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v0, v7, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_paused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 8756
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isPreviewInBackground()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8757
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTaskIsRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->last_preview_bitmap_time_ms:J

    add-long/2addr v7, v3

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_histogram:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-wide v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->last_histogram_time_ms:J

    add-long/2addr v7, v1

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-wide v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->last_preview_bitmap_time_ms:J

    if-eqz v0, :cond_3

    iput-wide v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->last_histogram_time_ms:J

    .line 8775
    :cond_3
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    invoke-direct {v1, p0, v0}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTask:Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    new-array v0, v3, [Ljava/lang/Void;

    .line 8776
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method

.method private removePendingContinuousFocusReset()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_handler:Landroid/os/Handler;

    .line 6740
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->reset_continuous_focus_runnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private restartVideo(Z)V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    :goto_0
    const/4 v2, 0x1

    .line 1256
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1266
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoMaxDurationPref()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    if-lez v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100326

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 1283
    :goto_1
    invoke-direct {p0, p1, v3, v3}, Lnet/sourceforge/opencamera/preview/Preview;->takePicture(ZZZ)V

    if-nez p1, :cond_5

    .line 1285
    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    sub-int/2addr p1, v2

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    goto :goto_2

    :cond_4
    iput v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    :cond_5
    :goto_2
    return-void
.end method

.method private setAspectRatio(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_aspect_ratio:Z

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->aspect_ratio:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->aspect_ratio:D

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 4014
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->canvasView:Lnet/sourceforge/opencamera/preview/CanvasView;

    if-eqz p1, :cond_0

    .line 4016
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/CanvasView;->requestLayout()V

    :cond_0
    return-void

    .line 4007
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private setFlash(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    .line 5096
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5097
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    return-void
.end method

.method private setFocusPref(Z)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    .line 4865
    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFocusPref(Z)Ljava/lang/String;

    move-result-object v0

    .line 4866
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 4869
    invoke-direct {p0, v0, v3, v2, p1}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(Ljava/lang/String;ZZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4872
    invoke-direct {p0, v2, v3, v3, p1}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(IZZZ)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_1

    const-string v0, "focus_mode_continuous_video"

    goto :goto_0

    :cond_1
    const-string v0, "focus_mode_continuous_picture"

    .line 4880
    :goto_0
    invoke-direct {p0, v0, v3, v3, p1}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(Ljava/lang/String;ZZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4883
    invoke-direct {p0, v2, v3, v3, p1}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(IZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setFocusValue(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    .line 5224
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    .line 5225
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->removePendingContinuousFocusReset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->autofocus_in_continuous_mode:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5227
    invoke-virtual {v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusValue(Ljava/lang/String;)V

    .line 5228
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setupContinuousFocusMove()V

    .line 5229
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->clearFocusAreas()V

    if-eqz p2, :cond_1

    const-string p2, "focus_mode_locked"

    .line 5230
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5231
    invoke-direct {p0, v0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->tryAutoFocus(ZZ)V

    :cond_1
    return-void
.end method

.method private setPreviewFps()V
    .locals 9

    .line 4690
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4691
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4692
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4698
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-nez v2, :cond_3

    .line 4717
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Nexus 5"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Nexus 6"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4718
    invoke-interface {v6}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    .line 4723
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v8, :cond_4

    goto :goto_3

    .line 4727
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 4728
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->chooseBestPreviewFps(Ljava/util/List;)[I

    move-result-object v0

    goto :goto_2

    .line 4731
    :cond_5
    iget-wide v5, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    double-to-int v0, v5

    invoke-static {v1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->matchPreviewFpsToVideo(Ljava/util/List;I)[I

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v0, :cond_7

    goto :goto_3

    .line 4749
    :cond_7
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->chooseBestPreviewFps(Ljava/util/List;)[I

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_8

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4755
    aget v1, v5, v3

    aget v2, v5, v4

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setPreviewFpsRange(II)V

    goto :goto_4

    :cond_8
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4758
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->clearPreviewFpsRange()V

    :cond_9
    :goto_4
    return-void
.end method

.method private setPreviewPaused(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6895
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->hasPausedPreview(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6908
    invoke-interface {v0, p1, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    :goto_0
    return-void
.end method

.method private setPreviewSize()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    if-eqz v0, :cond_1

    const-string v0, "Preview"

    const-string v1, "setPreviewSize() shouldn\'t be called when preview is running"

    .line 3281
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-nez v0, :cond_2

    .line 3289
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    :cond_2
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_4

    .line 3295
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-eqz v1, :cond_3

    .line 3302
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v2, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    iget v0, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    goto :goto_0

    .line 3305
    :cond_3
    iget v1, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget v0, v0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 3306
    invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->getOptimalVideoPictureSize(Ljava/util/List;D)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v1

    goto :goto_0

    .line 3310
    :cond_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3313
    iget v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v0, v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setPictureSize(II)V

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_preview_sizes:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 3316
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_preview_sizes:Ljava/util/List;

    .line 3317
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->getOptimalPreviewSize(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3318
    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setPreviewSize(II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_preview_size:Z

    .line 3320
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    .line 3321
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    .line 3322
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v1, v1

    iget v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->setAspectRatio(D)V

    :cond_6
    return-void
.end method

.method private setupCameraParameters()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_face_detection:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2443
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFaceDetectionPref()Z

    move-result v2

    iput-boolean v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    :goto_0
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2624
    new-instance v4, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    invoke-direct {v4, v0}, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFaceDetectionListener(Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2627
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFaceDetectionListener(Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V

    :goto_1
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_stabilization:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2640
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoStabilizationPref()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2643
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setVideoStabilization(Z)V

    :cond_3
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2655
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getColorEffectPref()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2659
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setColorEffect(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2661
    iget-object v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->color_effects:Ljava/util/List;

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2663
    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-interface {v5, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setColorEffectPref(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2667
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->clearColorEffectPref()V

    :goto_3
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2677
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getWhiteBalancePref()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2681
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setWhiteBalance(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2683
    iget-object v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->white_balances:Ljava/util/List;

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2685
    iget-object v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-interface {v5, v6}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setWhiteBalancePref(Ljava/lang/String;)V

    .line 2687
    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    const-string v5, "manual"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_white_balance_temperature:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2688
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getWhiteBalanceTemperaturePref()I

    move-result v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2689
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setWhiteBalanceTemperature(I)Z

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2696
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->clearWhiteBalancePref()V

    :cond_6
    :goto_4
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2706
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getAntiBandingPref()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2710
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAntiBanding(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2714
    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->antibanding:Ljava/util/List;

    :cond_7
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2721
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getEdgeModePref()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2725
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setEdgeMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2729
    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->edge_modes:Ljava/util/List;

    :cond_8
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2736
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getCameraNoiseReductionModePref()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2740
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setNoiseReductionMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2744
    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->noise_reduction_modes:Ljava/util/List;

    :cond_9
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2751
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getISOPref()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2755
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2758
    invoke-virtual {v2, v3, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setManualISO(ZI)V

    goto :goto_6

    :cond_a
    iget-boolean v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_iso_range:Z

    const-string v7, "auto"

    if-eqz v6, :cond_d

    iput-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->isos:Ljava/util/List;

    .line 2765
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2768
    invoke-virtual {v2, v3, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setManualISO(ZI)V

    goto :goto_6

    .line 2771
    :cond_b
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->parseManualISOValue(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_c

    iget-object v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2776
    invoke-virtual {v7, v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setManualISO(ZI)V

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2780
    invoke-virtual {v2, v3, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setManualISO(ZI)V

    move-object v2, v7

    const/4 v6, 0x0

    :goto_5
    iget-object v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2785
    invoke-interface {v7, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setISOPref(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    iget-object v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2790
    invoke-virtual {v6, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setISO(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2792
    iget-object v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->values:Ljava/util/List;

    iput-object v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->isos:Ljava/util/List;

    .line 2793
    iget-object v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v4

    iget-object v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2799
    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-interface {v7, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setISOPref(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2804
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->clearISOPref()V

    :goto_6
    const/4 v6, 0x0

    :goto_7
    const-string v2, "flash_off"

    const/4 v7, -0x1

    if-eqz v6, :cond_18

    iget-boolean v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_exposure_time:Z

    if-eqz v8, :cond_11

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2810
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getExposureTimePref()J

    move-result-wide v8

    .line 2813
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposureTime()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_f

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposureTime()J

    move-result-wide v8

    goto :goto_8

    .line 2815
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposureTime()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_10

    .line 2816
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposureTime()J

    move-result-wide v8

    :cond_10
    :goto_8
    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2817
    invoke-virtual {v10, v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setExposureTime(J)Z

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2819
    invoke-interface {v10, v8, v9}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setExposureTimePref(J)V

    goto :goto_9

    :cond_11
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2823
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->clearExposureTimePref()V

    :goto_9
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v8, :cond_18

    .line 2829
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 2830
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2831
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_b
    const/4 v11, -0x1

    goto :goto_c

    :sswitch_0
    const-string v11, "flash_on"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_b

    :cond_12
    const/4 v11, 0x4

    goto :goto_c

    :sswitch_1
    const-string v11, "flash_torch"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    goto :goto_b

    :cond_13
    const/4 v11, 0x3

    goto :goto_c

    :sswitch_2
    const-string v11, "flash_frontscreen_torch"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_b

    :cond_14
    const/4 v11, 0x2

    goto :goto_c

    :sswitch_3
    const-string v11, "flash_frontscreen_on"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    goto :goto_b

    :cond_15
    const/4 v11, 0x1

    goto :goto_c

    :sswitch_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_c
    packed-switch v11, :pswitch_data_0

    goto :goto_a

    .line 2837
    :pswitch_0
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    iput-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    :cond_18
    iput-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->exposures:Ljava/util/List;

    iget v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    const-string v9, ""

    if-nez v8, :cond_1a

    iget v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    if-eqz v8, :cond_19

    goto :goto_d

    :cond_19
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2888
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->clearExposureCompensationPref()V

    goto :goto_11

    .line 2864
    :cond_1a
    :goto_d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->exposures:Ljava/util/List;

    iget v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    :goto_e
    iget v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    if-gt v8, v10, :cond_1b

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->exposures:Ljava/util/List;

    .line 2866
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1b
    if-nez v6, :cond_20

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2870
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getExposureCompensationPref()I

    move-result v8

    iget v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    if-lt v8, v10, :cond_1c

    iget v11, v0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    if-le v8, v11, :cond_1f

    :cond_1c
    if-gtz v10, :cond_1e

    iget v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    if-gez v8, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v8, 0x0

    goto :goto_10

    :cond_1e
    :goto_f
    move v8, v10

    :cond_1f
    :goto_10
    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2881
    invoke-virtual {v10, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setExposureCompensation(I)Z

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2883
    invoke-interface {v10, v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setExposureCompensationPref(I)V

    :cond_20
    :goto_11
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_apertures:[F

    const/4 v10, 0x0

    if-eqz v8, :cond_22

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2897
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getAperturePref()F

    move-result v8

    cmpl-float v11, v8, v10

    if-lez v11, :cond_22

    iget-object v11, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_apertures:[F

    .line 2900
    array-length v12, v11

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v12, :cond_22

    aget v14, v11, v13

    cmpl-float v14, v14, v8

    if-nez v14, :cond_21

    iget-object v14, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2902
    invoke-virtual {v14, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAperture(F)V

    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_22
    iput v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    .line 2919
    new-instance v8, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    invoke-direct {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;-><init>()V

    iput-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    iget-object v11, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2920
    invoke-interface {v11, v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getCameraResolutionPref(Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_24

    .line 2922
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2923
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v12, 0x0

    :goto_13
    iget-object v13, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2925
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_24

    iget v13, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    if-ne v13, v7, :cond_24

    iget-object v13, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2926
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 2927
    iget v14, v13, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-ne v14, v11, :cond_23

    iget v13, v13, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    if-ne v13, v8, :cond_23

    iput v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    :cond_23
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_24
    iget v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    if-ne v8, v7, :cond_27

    move-object v11, v1

    const/4 v8, 0x0

    :goto_14
    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2942
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_27

    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2943
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    if-eqz v11, :cond_25

    .line 2944
    iget v13, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v14, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v13, v13, v14

    iget v14, v11, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v15, v11, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v14, v14, v15

    if-le v13, v14, :cond_26

    :cond_25
    iput v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    move-object v11, v12

    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 2951
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v8

    const-string v11, "Preview"

    if-eqz v8, :cond_2d

    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2957
    iget v13, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v14, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-interface {v12, v13, v14}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setCameraResolutionPref(II)V

    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    .line 2963
    invoke-virtual {v12, v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->satisfies(Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Z

    move-result v8

    if-nez v8, :cond_2d

    move-object v12, v1

    const/4 v8, 0x0

    :goto_15
    iget-object v13, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2968
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_2a

    iget-object v13, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2969
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget-object v14, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    .line 2970
    invoke-virtual {v14, v13}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->satisfies(Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Z

    move-result v14

    if-eqz v14, :cond_29

    if-eqz v12, :cond_28

    .line 2971
    iget v14, v13, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v15, v13, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v14, v14, v15

    iget v15, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v10, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v15, v15, v10

    if-le v14, v15, :cond_29

    :cond_28
    iput v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    move-object v12, v13

    :cond_29
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x0

    goto :goto_15

    :cond_2a
    if-nez v12, :cond_2d

    const-string v8, "can\'t find picture size that satisfies the constraints!"

    .line 2978
    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_16
    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2980
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2d

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2981
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    if-eqz v12, :cond_2b

    .line 2982
    iget v13, v10, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v14, v10, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v13, v13, v14

    iget v14, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v15, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v14, v14, v15

    if-ge v13, v14, :cond_2c

    :cond_2b
    iput v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    move-object v12, v10

    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_2d
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3003
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getImageQualityPref()I

    move-result v8

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3006
    invoke-virtual {v10, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setJpegQuality(I)V

    .line 3013
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->initialiseVideoSizes()V

    .line 3014
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->initialiseVideoQuality()V

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3019
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoQualityPref()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3022
    invoke-virtual {v10, v7}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setCurrentVideoQualityIndex(I)V

    .line 3023
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_30

    const/4 v10, 0x0

    :goto_17
    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3026
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_2f

    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQualityIndex()I

    move-result v12

    if-ne v12, v7, :cond_2f

    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3027
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    iget-object v12, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3028
    invoke-virtual {v12, v10}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setCurrentVideoQualityIndex(I)V

    :cond_2e
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_2f
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3033
    invoke-virtual {v8}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQualityIndex()I

    :cond_30
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3038
    invoke-virtual {v8}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQualityIndex()I

    move-result v8

    if-ne v8, v7, :cond_32

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_32

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3041
    invoke-virtual {v8, v3}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setCurrentVideoQualityIndex(I)V

    const/4 v8, 0x0

    :goto_18
    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3042
    invoke-virtual {v10}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_32

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3045
    invoke-virtual {v10}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v10

    .line 3046
    iget v12, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v13, 0x780

    if-ne v12, v13, :cond_31

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v12, 0x438

    if-ne v10, v12, :cond_31

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3047
    invoke-virtual {v10, v8}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setCurrentVideoQualityIndex(I)V

    goto :goto_19

    :cond_31
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_32
    :goto_19
    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3055
    invoke-virtual {v8}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQualityIndex()I

    move-result v8

    if-eq v8, v7, :cond_33

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3057
    invoke-virtual {v10}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQuality()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setVideoQualityPref(Ljava/lang/String;)V

    goto :goto_1a

    :cond_33
    const-string v8, "no video qualities found"

    .line 3062
    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video:Z

    :goto_1a
    iget-boolean v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video:Z

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3071
    invoke-interface {v8}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoCaptureRateFactor()F

    move-result v8

    iput v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v8, v10

    .line 3072
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v10, 0x3727c5ac    # 1.0E-5f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_34

    const/4 v8, 0x1

    goto :goto_1b

    :cond_34
    const/4 v8, 0x0

    :goto_1b
    iput-boolean v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->has_capture_rate_factor:Z

    iput-boolean v3, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    iget-boolean v8, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    if-eqz v8, :cond_3a

    .line 3082
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v8

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3085
    iget v12, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    iget v13, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    iget-wide v14, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move/from16 v17, v12

    move/from16 v18, v13

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v21}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->findVideoSizeForFrameRate(IIDZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v10

    const-string v12, " at fps "

    const-string v13, " x "

    if-nez v10, :cond_38

    .line 3088
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/preview/Preview;->fpsIsHighSpeed(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_38

    iget-object v9, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizesHighSpeed()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_38

    .line 3089
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "can\'t find match for capture rate: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, " and video size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3094
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getMaxSupportedVideoSizeHighSpeed()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v9

    .line 3095
    iget v10, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iput v10, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    .line 3096
    iget v10, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    iput v10, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3098
    invoke-virtual {v10}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizesHighSpeed()Ljava/util/List;

    move-result-object v10

    iget-wide v14, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-static {v10, v9, v14, v15, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->findSize(Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;DZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v10

    if-eqz v10, :cond_38

    iget-object v9, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3104
    invoke-virtual {v9, v7}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setCurrentVideoQualityIndex(I)V

    const/4 v9, 0x0

    :goto_1c
    iget-object v14, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3105
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_36

    iget-object v14, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3108
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v14

    .line 3109
    iget v15, v14, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    if-ne v15, v1, :cond_35

    iget v1, v14, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v14, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    if-ne v1, v14, :cond_35

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3110
    invoke-virtual {v1, v9}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->setCurrentVideoQualityIndex(I)V

    goto :goto_1d

    :cond_35
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    goto :goto_1c

    :cond_36
    :goto_1d
    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3114
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQualityIndex()I

    move-result v1

    if-eq v1, v7, :cond_37

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v9, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3117
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQuality()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setVideoQualityPref(Ljava/lang/String;)V

    goto :goto_1e

    :cond_37
    const/4 v10, 0x0

    :cond_38
    :goto_1e
    if-nez v10, :cond_39

    .line 3128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "fps not supported for this video size: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v8, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 3132
    :cond_39
    iget-boolean v1, v10, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->high_speed:Z

    if-eqz v1, :cond_3a

    iput-boolean v4, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    :cond_3a
    :goto_1f
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v1, :cond_3b

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-eqz v1, :cond_3b

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_iso_range:Z

    if-eqz v1, :cond_3b

    if-eqz v6, :cond_3b

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3143
    invoke-virtual {v1, v3, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setManualISO(ZI)V

    const/4 v6, 0x0

    :cond_3b
    iput v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v1, :cond_3f

    .line 3153
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3f

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3155
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFlashPref()Ljava/lang/String;

    move-result-object v1

    .line 3156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3d

    .line 3159
    invoke-direct {v0, v1, v3}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3e

    if-nez v6, :cond_3c

    if-nez v5, :cond_3c

    const/4 v1, 0x1

    goto :goto_20

    :cond_3c
    const/4 v1, 0x0

    .line 3166
    :goto_20
    invoke-direct {v0, v3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(IZ)V

    goto :goto_21

    .line 3181
    :cond_3d
    invoke-direct {v0, v2, v4}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(Ljava/lang/String;Z)Z

    :cond_3e
    :goto_21
    const/4 v1, 0x0

    goto :goto_22

    :cond_3f
    const/4 v1, 0x0

    iput-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    :goto_22
    iput v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v2, :cond_40

    .line 3198
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_40

    .line 3202
    invoke-direct {v0, v4}, Lnet/sourceforge/opencamera/preview/Preview;->setFocusPref(Z)V

    goto :goto_23

    :cond_40
    iput-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    :goto_23
    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3223
    invoke-interface {v1, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFocusDistancePref(Z)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-gez v5, :cond_41

    const/4 v1, 0x0

    goto :goto_24

    :cond_41
    iget v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->minimum_focus_distance:F

    cmpl-float v5, v1, v2

    if-lez v5, :cond_42

    move v1, v2

    :cond_42
    :goto_24
    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3230
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusDistance(F)Z

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3231
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingSourceDistance(F)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3233
    invoke-interface {v2, v1, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setFocusDistancePref(FZ)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3236
    invoke-interface {v1, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFocusDistancePref(Z)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-gez v5, :cond_43

    const/4 v10, 0x0

    goto :goto_25

    :cond_43
    iget v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->minimum_focus_distance:F

    cmpl-float v2, v1, v10

    if-lez v2, :cond_44

    goto :goto_25

    :cond_44
    move v10, v1

    :goto_25
    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3243
    invoke-virtual {v1, v10}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingTargetDistance(F)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3245
    invoke-interface {v1, v10, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setFocusDistancePref(FZ)V

    iput-boolean v3, v0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_locked:Z

    iput-boolean v3, v0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_locked:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x445cab60 -> :sswitch_4
        -0xa09548 -> :sswitch_3
        0x10c9c83 -> :sswitch_2
        0x606b72ed -> :sswitch_1
        0x60e43c8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupContinuousFocusMove()V
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->continuous_focus_move_is_started:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->continuous_focus_move_is_started:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5240
    invoke-interface {v1, v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onContinuousFocusMove(Z)V

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    .line 5242
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "focus_mode_continuous_picture"

    .line 5245
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5248
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$9;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$9;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setContinuousFocusMoveCallback(Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_3

    .line 5262
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setContinuousFocusMoveCallback(Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startVideoRecording(Z)V
    .locals 11

    const/4 v0, 0x3

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_called_next_output_file:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_started_next_output_file:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 5784
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object v2

    .line 5785
    iget-object v3, v2, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnet/sourceforge/opencamera/preview/Preview;->createVideoFile(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 5787
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5788
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onFailedCreateVideoFileError()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5789
    invoke-interface {p1, v0, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    goto/16 :goto_7

    :cond_0
    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5801
    invoke-interface {v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getShutterSoundPref()Z

    move-result v3

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5804
    invoke-virtual {v5, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->enableShutterSound(Z)V

    .line 5806
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5807
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->unlock()V

    .line 5811
    new-instance v5, Lnet/sourceforge/opencamera/preview/Preview$12;

    invoke-direct {v5, p0}, Lnet/sourceforge/opencamera/preview/Preview$12;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 5827
    new-instance v5, Lnet/sourceforge/opencamera/preview/Preview$13;

    invoke-direct {v5, p0}, Lnet/sourceforge/opencamera/preview/Preview$13;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5841
    invoke-virtual {v5, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->initVideoRecorderPrePrepare(Landroid/media/MediaRecorder;)V

    .line 5842
    iget-boolean v5, v2, Lnet/sourceforge/opencamera/preview/VideoProfile;->no_audio_permission:Z

    if-eqz v5, :cond_1

    const v5, 0x7f1000dd

    .line 5843
    invoke-virtual {p0, v1, v5, v4}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    :cond_1
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5846
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getGeotaggingPref()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5847
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5848
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v5

    .line 5850
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float v5, v7

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 5856
    :cond_2
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/preview/VideoProfile;->copyToMediaRecorder(Landroid/media/MediaRecorder;)V

    :try_start_0
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5860
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoMaxFileSizePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;

    move-result-object v5

    .line 5861
    iget-wide v6, v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->max_filesize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_0 .. :try_end_0} :catch_5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 5867
    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception v6

    .line 5873
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 5876
    :cond_3
    :goto_0
    iget-boolean v5, v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->auto_restart:Z

    iput-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_restart_on_max_filesize:Z

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5879
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoMaxDurationPref()J

    move-result-wide v5

    if-eqz p1, :cond_4

    cmp-long v7, v5, v8

    if-lez v7, :cond_5

    iget-wide v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    move-wide v5, v7

    goto :goto_1

    :cond_4
    iput-wide v8, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    :cond_5
    :goto_1
    long-to-int v6, v5

    .line 5898
    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 5900
    invoke-static {v5}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v5

    sget-object v6, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 5901
    invoke-static {v5}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 5904
    invoke-static {v5}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$3400(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_2
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5906
    invoke-interface {v5, v4, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5908
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->startingVideo()V

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 5911
    invoke-interface {v5, v3}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->setVideoRecorder(Landroid/media/MediaRecorder;)V

    .line 5913
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getImageVideoRotation()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 5917
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_video_ioexception:Z

    if-nez v5, :cond_a

    .line 5924
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsPhotoVideoRecording()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->usePhotoVideoRecording()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5926
    invoke-virtual {v6, v3, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->initVideoRecorderPostPrepare(Landroid/media/MediaRecorder;Z)V

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_video_cameracontrollerexception:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v5, :cond_9

    .line 5937
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_video_failure:Z

    if-nez v5, :cond_8

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 5944
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->videoRecordingStarted(Z)V

    goto/16 :goto_7

    .line 5941
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception p1

    :try_start_5
    const-string v5, "Preview"

    const-string v6, "runtime exception starting video recorder"

    .line 5948
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5952
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->stoppingVideo()V

    .line 5953
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->failedToStartVideoRecorder(Lnet/sourceforge/opencamera/preview/VideoProfile;)V

    goto/16 :goto_7

    .line 5930
    :cond_9
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    .line 5921
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    const/4 v2, 0x1

    goto :goto_4

    :catch_3
    move-exception p1

    const/4 v0, 0x1

    goto :goto_5

    :catch_4
    move-exception p1

    const/4 v2, 0x1

    goto :goto_6

    :catch_5
    move-exception p1

    const/4 v2, 0x0

    .line 6026
    :goto_4
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;->printStackTrace()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_b

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6029
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->stoppingVideo()V

    :cond_b
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6031
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6032
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 6035
    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v5}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v3, v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    .line 6036
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6037
    invoke-interface {p1, v0, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    .line 6038
    invoke-direct {p0, v4}, Lnet/sourceforge/opencamera/preview/Preview;->reconnectCamera(Z)V

    const p1, 0x7f10036d

    .line 6039
    invoke-virtual {p0, v1, p1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    goto :goto_7

    :catch_6
    move-exception p1

    .line 6016
    :goto_5
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_c

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6019
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->stoppingVideo()V

    .line 6021
    :cond_c
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->failedToStartVideoRecorder(Lnet/sourceforge/opencamera/preview/VideoProfile;)V

    goto :goto_7

    :catch_7
    move-exception p1

    const/4 v2, 0x0

    .line 5998
    :goto_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_d

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6001
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->stoppingVideo()V

    :cond_d
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6003
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onFailedCreateVideoFileError()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6004
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6005
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 6008
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    .line 6009
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6010
    invoke-interface {p1, v0, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    .line 6011
    invoke-direct {p0, v4}, Lnet/sourceforge/opencamera/preview/Preview;->reconnectCamera(Z)V

    :goto_7
    return-void
.end method

.method private supportedFocusValue(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5132
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private takePhoto(ZZ)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const-string p1, "Preview"

    const-string p2, "camera not opened in takePhoto!"

    .line 6203
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6206
    invoke-interface {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    .line 6207
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->autofocus_in_continuous_mode:Z

    if-eqz v3, :cond_3

    .line 6217
    monitor-enter p0

    :try_start_0
    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    const/4 v2, 0x1

    .line 6231
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6235
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setCaptureFollowAutofocusHint(Z)V

    goto :goto_2

    .line 6238
    :cond_2
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 6231
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6241
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->focusIsContinuous()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6247
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$14;

    invoke-direct {p1, p0, p2}, Lnet/sourceforge/opencamera/preview/Preview$14;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6255
    invoke-virtual {p2, p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_a

    .line 6257
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->recentlyFocused()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_9

    const-string p1, "focus_mode_auto"

    .line 6268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "focus_mode_macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 6271
    :cond_6
    monitor-enter p0

    :try_start_2
    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    .line 6284
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_8

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6288
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setCaptureFollowAutofocusHint(Z)V

    goto :goto_2

    .line 6291
    :cond_8
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$15;

    invoke-direct {p1, p0, p2}, Lnet/sourceforge/opencamera/preview/Preview$15;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6303
    invoke-virtual {p2, p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraAutoFocus:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraAutoFocus:I

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 6284
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 6308
    :cond_9
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V

    goto :goto_2

    .line 6266
    :cond_a
    :goto_1
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V

    :goto_2
    return-void
.end method

.method private takePhotoOnDoubleTap()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 845
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getDoubleTapCapturePref()Z

    move-result v0

    return v0
.end method

.method private takePhotoWhenFocused(Z)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6351
    invoke-interface {p1, v1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    if-nez v0, :cond_1

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6358
    invoke-interface {p1, v1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    return-void

    :cond_1
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    .line 6362
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "focus_mode_locked"

    .line 6368
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    if-nez v2, :cond_3

    .line 6372
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    .line 6374
    :cond_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->removePendingContinuousFocusReset()V

    .line 6375
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateParametersFromLocation()V

    const/4 v2, 0x3

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    .line 6382
    new-instance v2, Lnet/sourceforge/opencamera/preview/Preview$16;

    invoke-direct {v2, p0, v0}, Lnet/sourceforge/opencamera/preview/Preview$16;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Ljava/lang/String;)V

    .line 6544
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$17;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$17;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6559
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getImageVideoRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setRotation(I)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6561
    invoke-interface {v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getShutterSoundPref()Z

    move-result v3

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v4, :cond_4

    .line 6562
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6566
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->enableShutterSound(Z)V

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6568
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->useCamera2DummyCaptureHack()Z

    move-result v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6571
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setDummyCaptureHack(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6573
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->useCamera2FastBurst()Z

    move-result v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6576
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setUseExpoFastBurst(Z)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6579
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    :cond_6
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6584
    invoke-virtual {p1, v2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->takePicture(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraTakePicture:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraTakePicture:I

    return-void
.end method

.method private takePicture(ZZZ)V
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    if-ne v0, v1, :cond_2

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    .line 5660
    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_0
    iput-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_after_autofocus:Z

    .line 5663
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_4

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5668
    invoke-interface {p1, v2, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5670
    invoke-interface {p1, v2, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    if-nez v0, :cond_6

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5677
    invoke-interface {p1, v2, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5679
    invoke-interface {p1, v2, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5683
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getGeotaggingPref()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5685
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRequireLocationPref()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5687
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    const p3, 0x7f1000bc

    .line 5693
    invoke-virtual {p0, p1, p3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz p1, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    :cond_9
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5696
    invoke-interface {p1, v2, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5698
    invoke-interface {p1, v2, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    :cond_a
    return-void

    :cond_b
    :goto_2
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_c

    if-nez p2, :cond_c

    .line 5707
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->startVideoRecording(Z)V

    return-void

    .line 5711
    :cond_c
    invoke-direct {p0, v2, p3}, Lnet/sourceforge/opencamera/preview/Preview;->takePhoto(ZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 5663
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private takePictureOnTimer(JZ)V
    .locals 7

    const/4 p3, 0x1

    iput p3, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    .line 5450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_time:J

    iget-object p3, p0, Lnet/sourceforge/opencamera/preview/Preview;->takePictureTimer:Ljava/util/Timer;

    .line 5456
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimer:Ljava/util/Timer;

    .line 5467
    new-instance v2, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;

    invoke-direct {v2, p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;-><init>(Lnet/sourceforge/opencamera/preview/Preview;J)V

    iput-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private takeRemainingRepeatPhotos()V
    .locals 6

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_1

    .line 6599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining_repeat_photos still set, but camera is closed!: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6600
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelRepeat()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6604
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->canTakeNewPhoto()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6608
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6609
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$18;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$18;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6625
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRepeatIntervalPref()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v0, 0x0

    .line 6630
    invoke-direct {p0, v1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->takePhoto(ZZ)V

    goto :goto_0

    .line 6633
    :cond_4
    invoke-direct {p0, v2, v3, v1}, Lnet/sourceforge/opencamera/preview/Preview;->takePictureOnTimer(JZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private tryAutoFocus(ZZ)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez v0, :cond_4

    .line 6666
    :cond_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 6675
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->removePendingContinuousFocusReset()V

    :cond_5
    const/4 v0, 0x1

    if-eqz p2, :cond_6

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6677
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->focusIsContinuous()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "focus_mode_auto"

    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportedFocusValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6680
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusValue(Ljava/lang/String;)V

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->autofocus_in_continuous_mode:Z

    :cond_6
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6686
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->supportsAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-nez v1, :cond_7

    const-string v1, ""

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6691
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFlashValue()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_7

    .line 6693
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    const-string p1, "flash_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "flash_torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6695
    invoke-virtual {v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    .line 6700
    :cond_7
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$19;

    invoke-direct {p1, p0, p2}, Lnet/sourceforge/opencamera/preview/Preview$19;-><init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    const/4 p2, 0x0

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6714
    invoke-virtual {v1, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraAutoFocus:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraAutoFocus:I

    .line 6716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_started_time:J

    goto :goto_0

    :cond_8
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    if-eqz p1, :cond_9

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    .line 6723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    :cond_9
    :goto_0
    return-void
.end method

.method private updateFlash(IZ)V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    if-eq p1, v0, :cond_3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    .line 5061
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f030000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    .line 5063
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5066
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 5067
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 5070
    aget-object v5, v4, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_flash_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 5074
    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p1, v3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5079
    :cond_2
    :goto_2
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->setFlash(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5082
    invoke-interface {p1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setFlashPref(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateFlash(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4998
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 5002
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(IZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateFlashForVideo()V
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_0

    .line 4923
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4924
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isFlashSupportedForVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    const-string v0, "flash_off"

    const/4 v1, 0x0

    .line 4928
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private updateFocus(IZZZ)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    .line 5183
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 5187
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->findFocusEntryForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_flash_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const/4 v1, 0x1

    .line 5189
    invoke-virtual {p0, v0, p2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    .line 5192
    :cond_0
    invoke-direct {p0, p1, p4}, Lnet/sourceforge/opencamera/preview/Preview;->setFocusValue(Ljava/lang/String;Z)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-boolean p3, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    .line 5196
    invoke-interface {p2, p1, p3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setFocusPref(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private updateFocus(Ljava/lang/String;ZZZ)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5144
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 5148
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(IZZZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateFocusForVideo()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_0

    .line 4900
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->focusIsVideo()Z

    move-result v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eq v0, v1, :cond_0

    .line 4907
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus_mode_continuous_video"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4908
    invoke-direct {p0, v1, v2, v3, v3}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(Ljava/lang/String;ZZZ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private updateParametersFromLocation()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 8034
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getGeotaggingPref()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 8035
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 8036
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 8041
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setLocationInfo(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 8046
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->removeLocationInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method private videoRecordingStarted(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6053
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->startFaceDetection()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    .line 6057
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time_set:Z

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_time_last_maxfilesize_restart:J

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6060
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->startedVideo()V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6067
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoRestartTimesPref()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6072
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoFlashPref()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFlash()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->flashVideoTimer:Ljava/util/Timer;

    .line 6092
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->flashVideoTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6095
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoLowPowerCheckPref()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->batteryCheckVideoTimer:Ljava/util/Timer;

    .line 6144
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->batteryCheckVideoTimerTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_4
    return-void
.end method

.method private videoRecordingStopped()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 1212
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 1215
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    const/4 v3, 0x1

    .line 1218
    invoke-interface {v2, v1, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    .line 1219
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->reconnectCamera(Z)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 1220
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->close()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 1221
    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v4}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->stoppedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->close()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 1229
    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v4}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1231
    :cond_0
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {v1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    return-void
.end method


# virtual methods
.method public canDisableShutterSound()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->can_disable_shutter_sound:Z

    return v0
.end method

.method public canSwitchCamera()Z
    .locals 3

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 4533
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    .line 4539
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public cancelRepeat()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    return-void
.end method

.method public cancelTimer()V
    .locals 2

    .line 1493
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isOnTimer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    .line 1494
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 1497
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->beepTimerTask:Ljava/util/TimerTask;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    :cond_1
    return-void
.end method

.method public clearActiveFakeToast()V
    .locals 1

    const/4 v0, 0x0

    .line 7788
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->clearActiveFakeToast(Z)V

    return-void
.end method

.method public clearFocusAreas()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 904
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->clearFocusAndMetering()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    const/4 v1, 0x3

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->successfully_focused:Z

    return-void
.end method

.method public cycleFlash(ZZ)V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 5013
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v1, v0

    const/4 v0, 0x0

    move v4, v1

    const/4 v3, 0x0

    :cond_0
    if-nez v3, :cond_3

    if-eqz p1, :cond_1

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 5019
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "flash_torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 5022
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v4, v3

    :cond_1
    iget-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 5028
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5029
    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isFlashSupportedForVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 5032
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v4, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    if-ne v4, v1, :cond_0

    const-string p1, "Preview"

    const-string v0, "flash looped to start - couldn\'t find valid flash!"

    .line 5039
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    .line 5045
    invoke-direct {p0, v4, p2}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(IZ)V

    :cond_4
    return-void
.end method

.method public disableFocusPeaking()V
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_focus_peaking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_focus_peaking:Z

    .line 8279
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freeFocusPeakingBitmap()V

    :cond_0
    return-void
.end method

.method public disableHistogram()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_histogram:Z

    return-void
.end method

.method public disablePreviewBitmap()V
    .locals 1

    .line 8063
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freePreviewBitmap()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_preview_bitmap:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogramScript:Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    return-void
.end method

.method public disableZebraStripes()V
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_zebra_stripes:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_zebra_stripes:Z

    .line 8261
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freeZebraStripesBitmap()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_paused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 4188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_complete_time:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4192
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onDrawPreview(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableFocusPeaking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_focus_peaking:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap_buffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 8272
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->createFocusPeakingBitmap()V

    :cond_0
    return-void
.end method

.method public enableHistogram(Lnet/sourceforge/opencamera/preview/Preview$HistogramType;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_histogram:Z

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    return-void
.end method

.method public enablePreviewBitmap()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 8054
    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_preview_bitmap:Z

    .line 8056
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->recreatePreviewBitmap()V

    :cond_0
    return-void
.end method

.method public enableZebraStripes(III)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_zebra_stripes:Z

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_threshold:I

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_color_foreground:I

    iput p3, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_color_background:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap_buffer:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 8254
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->createZebraStripesBitmap()V

    :cond_0
    return-void
.end method

.method public findFocusEntryForValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f030003

    const v1, 0x7f030005

    .line 5171
    invoke-direct {p0, p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->findEntryForValue(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fpsIsHighSpeed(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "default"

    .line 7598
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    if-eqz v0, :cond_2

    .line 7600
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 7604
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 7609
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRateHighSpeed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "Preview"

    const-string v0, "fps is neither normal nor high speed"

    .line 7616
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return v1
.end method

.method public getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3400
    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    return-object p1

    .line 3402
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraId()I

    move-result v0

    .line 3403
    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    const/16 v4, 0x5f

    .line 3406
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3408
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, p1

    .line 3412
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3413
    invoke-static {v0, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    if-eq v4, v5, :cond_3

    add-int/2addr v4, v2

    .line 3414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 3415
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3418
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/16 v0, 0x78

    .line 3419
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 3425
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v2

    .line 3426
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3432
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3433
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3434
    iput v0, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 3435
    iput p1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3447
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v3
.end method

.method public getCamcorderProfileDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3808
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 3809
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfileDescriptionType(Landroid/media/CamcorderProfile;)Ljava/lang/String;

    move-result-object v0

    .line 3810
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 3811
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v3}, Lnet/sourceforge/opencamera/preview/Preview;->getAspectRatioMPString(Landroid/content/res/Resources;IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCamcorderProfileDescriptionShort(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3799
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 3800
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfileDescriptionType(Landroid/media/CamcorderProfile;)Ljava/lang/String;

    move-result-object v0

    .line 3801
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, " "

    .line 3802
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCameraAPI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const-string v0, "None"

    return-object v0

    .line 7653
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getAPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    return-object v0
.end method

.method public getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7647
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getCurrentExposure()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7352
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getCurrentFlashValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_flash_index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 5104
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFocusValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_focus_index:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5212
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 7539
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPreviewAspectRatio()D
    .locals 4

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    int-to-double v0, v0

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    int-to-double v2, v2

    .line 7494
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 3

    .line 7490
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object v0
.end method

.method public getErrorFeatures(Lnet/sourceforge/opencamera/preview/VideoProfile;)Ljava/lang/String;
    .locals 7

    .line 4941
    iget v0, p1, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    const/16 v1, 0xf00

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget p1, p1, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    const/16 v0, 0x870

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getForce4KPref()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4944
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoBitratePref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 4945
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4948
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4949
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoCaptureRateFactor()F

    move-result v5

    const v6, 0x3f7fff58    # 0.99999f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_1

    .line 4952
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v1, ""

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_a

    :cond_3
    if-eqz p1, :cond_4

    .line 4958
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100078

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string p1, "/"

    if-eqz v0, :cond_6

    .line 4961
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const v4, 0x7f100079

    if-nez v0, :cond_5

    .line 4962
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4964
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    .line 4967
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const v2, 0x7f10007a

    if-nez v0, :cond_7

    .line 4968
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4970
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    :cond_8
    if-eqz v3, :cond_a

    .line 4973
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const v2, 0x7f10007b

    if-nez v0, :cond_9

    .line 4974
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 4976
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    :goto_4
    return-object v1
.end method

.method public getExposureCompensationString(I)Ljava/lang/String;
    .locals 4

    int-to-float v0, p1

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->exposure_step:F

    mul-float v0, v0, v1

    .line 4485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_0

    const-string p1, "+"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->decimal_format_2dp_force0:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " EV"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExposureTimeString(J)Ljava/lang/String;
    .locals 6

    long-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 4495
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/32 v2, 0x5f5e100

    const v4, 0x7f100346

    cmp-long v5, p1, v2

    if-lez v5, :cond_0

    .line 4499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->decimal_format_1dp:Ljava/text/DecimalFormat;

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, v0

    .line 4503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " 1/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFacesDetected()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    if-eqz v0, :cond_0

    .line 8977
    array-length v0, v0

    if-lez v0, :cond_0

    .line 8980
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraToPreviewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    .line 8981
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->face_rect:Landroid/graphics/RectF;

    .line 8982
    iget-object v6, v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->face_rect:Landroid/graphics/RectF;

    .line 8983
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->face_rect:Landroid/graphics/RectF;

    .line 8984
    iget-object v4, v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->temp:Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    return-object v0
.end method

.method public getFocusPeakingBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_peaking_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFocusPos()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_camera_x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_camera_y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 8920
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraToPreviewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 8921
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8922
    new-instance v1, Landroid/util/Pair;

    aget v2, v0, v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget v0, v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getFrameDurationString(J)Ljava/lang/String;
    .locals 3

    long-to-double p1, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 4511
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    .line 4513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1000ae

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->decimal_format_1dp:Ljava/text/DecimalFormat;

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFrameRate()J
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-wide/16 v2, 0x20

    if-lt v0, v1, :cond_0

    return-wide v2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_test_junit4:Z

    if-eqz v0, :cond_1

    return-wide v2

    :cond_1
    const-wide/16 v0, 0x10

    return-wide v0

    .line 8859
    :cond_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhoto()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x64

    :goto_0
    return-wide v0
.end method

.method public getGeoDirection()D
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->geo_direction:[F

    const/4 v1, 0x0

    .line 7103
    aget v0, v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getHistogram()[I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->histogram:[I

    return-object v0
.end method

.method public getISOKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 7228
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getISOKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getISOString(I)Ljava/lang/String;
    .locals 3

    .line 4489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLevelAngle()D
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->level_angle:D

    return-wide v0
.end method

.method public getLevelAngleUncalibrated()D
    .locals 4

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->natural_level_angle:D

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_orientation:I

    int-to-double v2, v2

    .line 6992
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxAmplitude()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 8822
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_num_focus_areas:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    .line 9015
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getMaximumExposure()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    return v0
.end method

.method public getMaximumExposureTime()J
    .locals 4

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure_time:J

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 7314
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isExpoBracketingPref()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isFocusBracketingPref()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isCameraBurstPref()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 7316
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getBurstForNoiseReduction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure_time:J

    const-wide/32 v2, 0x77359400

    .line 7317
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure_time:J

    const-wide/32 v2, 0x1dcd6500

    .line 7319
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getMaximumISO()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_iso:I

    return v0
.end method

.method public getMaximumWhiteBalanceTemperature()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_temperature:I

    return v0
.end method

.method public getMeasureSpec([III)V
    .locals 11

    .line 914
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->hasAspectRatio()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 917
    aput p2, p1, v2

    .line 918
    aput p3, p1, v1

    return-void

    .line 921
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getAspectRatio()D

    move-result-wide v3

    .line 923
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 924
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 931
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 932
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    invoke-interface {v6}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr p2, v0

    sub-int/2addr p3, v5

    iget-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v6, :cond_1

    .line 945
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getDisplayRotationDegrees(Z)I

    move-result v6

    iget-object v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 946
    invoke-virtual {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraOrientation()I

    move-result v7

    sub-int/2addr v7, v6

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v7, v7, 0x168

    goto :goto_0

    :cond_1
    if-le p2, p3, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/16 v6, 0x5a

    const/16 v7, 0x5a

    .line 958
    :goto_0
    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v3, v6, v3

    :cond_3
    int-to-double v6, p2

    int-to-double v8, p3

    .line 974
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v3

    cmpl-double v10, v6, v8

    if-lez v10, :cond_4

    double-to-int p2, v8

    goto :goto_1

    .line 978
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v3

    double-to-int p3, v6

    :goto_1
    add-int/2addr p2, v0

    add-int/2addr p3, v5

    const/high16 v0, 0x40000000    # 2.0f

    .line 989
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    aput p2, p1, v2

    .line 990
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    aput p2, p1, v1

    return-void
.end method

.method public getMinZoomRatio()F
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 9009
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getMinimumExposure()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    return v0
.end method

.method public getMinimumExposureTime()J
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure_time:J

    return-wide v0
.end method

.method public getMinimumFocusDistance()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->minimum_focus_distance:F

    return v0
.end method

.method public getMinimumISO()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_iso:I

    return v0
.end method

.method public getMinimumWhiteBalanceTemperature()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_temperature:I

    return v0
.end method

.method public getOpticalStabilization()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7127
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getOpticalStabilization()Z

    move-result v0

    return v0
.end method

.method public getOptimalPreviewSize(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;)",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-eqz v1, :cond_1

    .line 3883
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object p1

    .line 3887
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v1, p1, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    iget p1, p1, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-direct {v0, v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object v0

    .line 3891
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3892
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 3894
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 3895
    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3904
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_2

    .line 3906
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 3911
    :cond_2
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->calculateTargetRatioForPreview(Landroid/graphics/Point;)D

    move-result-wide v2

    .line 3912
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gtz v4, :cond_3

    .line 3914
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 3917
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v7, v0

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget-object v9, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3920
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3921
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraExtension()I

    move-result v9

    .line 3922
    invoke-virtual {v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsExtension(I)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    .line 3928
    :cond_5
    iget v9, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v9, v9

    iget v11, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-double v11, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    sub-double/2addr v9, v2

    .line 3929
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpl-double v13, v9, v11

    if-lez v13, :cond_6

    goto :goto_0

    .line 3931
    :cond_6
    iget v9, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v11, v9, v5

    if-gez v11, :cond_4

    .line 3933
    iget v5, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    move-object v7, v8

    goto :goto_0

    :cond_7
    if-nez v7, :cond_8

    .line 3940
    invoke-static {p1, v2, v3, v0}, Lnet/sourceforge/opencamera/preview/Preview;->getClosestSize(Ljava/util/List;DLnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v7

    :cond_8
    return-object v7
.end method

.method public getOptimalVideoPictureSize(Ljava/util/List;D)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;D)",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3952
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getMaxSupportedVideoSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    .line 3953
    invoke-static {p1, p2, p3, v0}, Lnet/sourceforge/opencamera/preview/Preview;->getOptimalVideoPictureSize(Ljava/util/List;DLnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    return-object p1
.end method

.method public getOrigLevelAngle()D
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->orig_level_angle:D

    return-wide v0
.end method

.method public getPitchAngle()D
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->pitch_angle:D

    return-wide v0
.end method

.method public getScaledZoomFactor(F)I
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    if-eqz v2, :cond_e

    .line 4201
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result v0

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4209
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    :goto_0
    mul-float v2, v2, p1

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4216
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    .line 4221
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4224
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    goto/16 :goto_8

    :cond_2
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4232
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    add-int/lit8 p1, v0, 0x1

    :goto_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4238
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_8

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4239
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_3

    move v0, p1

    move v1, v4

    goto :goto_2

    :cond_3
    add-float v6, v1, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    goto :goto_5

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, v0, -0x1

    :goto_3
    if-ltz p1, :cond_8

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4256
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_6

    move v0, p1

    move v1, v4

    goto :goto_4

    :cond_6
    add-float v6, v1, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_8
    :goto_5
    move v1, v0

    iput v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    goto :goto_8

    :cond_9
    cmpl-float p1, p1, v4

    if-lez p1, :cond_b

    move p1, v0

    :goto_6
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_d

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4278
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    move v1, p1

    goto :goto_8

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_b
    move v1, v0

    :goto_7
    if-ltz v1, :cond_d

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 4289
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_d
    move v1, v0

    :cond_e
    :goto_8
    return v1
.end method

.method public getSupportedAntiBanding()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->antibanding:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedApertures()[F
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_apertures:[F

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->color_effects:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedEdgeModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->edge_modes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedFlashValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedFocusValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedISOs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->isos:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedNoiseReductionModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->noise_reduction_modes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedPictureSizes(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7506
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isBurstOrExpo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v3, :cond_1

    .line 7507
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 7508
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraExtension()I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    :goto_2
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    if-eqz v5, :cond_3

    .line 7509
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->hasConstraints()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_8

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_8

    .line 7513
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 7514
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 7515
    invoke-virtual {v2, v0, v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsRequirements(ZZI)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_size_constraints:Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;

    .line 7518
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->satisfies(Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 7522
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    return-object p1

    :cond_8
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    return-object p1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_preview_sizes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->scene_modes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedVideoQuality(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "default"

    .line 7555
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    if-eqz v0, :cond_2

    .line 7557
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 7560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 7561
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7564
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 7569
    iget v5, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v6, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v7, p1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->findVideoSizeForFrameRate(IIDZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7573
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 7587
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedWhiteBalances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->white_balances:Ljava/util/List;

    return-object v0
.end method

.method public getTargetRatio()D
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_targetRatio:D

    return-wide v0
.end method

.method public getTimerEndTime()J
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_time:J

    return-wide v0
.end method

.method public getTonemapMaxCurvePoints()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->tonemap_max_curve_points:I

    return v0
.end method

.method public getUIRotation()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->ui_rotation:I

    return v0
.end method

.method public getVideoAccumulatedTime()J
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    return-wide v0
.end method

.method public getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const-string v2, "Preview"

    if-nez v1, :cond_0

    .line 3462
    new-instance v1, Lnet/sourceforge/opencamera/preview/VideoProfile;

    invoke-direct {v1}, Lnet/sourceforge/opencamera/preview/VideoProfile;-><init>()V

    const-string v3, "camera not opened! returning default video profile for QUALITY_HIGH"

    .line 3463
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3478
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRecordAudioPref()Z

    move-result v1

    iget-object v3, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3479
    invoke-interface {v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRecordAudioChannelsPref()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3480
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3481
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoBitratePref()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3482
    invoke-interface {v6}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getForce4KPref()Z

    move-result v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 3486
    invoke-virtual {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraId()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-nez v6, :cond_1

    .line 3494
    invoke-static {v7, v9}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    const/16 v7, 0xf00

    .line 3495
    iput v7, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v7, 0x870

    .line 3496
    iput v7, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 3497
    iget v7, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-double v10, v7

    const-wide v12, 0x4006666666666666L    # 2.8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    double-to-int v7, v10

    iput v7, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3499
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQualityIndex()I

    move-result v6

    if-eq v6, v8, :cond_2

    iget-object v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3500
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQuality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 3505
    :goto_0
    new-instance v7, Lnet/sourceforge/opencamera/preview/VideoProfile;

    if-eqz v6, :cond_3

    invoke-direct {v7, v6}, Lnet/sourceforge/opencamera/preview/VideoProfile;-><init>(Landroid/media/CamcorderProfile;)V

    goto :goto_1

    :cond_3
    invoke-direct {v7}, Lnet/sourceforge/opencamera/preview/VideoProfile;-><init>()V

    :goto_1
    const-string v6, "default"

    .line 3511
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v4, v0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    if-eqz v4, :cond_5

    .line 3512
    iget v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    if-eqz v4, :cond_5

    iget v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    if-eqz v4, :cond_5

    iget-object v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    .line 3522
    iget v11, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    iget v12, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    iget-wide v13, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->findVideoSizeForFrameRate(IIDZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3523
    iget-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-virtual {v4, v10, v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsFrameRate(D)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3526
    iget v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    int-to-double v10, v10

    invoke-virtual {v4, v10, v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->closestFrameRate(D)I

    move-result v4

    if-eq v4, v8, :cond_5

    .line 3530
    iput v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    int-to-double v10, v4

    .line 3531
    iput-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    goto :goto_2

    .line 3538
    :cond_4
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3541
    iput v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    int-to-double v10, v4

    .line 3542
    iput-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 3550
    :cond_5
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3552
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3555
    iput v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    :cond_6
    :goto_3
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-eqz v4, :cond_7

    .line 3563
    iget v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    const v5, 0x3567e00

    if-ge v4, v5, :cond_7

    .line 3564
    iput v5, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    :cond_7
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/preview/Preview;->has_capture_rate_factor:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    float-to-double v10, v1

    const v4, 0x3727c5ac    # 1.0E-5f

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v10, v12

    if-gez v6, :cond_8

    .line 3574
    iget v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    int-to-float v1, v1

    iget v6, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    mul-float v1, v1, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    .line 3575
    iget v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    int-to-float v1, v1

    iget v10, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    mul-float v1, v1, v10

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    sub-float/2addr v1, v6

    .line 3578
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9

    .line 3582
    iget-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v10, v12

    iput-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    goto :goto_4

    :cond_8
    float-to-double v10, v1

    cmpl-double v1, v10, v12

    if-lez v1, :cond_9

    .line 3589
    iget-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    iput-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->capture_rate_factor:F

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v1, v6

    .line 3592
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9

    .line 3596
    iget-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    const-wide v12, 0x3f50624de0000000L    # 0.0010000000474974513

    sub-double/2addr v10, v12

    iput-wide v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    :cond_9
    :goto_4
    const/4 v1, 0x0

    :cond_a
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    const/16 v6, 0x15

    const/4 v10, 0x2

    if-eqz v4, :cond_b

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_b

    .line 3608
    iput v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoSource:I

    goto :goto_5

    .line 3611
    :cond_b
    iput v9, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoSource:I

    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v4, v11, :cond_c

    if-eqz v1, :cond_c

    .line 3618
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v11, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v11}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_c

    .line 3628
    iput-boolean v9, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->no_audio_permission:Z

    const/4 v1, 0x0

    .line 3631
    :cond_c
    iput-boolean v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->record_audio:Z

    const/16 v4, 0x9

    const/4 v11, 0x6

    const/16 v12, 0x18

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eqz v1, :cond_15

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3633
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRecordAudioSourcePref()Ljava/lang/String;

    move-result-object v1

    .line 3636
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v8, "audio_src_camcorder"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    goto :goto_7

    :sswitch_1
    const-string v8, "audio_src_voice_recognition"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    goto :goto_7

    :sswitch_2
    const-string v8, "audio_src_voice_communication"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    goto :goto_7

    :sswitch_3
    const-string v8, "audio_src_unprocessed"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_7

    :sswitch_4
    const-string v8, "audio_src_mic"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_7

    :sswitch_5
    const-string v8, "audio_src_default"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v1, -0x1

    :goto_7
    if-eqz v1, :cond_13

    if-eq v1, v9, :cond_12

    if-eq v1, v10, :cond_11

    if-eq v1, v15, :cond_10

    if-eq v1, v14, :cond_e

    .line 3660
    iput v13, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    goto :goto_8

    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v12, :cond_f

    .line 3651
    iput v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    goto :goto_8

    :cond_f
    const-string v1, "audio_src_voice_unprocessed requires Android 7"

    .line 3654
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    iput v13, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    goto :goto_8

    .line 3647
    :cond_10
    iput v11, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    goto :goto_8

    :cond_11
    const/4 v1, 0x7

    .line 3644
    iput v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    goto :goto_8

    .line 3641
    :cond_12
    iput v5, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    goto :goto_8

    .line 3638
    :cond_13
    iput v9, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    :goto_8
    const-string v1, "audio_mono"

    .line 3668
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3669
    iput v9, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioChannels:I

    goto :goto_9

    :cond_14
    const-string v1, "audio_stereo"

    .line 3671
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3672
    iput v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioChannels:I

    :cond_15
    :goto_9
    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 3677
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRecordVideoOutputFormatPref()Ljava/lang/String;

    move-result-object v1

    .line 3680
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_a
    const/4 v8, -0x1

    goto :goto_b

    :sswitch_6
    const-string v3, "preference_video_output_format_webm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_a

    :cond_16
    const/4 v8, 0x4

    goto :goto_b

    :sswitch_7
    const-string v3, "preference_video_output_format_3gpp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_a

    :cond_17
    const/4 v8, 0x3

    goto :goto_b

    :sswitch_8
    const-string v3, "preference_video_output_format_default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_a

    :cond_18
    const/4 v8, 0x2

    goto :goto_b

    :sswitch_9
    const-string v3, "preference_video_output_format_mpeg4_hevc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_a

    :cond_19
    const/4 v8, 0x1

    goto :goto_b

    :sswitch_a
    const-string v3, "preference_video_output_format_mpeg4_h264"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v8, 0x0

    :goto_b
    packed-switch v8, :pswitch_data_0

    .line 3717
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown pref_video_output_format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_1b

    .line 3708
    iput v4, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    .line 3709
    iput v14, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCodec:I

    .line 3710
    iput v11, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioCodec:I

    const-string v1, "webm"

    .line 3711
    iput-object v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    goto :goto_c

    .line 3698
    :pswitch_1
    iput v9, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    const-string v1, "3gp"

    .line 3699
    iput-object v1, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    goto :goto_c

    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v12, :cond_1b

    .line 3691
    iput v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    .line 3692
    iput v13, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCodec:I

    .line 3693
    iput v15, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioCodec:I

    goto :goto_c

    .line 3685
    :pswitch_3
    iput v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    .line 3686
    iput v10, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCodec:I

    .line 3687
    iput v15, v7, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioCodec:I

    :cond_1b
    :goto_c
    :pswitch_4
    return-object v7

    :sswitch_data_0
    .sparse-switch
        -0x6a040003 -> :sswitch_5
        -0x5ee3f1fd -> :sswitch_4
        0x14d88491 -> :sswitch_3
        0x2233f345 -> :sswitch_2
        0x2fa8b2e6 -> :sswitch_1
        0x48962016 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1c4e60aa -> :sswitch_a
        0x1c4f280c -> :sswitch_9
        0x1f6e8acf -> :sswitch_8
        0x61e705c6 -> :sswitch_7
        0x6205e5cb -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_quality_handler:Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    return-object v0
.end method

.method public getVideoStabilization()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7146
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getVideoStabilization()Z

    move-result v0

    return v0
.end method

.method public getVideoTime(Z)J
    .locals 6

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_time_last_maxfilesize_restart:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 8810
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecordingPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    :goto_1
    sub-long/2addr v2, v0

    return-wide v2

    .line 8813
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 511
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewAngleX(Z)F
    .locals 6

    if-eqz p1, :cond_0

    .line 7420
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Preview"

    const-string v0, "can\'t find view angle x size"

    .line 7422
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    return p1

    :cond_1
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    div-float/2addr v0, v1

    .line 7426
    iget v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-float v1, v1

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float p1, v1, v0

    .line 7433
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    return p1

    :cond_2
    cmpl-float p1, v1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    return p1

    :cond_3
    div-float/2addr v1, v0

    float-to-double v0, v1

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    float-to-double v2, p1

    .line 7442
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getViewAngleY(Z)F
    .locals 6

    if-eqz p1, :cond_0

    .line 7454
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Preview"

    const-string v0, "can\'t find view angle y size"

    .line 7456
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    return p1

    :cond_1
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_x:F

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    div-float/2addr v0, v1

    .line 7460
    iget v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-float v1, v1

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float p1, v1, v0

    .line 7467
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    return p1

    :cond_2
    cmpl-float p1, v1, v0

    if-lez p1, :cond_3

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    float-to-double v2, p1

    .line 7473
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_3
    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->view_angle_y:F

    return p1
.end method

.method public getZebraStripesBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 8996
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    .line 8997
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getZoomRatio(I)F
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->zoom_ratios:Ljava/util/List;

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 9003
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public hasFocusArea()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_focus_area:Z

    return v0
.end method

.method public hasGeoDirection()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_geo_direction:Z

    return v0
.end method

.method public hasLevelAngle()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_level_angle:Z

    return v0
.end method

.method public hasLevelAngleStable()Z
    .locals 5

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_test:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_pitch_angle:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->pitch_angle:D

    .line 6982
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4051800000000000L    # 70.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_level_angle:Z

    return v0
.end method

.method public hasPermissions()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_permissions:Z

    return v0
.end method

.method public hasPitchAngle()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_pitch_angle:Z

    return v0
.end method

.method public hasSmoothZoom()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    return v0
.end method

.method public isExposureLocked()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_locked:Z

    return v0
.end method

.method public isFocusRecentFailure()Z
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocusRecentSuccess()Z
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFocusWaiting()Z
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_success:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnTimer()Z
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpeningCamera()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1973
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewBitmapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->want_preview_bitmap:Z

    return v0
.end method

.method public isPreviewPaused()Z
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    return v0
.end method

.method public isTakingPhoto()Z
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTakingPhotoOrOnTimer()Z
    .locals 3

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    return v0
.end method

.method public isVideoHighSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time_set:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoRecordingPaused()Z
    .locals 1

    .line 8801
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteBalanceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_locked:Z

    return v0
.end method

.method public maxExpoBracketingNImages()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_expo_bracketing_n_images:I

    return v0
.end method

.method public onAccelerometerSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_gravity:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->gravity:[F

    const v4, 0x3f4ccccd    # 0.8f

    .line 6919
    aget v5, v3, v2

    mul-float v5, v5, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    const v6, 0x3e4ccccc    # 0.19999999f

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6921
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->calculateGeoDirection()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->gravity:[F

    .line 6923
    aget v2, p1, v1

    float-to-double v2, v2

    .line 6924
    aget v4, p1, v0

    float-to-double v4, v4

    const/4 v6, 0x2

    .line 6925
    aget p1, p1, v6

    float-to-double v6, p1

    .line 6926
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v2, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_pitch_angle:Z

    const-wide v10, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double p1, v8, v10

    if-lez p1, :cond_2

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_pitch_angle:Z

    .line 6933
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double v6, v6, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v10

    iput-wide v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->pitch_angle:D

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_level_angle:Z

    .line 6938
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v8

    div-double/2addr v0, v10

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->natural_level_angle:D

    const-wide/high16 v2, -0x8000000000000000L

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->natural_level_angle:D

    .line 6944
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateLevelAngles()V

    goto :goto_1

    .line 6947
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "accel sensor has zero mag: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Preview"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_level_angle:Z

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 7725
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTaskIsRunning()Z

    move-result v0

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTask:Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    .line 7728
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "exception while waiting for background_task to finish"

    .line 7731
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7732
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7735
    :cond_0
    :goto_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freePreviewBitmap()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->rs:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    .line 7739
    :try_start_1
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_1
    .catch Landroid/renderscript/RSInvalidStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 7742
    invoke-virtual {v0}, Landroid/renderscript/RSInvalidStateException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->rs:Landroid/renderscript/RenderScript;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 7747
    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->close_camera_task:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    if-eqz v0, :cond_2

    .line 7753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->close_camera_task:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    .line 7755
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4, v2}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    const-string v2, "exception while waiting for close_camera_task to finish"

    .line 7758
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7759
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_2
    const-string v0, "onResume: state is CAMERAOPENSTATE_CLOSING, but close_camera_task is null"

    .line 7767
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-void
.end method

.method public onDoubleTap()Z
    .locals 1

    .line 852
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoOnDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 859
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->requestTakePhoto()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMagneticSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_geomagnetic:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->geomagnetic:[F

    const v2, 0x3f4ccccd    # 0.8f

    .line 7021
    aget v3, v1, v0

    mul-float v3, v3, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7023
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->calculateGeoDirection()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 7688
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->onPause(Z)V

    return-void
.end method

.method public onPause(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_paused:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->app_is_paused:Z

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 7702
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->open_camera_task:Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    .line 7706
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    const-string p1, "Preview"

    const-string v1, "onPause: state is CAMERAOPENSTATE_OPENING, but open_camera_task is null"

    .line 7709
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 7714
    invoke-direct {p0, v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 7715
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->onPause()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->canvasView:Lnet/sourceforge/opencamera/preview/CanvasView;

    if-eqz p1, :cond_3

    .line 7717
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/CanvasView;->onPause()V

    .line 7718
    :cond_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->freePreviewBitmap()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 7661
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->recreatePreviewBitmap()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->app_is_paused:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_paused:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 7664
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->onResume()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->canvasView:Lnet/sourceforge/opencamera/preview/CanvasView;

    if-eqz v0, :cond_0

    .line 7666
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/CanvasView;->onResume()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 7668
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->close_camera_task:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 7674
    iput-boolean v1, v0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->reopen:Z

    goto :goto_0

    :cond_1
    const-string v0, "Preview"

    const-string v1, "onResume: state is CAMERAOPENSTATE_CLOSING, but close_camera_task is null"

    .line 7677
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7681
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->openCamera()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_textureview_size:Z

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_w:I

    iput p3, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_h:I

    .line 1057
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->mySurfaceCreated()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_textureview_size:Z

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_w:I

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_h:I

    .line 1067
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->mySurfaceDestroyed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz p1, :cond_1

    .line 1079
    iput p2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->test_texture_view_buffer_w:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1080
    iput p3, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->test_texture_view_buffer_h:I

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_preview_size:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_w:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->preview_h:I

    if-eq p3, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1094
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->updatePreviewTexture()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_textureview_size:Z

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_w:I

    iput p3, p0, Lnet/sourceforge/opencamera/preview/Preview;->textureview_h:I

    .line 1101
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->mySurfaceChanged()V

    .line 1102
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->configureTransform()V

    .line 1103
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->recreatePreviewBitmap()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1108
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmap()V

    return-void
.end method

.method public openCameraAttempted()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1979
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openCameraFailed()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 1985
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseManualISOValue(Ljava/lang/String;)I
    .locals 0

    .line 4438
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public pausePreview(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    .line 1532
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocusForVideo()Ljava/lang/String;

    const/4 v0, 0x0

    .line 1533
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->setPreviewPaused(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1538
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->stopPreview()V

    :cond_1
    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    return-void
.end method

.method public pauseVideo()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "Preview"

    if-ge v0, v1, :cond_0

    const-string v0, "pauseVideo called but requires Android N"

    .line 6167
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6169
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6173
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaRecorder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    .line 6175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->pause_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const v2, 0x7f100371

    .line 6176
    invoke-virtual {p0, v0, v2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 6181
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaRecorder;)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder_is_paused:Z

    .line 6183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_accumulated_time:J

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->pause_video_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const v2, 0x7f10036e

    .line 6189
    invoke-virtual {p0, v0, v2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    goto :goto_0

    :cond_2
    const-string v0, "pauseVideo called but not video recording"

    .line 6193
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public refreshPreviewBitmapTaskIsRunning()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTask:Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reopenCamera()V
    .locals 2

    .line 1953
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$5;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$5;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    return-void
.end method

.method public requestAutoFocus()V
    .locals 2

    .line 6642
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6643
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->tryAutoFocus(ZZ)V

    return-void
.end method

.method public retryOpenCamera()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    .line 1936
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->openCamera()V

    :cond_0
    return-void
.end method

.method public scaleZoom(F)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    if-eqz v0, :cond_1

    .line 4312
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getScaledZoomFactor(F)I

    move-result p1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4314
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->zoomTo(IZ)V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4316
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->multitouchZoom(I)V

    :cond_1
    return-void
.end method

.method public setCamera(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_manager:Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    .line 4550
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_open_state:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    .line 4555
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENING:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    if-ne v0, v1, :cond_2

    return-void

    .line 4560
    :cond_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->canSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4565
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$8;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$8;-><init>(Lnet/sourceforge/opencamera/preview/Preview;I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    :cond_3
    return-void
.end method

.method public setCameraDisplayOrientation()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v0, :cond_1

    .line 4058
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->configureTransform()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4061
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->getDisplayRotationDegrees(Z)I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4065
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setDisplayOrientation(I)V

    :goto_0
    return-void
.end method

.method public setExposure(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    if-eqz v0, :cond_3

    .line 4402
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_exposure:I

    if-ge p1, v0, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_exposure:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4407
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setExposureCompensation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4409
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setExposureCompensationPref(I)V

    .line 4410
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getExposureCompensationString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    :cond_3
    return-void
.end method

.method public setExposureTime(J)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_exposure_time:Z

    if-eqz v0, :cond_2

    .line 4470
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposureTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 4471
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumExposureTime()J

    move-result-wide p1

    goto :goto_0

    .line 4472
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposureTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 4473
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumExposureTime()J

    move-result-wide p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4474
    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setExposureTime(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4476
    invoke-interface {v0, p1, p2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setExposureTimePref(J)V

    .line 4477
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->getExposureTimeString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method public setFocusDistance(FZ)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->minimum_focus_distance:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 4356
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingTargetDistance(F)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4358
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusDistance(F)Z

    goto :goto_1

    .line 4360
    :cond_2
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusDistance(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 4362
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingSourceDistance(F)V

    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4367
    invoke-interface {v0, p1, p2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setFocusDistancePref(FZ)V

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 4372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->decimal_format_2dp_force0:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 4375
    :cond_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_focus_bracketing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4378
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isFocusBracketingPref()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    const p2, 0x7f1000a8

    goto :goto_3

    :cond_4
    const p2, 0x7f1000a7

    goto :goto_3

    :cond_5
    const p2, 0x7f1000a9

    .line 4380
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Ljava/lang/String;Z)V

    :cond_6
    return-void
.end method

.method public setISO(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_iso_range:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->min_iso:I

    if-ge p1, v1, :cond_0

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_iso:I

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 4458
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setISO(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setISOPref(Ljava/lang/String;)V

    .line 4461
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getISOString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method public setUIRotation(I)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->ui_rotation:I

    return-void
.end method

.method public setWhiteBalanceTemperature(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    .line 4422
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setWhiteBalanceTemperature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4424
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setWhiteBalanceTemperaturePref(I)V

    .line 4425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public setupBurstMode()V
    .locals 5

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_expo_bracketing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2291
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isExpoBracketingPref()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2292
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2293
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getExpoBracketingNImagesPref()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setExpoBracketingNImages(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2294
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getExpoBracketingStopsPref()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setExpoBracketingStops(D)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_focus_bracketing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2297
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isFocusBracketingPref()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2298
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2299
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFocusBracketingNImagesPref()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingNImages(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2300
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getFocusBracketingAddInfinityPref()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingAddInfinity(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_burst:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2302
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isCameraBurstPref()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2303
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getBurstForNoiseReduction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_exposure_time:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2305
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2306
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2307
    sget-object v3, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v4, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstForNoiseReduction(ZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2310
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2314
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2315
    invoke-virtual {v0, v1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstForNoiseReduction(ZZ)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2316
    invoke-interface {v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getBurstNImages()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstNImages(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2320
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V

    :goto_0
    return-void
.end method

.method public setupCamera(Z)V
    .locals 13

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2007
    invoke-interface {v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getStartupFocusPref()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2017
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocusForVideo()Ljava/lang/String;

    const/4 v3, 0x0

    .line 2020
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->initCameraParameters()V
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2030
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isVideoPref()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video:Z

    if-nez v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eq v4, v5, :cond_3

    .line 2043
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->switchVideo(ZZ)V

    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const-string v6, "flash_off"

    if-lt v4, v5, :cond_9

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_extensions:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2047
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->isCameraExtensionPref()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2048
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getCameraExtensionPref()I

    move-result v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_extensions:Ljava/util/List;

    .line 2049
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2050
    invoke-virtual {v5, v0, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setCameraExtension(ZI)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 2056
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    .line 2057
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2058
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "flash_frontscreen_torch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 2061
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iput-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    :cond_6
    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v4, :cond_7

    iput-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    :cond_7
    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2076
    invoke-virtual {v4, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAutoExposureLock(Z)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2077
    invoke-virtual {v4, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAutoWhiteBalanceLock(Z)V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2080
    invoke-virtual {v4, v1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setCameraExtension(ZI)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2084
    invoke-virtual {v4, v1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setCameraExtension(ZI)V

    .line 2087
    :goto_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setupCameraParameters()V

    .line 2089
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlashForVideo()V

    if-eqz p1, :cond_a

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v4, :cond_a

    .line 2094
    invoke-virtual {p0, v0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->switchVideo(ZZ)V

    :cond_a
    iget-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v4, :cond_e

    .line 2102
    sget-object v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_tonemap_curve:Z

    if-eqz v5, :cond_b

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2104
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v4

    .line 2107
    :cond_b
    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const/4 v7, 0x0

    if-ne v4, v5, :cond_c

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoLogProfileStrength()F

    move-result v5

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    .line 2108
    :goto_3
    sget-object v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-ne v4, v8, :cond_d

    iget-object v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    invoke-interface {v7}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getVideoProfileGamma()F

    move-result v7

    :cond_d
    iget-object v8, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2114
    invoke-virtual {v8, v4, v5, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setTonemapProfile(Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;FF)V

    :cond_e
    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    .line 2120
    :goto_4
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setVideoHighSpeed(Z)V

    if-eqz v2, :cond_10

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2122
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->supportsAutoFocus()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, ""

    iput-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2125
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFlashValue()Ljava/lang/String;

    move-result-object v4

    .line 2128
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "flash_torch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    iput-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->set_flash_value_after_autofocus:Ljava/lang/String;

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2130
    invoke-virtual {v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFlashValue(Ljava/lang/String;)V

    :cond_10
    iget-boolean v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_raw:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2136
    invoke-interface {v4}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    move-result-object v4

    sget-object v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_ONLY:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    if-eq v4, v5, :cond_11

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2137
    invoke-interface {v5}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getMaxRawImages()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setRaw(ZI)V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2140
    invoke-virtual {v0, v1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setRaw(ZI)V

    .line 2143
    :goto_5
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setupBurstMode()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2146
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isBurstOrExpo()Z

    move-result v0

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2147
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCameraExtension()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_12

    iget-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2148
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getCameraExtension()I

    move-result v6

    goto :goto_6

    :cond_12
    const/4 v6, -0x1

    :goto_6
    if-nez v0, :cond_13

    if-eqz v4, :cond_1a

    .line 2156
    :cond_13
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 2161
    invoke-virtual {v7, v0, v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsRequirements(ZZI)Z

    move-result v8

    if-nez v8, :cond_1a

    const/4 v8, 0x0

    :goto_7
    iget-object v9, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2166
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_16

    iget-object v9, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2167
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 2168
    invoke-virtual {v9, v0, v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsRequirements(ZZI)Z

    move-result v10

    if-eqz v10, :cond_15

    iget v10, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v11, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v10, v10, v11

    iget v11, v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v12, v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v11, v11, v12

    if-gt v10, v11, :cond_15

    if-eqz v3, :cond_14

    .line 2169
    iget v10, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v11, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v10, v10, v11

    iget v11, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v12, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v11, v11, v12

    if-le v10, v11, :cond_15

    :cond_14
    iput v8, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    move-object v3, v9

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_16
    if-nez v3, :cond_1a

    const-string v7, "can\'t find supporting picture size smaller than the current picture size"

    const-string v8, "Preview"

    .line 2176
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_8
    iget-object v9, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2178
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_19

    iget-object v9, p0, Lnet/sourceforge/opencamera/preview/Preview;->photo_sizes:Ljava/util/List;

    .line 2179
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 2180
    invoke-virtual {v9, v0, v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsRequirements(ZZI)Z

    move-result v10

    if-eqz v10, :cond_18

    if-eqz v3, :cond_17

    .line 2181
    iget v10, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v11, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v10, v10, v11

    iget v11, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v12, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v11, v11, v12

    if-le v10, v11, :cond_18

    :cond_17
    iput v7, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_size_index:I

    move-object v3, v9

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_19
    if-nez v3, :cond_1a

    const-string v0, "can\'t find supporting picture size"

    .line 2188
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_1a
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setPreviewSize()V

    .line 2206
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2214
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getZoomPref()I

    move-result v0

    if-ne v0, v5, :cond_1b

    .line 2216
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->find1xZoom()I

    move-result v0

    .line 2218
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->zoomTo(IZ)V

    goto :goto_9

    :cond_1c
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller_supports_zoom:Z

    if-eqz v1, :cond_1d

    if-nez v0, :cond_1d

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 2228
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->resetZoom()V

    :cond_1d
    :goto_9
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2239
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraSetup()V

    if-eqz p1, :cond_1f

    .line 2247
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string v0, "focus_mode_continuous_picture"

    .line 2248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/16 p1, 0x5dc

    goto :goto_a

    :cond_1e
    const/16 p1, 0x1f4

    .line 2251
    :goto_a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2252
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$6;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$6;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    int-to-long v3, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    if-eqz v2, :cond_20

    .line 2263
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 2264
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$7;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$7;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void

    :catch_0
    move-exception p1

    .line 2023
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 2024
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onCameraError()V

    .line 2025
    invoke-direct {p0, v1, v3}, Lnet/sourceforge/opencamera/preview/Preview;->closeCamera(ZLnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 7831
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    return-void
.end method

.method public showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V
    .locals 1

    .line 7818
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    return-void
.end method

.method public showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V
    .locals 1

    .line 7822
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    return-void
.end method

.method public showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7826
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    return-void
.end method

.method public showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 7872
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getShowToastsPref()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->app_is_paused:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    return-void

    .line 7893
    :cond_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 7897
    new-instance v8, Lnet/sourceforge/opencamera/preview/Preview$22;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lnet/sourceforge/opencamera/preview/Preview$22;-><init>(Lnet/sourceforge/opencamera/preview/Preview;ZLjava/lang/String;ILnet/sourceforge/opencamera/ToastBoxer;Landroid/app/Activity;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x20

    .line 7835
    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    return-void
.end method

.method public startCameraPreview()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_0

    .line 6854
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    .line 6860
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setRecordingHint(Z)V

    .line 6862
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setPreviewFps()V

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6864
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->startPreview()V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraStartPreview:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraStartPreview:I
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_face_detection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 6881
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->startFaceDetection()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->faces_detected:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6870
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6871
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onFailedStartPreview()V

    return-void

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 6885
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/preview/Preview;->setPreviewPaused(Z)V

    .line 6886
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->setupContinuousFocusMove()V

    return-void
.end method

.method public stopVideo(Z)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1160
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->stoppingVideo()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->flashVideoTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1162
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->flashVideoTimerTask:Ljava/util/TimerTask;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->batteryCheckVideoTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 1166
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->batteryCheckVideoTimerTask:Ljava/util/TimerTask;

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_restart_video:I

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 1176
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 1177
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    :try_start_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->test_runtime_on_video_stop:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 1184
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    goto :goto_0

    .line 1183
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 1192
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->close()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    .line 1193
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1195
    new-instance p1, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->videoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    if-eqz p1, :cond_5

    .line 1197
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->close()V

    :cond_5
    iput-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->nextVideoFileInfo:Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time_set:Z

    if-eqz p1, :cond_6

    .line 1200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    .line 1201
    :cond_6
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoProfile()Lnet/sourceforge/opencamera/preview/VideoProfile;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 1202
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onVideoRecordStopError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V

    .line 1205
    :cond_7
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->videoRecordingStopped()V

    :cond_8
    return-void
.end method

.method public stoppedSettingFocusDistance(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz p1, :cond_0

    .line 4394
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFocusBracketingSourceDistance()F

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusDistance(F)Z

    :cond_0
    return-void
.end method

.method public supportsBurst()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_burst:Z

    return v0
.end method

.method public supportsCameraExtension(I)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_extensions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public supportsExpoBracketing()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_expo_bracketing:Z

    return v0
.end method

.method public supportsExposureLock()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_lock_supported:Z

    return v0
.end method

.method public supportsExposureTime()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_exposure_time:Z

    return v0
.end method

.method public supportsExposures()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->exposures:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsFaceDetection()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_face_detection:Z

    return v0
.end method

.method public supportsFlash()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsFocus()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsFocusBracketing()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_focus_bracketing:Z

    return v0
.end method

.method public supportsISORange()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_iso_range:Z

    return v0
.end method

.method public supportsOpticalStabilization()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_optical_stabilization:Z

    return v0
.end method

.method public supportsPhotoVideoRecording()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_photo_video_recording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_high_speed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsRaw()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_raw:Z

    return v0
.end method

.method public supportsTonemapCurve()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_tonemap_curve:Z

    return v0
.end method

.method public supportsVideoHighSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_high_speed:Z

    return v0
.end method

.method public supportsVideoStabilization()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video_stabilization:Z

    return v0
.end method

.method public supportsWhiteBalanceLock()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_lock_supported:Z

    return v0
.end method

.method public supportsWhiteBalanceTemperature()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_white_balance_temperature:Z

    return v0
.end method

.method public supportsZoom()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    return v0
.end method

.method public supportsZoomForCameraExtension(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->supported_extensions_zoom:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1043
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1047
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->mySurfaceChanged()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1025
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->mySurfaceCreated()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->cameraSurface:Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    .line 1026
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->mySurfaceDestroyed()V

    return-void
.end method

.method public switchVideo(ZZ)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->supports_video:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    .line 4782
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    :cond_2
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    goto :goto_0

    .line 4787
    :cond_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isOnTimer()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 4788
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelTimer()V

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    goto :goto_0

    :cond_4
    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    :goto_0
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eq v2, v0, :cond_9

    .line 4802
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->setFocusPref(Z)V

    if-eqz p2, :cond_6

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    .line 4810
    invoke-interface {p2, v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setVideoPref(Z)V

    :cond_6
    if-nez p1, :cond_7

    .line 4814
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlashForVideo()V

    :cond_7
    if-nez p1, :cond_8

    .line 4830
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->reopenCamera()V

    :cond_8
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz p1, :cond_9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4838
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRecordAudioPref()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4844
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.RECORD_AUDIO"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4847
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->requestRecordAudioPermission()V

    :cond_9
    return-void
.end method

.method public takePicturePressed(ZZ)V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_surface:Z

    if-nez v0, :cond_1

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    return-void

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const-string p1, "Preview"

    const-string p2, "continuous_fast_burst not supported for video mode"

    .line 5330
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    return-void

    .line 5334
    :cond_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isOnTimer()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5335
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelTimer()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const p2, 0x7f100044

    .line 5336
    invoke-virtual {p0, p1, p2, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_6

    .line 5341
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time_set:Z

    if-eqz p1, :cond_5

    .line 5343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->video_start_time:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, p1, v2

    if-gez v0, :cond_4

    goto :goto_0

    .line 5351
    :cond_4
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_a

    :cond_7
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    iget p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    if-eqz p1, :cond_8

    .line 5360
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelRepeat()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const p2, 0x7f100043

    .line 5361
    invoke-virtual {p0, p1, p2, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    goto :goto_1

    :cond_8
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5363
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getBurstType()Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object p1

    sget-object p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCapturingBurst()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 5364
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->stopFocusBracketingBurst()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->take_photo_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    const p2, 0x7f100042

    .line 5365
    invoke-virtual {p0, p1, p2, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_c

    :cond_b
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5372
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->canTakeNewPhoto()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 5381
    :cond_c
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    if-nez p1, :cond_10

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5389
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getTimerPref()J

    move-result-wide v3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 5391
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getRepeatPref()Ljava/lang/String;

    move-result-object v0

    const-string v5, "unlimited"

    .line 5392
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    goto :goto_3

    .line 5400
    :cond_e
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5407
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x1

    :goto_2
    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->remaining_repeat_photos:I

    :goto_3
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_f

    .line 5414
    invoke-direct {p0, v1, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePicture(ZZZ)V

    goto :goto_4

    .line 5417
    :cond_f
    invoke-direct {p0, v3, v4, v1}, Lnet/sourceforge/opencamera/preview/Preview;->takePictureOnTimer(JZ)V

    :goto_4
    return-void

    .line 5385
    :cond_10
    :goto_5
    invoke-direct {p0, v1, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->takePicture(ZZZ)V

    return-void
.end method

.method public timeSinceStartedAutoFocus()J
    .locals 5

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_started_time:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 8959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->focus_started_time:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toggleExposureLock()V
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_lock_supported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_locked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_locked:Z

    .line 5303
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_exposure_locked:Z

    .line 5304
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAutoExposureLock(Z)V

    :cond_2
    return-void
.end method

.method public toggleWhiteBalanceLock()V
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_lock_supported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_locked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_locked:Z

    .line 5282
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->cancelAutoFocus()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_white_balance_locked:Z

    .line 5283
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAutoWhiteBalanceLock(Z)V

    :cond_2
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 615
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->clearActiveFakeToast()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_preview_started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->gestureDetector:Landroid/view/GestureDetector;

    .line 621
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 626
    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 632
    invoke-interface {v2, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->touchEvent(Landroid/view/MotionEvent;)V

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v2, v1, :cond_2

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_was_multitouch:Z

    return v1

    .line 641
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_was_multitouch:Z

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_orig_x:F

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_orig_y:F

    :cond_3
    return v1

    :cond_4
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_was_multitouch:Z

    if-eqz v2, :cond_5

    return v1

    .line 661
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_orig_x:F

    sub-float/2addr v2, v4

    iget v4, p0, Lnet/sourceforge/opencamera/preview/Preview;->touch_orig_y:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    .line 666
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41f80000    # 31.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v3, v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    return v1

    .line 680
    :cond_6
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview;->takePhotoOnDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 686
    :cond_7
    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->handleSingleTouch(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public updateFlash(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->is_video:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4991
    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->updateFlash(Ljava/lang/String;Z)Z

    return-void
.end method

.method public updateFocus(Ljava/lang/String;ZZ)V
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5125
    invoke-direct {p0, p1, p2, v0, p3}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(Ljava/lang/String;ZZZ)Z

    return-void
.end method

.method public updateLevelAngles()V
    .locals 7

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_level_angle:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->natural_level_angle:D

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->level_angle:D

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 6959
    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getCalibratedLevelAngle()D

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->level_angle:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->orig_level_angle:D

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->current_orientation:I

    int-to-float v0, v0

    float-to-double v0, v0

    .line 6962
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->level_angle:D

    const-wide v0, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v6, v2, v0

    if-gez v6, :cond_0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->level_angle:D

    goto :goto_0

    :cond_0
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v0

    if-lez v6, :cond_1

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lnet/sourceforge/opencamera/preview/Preview;->level_angle:D

    :cond_1
    :goto_0
    return-void
.end method

.method public usingCamera2API()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->using_android_l:Z

    return v0
.end method

.method public zoomTo(IZ)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->max_zoom_factor:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview;->camera_controller:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_zoom:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->has_smooth_zoom:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->smooth_zoom:F

    goto :goto_1

    :cond_2
    const/high16 p2, -0x40800000    # -1.0f

    .line 4336
    :goto_1
    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setZoom(IF)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview;->applicationInterface:Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    .line 4337
    invoke-interface {p2, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setZoomPref(I)V

    .line 4338
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/Preview;->clearFocusAreas()V

    :cond_3
    return-void
.end method
