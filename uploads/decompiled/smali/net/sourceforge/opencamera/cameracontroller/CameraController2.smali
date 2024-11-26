.class public Lnet/sourceforge/opencamera/cameracontroller/CameraController2;
.super Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;
    }
.end annotation


# static fields
.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_WAITING_AUTOFOCUS:I = 0x1

.field private static final STATE_WAITING_FAKE_PRECAPTURE_DONE:I = 0x5

.field private static final STATE_WAITING_FAKE_PRECAPTURE_START:I = 0x4

.field private static final STATE_WAITING_PRECAPTURE_DONE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraController2"

.field private static final autofocus_timeout_c:J = 0x3e8L

.field private static final do_af_trigger_for_continuous:Z = false

.field private static final jtlog2_values_base:[F

.field private static final jtlog_values_base:[F

.field private static final jtvideo_values_base:[F

.field private static final max_expo_bracketing_n_images:I = 0x5

.field private static final max_preview_exposure_time_c:J = 0xbebc200L

.field private static final max_white_balance_temperature_c:I = 0x3a98

.field private static final min_white_balance_temperature_c:I = 0x3e8

.field private static final precapture_done_timeout_c:J = 0xbb8L

.field private static final precapture_start_timeout_c:J = 0x7d0L

.field private static final tonemap_log_max_curve_points_c:I = 0x40


# instance fields
.field private ae_fps_ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

.field private autofocus_time_ms:J

.field private final background_camera_lock:Ljava/lang/Object;

.field private burst_for_noise_reduction:Z

.field private burst_requested_n_images:I

.field private burst_single_request:Z

.field private burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

.field private camera:Landroid/hardware/camera2/CameraDevice;

.field private final cameraIdS:Ljava/lang/String;

.field private final camera_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

.field private camera_extension:I

.field private final camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private capture_follows_autofocus_hint:Z

.field private capture_result_ae:Ljava/lang/Integer;

.field private capture_result_aperture:F

.field private capture_result_exposure_time:J

.field private capture_result_frame_duration:J

.field private capture_result_has_aperture:Z

.field private capture_result_has_exposure_time:Z

.field private capture_result_has_frame_duration:Z

.field private capture_result_has_iso:Z

.field private capture_result_has_white_balance_rggb:Z

.field private capture_result_is_ae_scanning:Z

.field private capture_result_iso:I

.field private capture_result_white_balance_rggb:Landroid/hardware/camera2/params/RggbChannelVector;

.field private characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private characteristics_facing:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

.field private characteristics_sensor_orientation:I

.field private final context:Landroid/content/Context;

.field private continuous_burst_in_progress:Z

.field private continuous_burst_requested_last_capture:Z

.field private continuous_focus_move_callback:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

.field private current_zoom_value:I

.field private done_all_captures:Z

.field private dummy_capture_hack:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private expo_bracketing_n_images:I

.field private expo_bracketing_stops:D

.field private extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

.field private extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

.field private face_detection_listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

.field private fake_precapture_torch_focus_performed:Z

.field private fake_precapture_torch_performed:Z

.field private fake_precapture_turn_on_torch_id:Landroid/hardware/camera2/CaptureRequest;

.field private fake_precapture_use_flash:Z

.field private fake_precapture_use_flash_time_ms:J

.field private focus_bracketing_add_infinity:Z

.field private focus_bracketing_in_progress:Z

.field private focus_bracketing_n_images:I

.field private focus_bracketing_source_distance:F

.field private focus_bracketing_target_distance:F

.field private handler:Landroid/os/Handler;

.field private has_received_frame:Z

.field private hs_fps_ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private imageReader:Landroid/media/ImageReader;

.field private imageReaderRaw:Landroid/media/ImageReader;

.field private initial_focus_mode:Ljava/lang/String;

.field private is_flash_required:Z

.field private final is_samsung:Z

.field private final is_samsung_galaxy_s:Z

.field private final is_samsung_s7:Z

.field private is_video_high_speed:Z

.field private jpeg_todo:Z

.field private final jtlog2_values:[F

.field private final jtlog_values:[F

.field private final jtvideo_values:[F

.field private last_faces_detected:I

.field private max_exposure_time:J

.field private max_raw_images:I

.field private final media_action_sound:Landroid/media/MediaActionSound;

.field private min_exposure_time:J

.field private modified_from_camera_settings:Z

.field private n_burst:I

.field private n_burst_raw:I

.field private n_burst_taken:I

.field private n_burst_total:I

.field private noise_reduction_low_light:Z

.field private onImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;

.field private onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

.field private final open_camera_lock:Ljava/lang/Object;

.field private final pending_burst_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final pending_burst_images_raw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/RawImage;",
            ">;"
        }
    .end annotation
.end field

.field private pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

.field private picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

.field private picture_height:I

.field private picture_width:I

.field private precapture_state_change_time_ms:J

.field private previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

.field private final previewExtensionCaptureCallback:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private previewIsVideoMode:Z

.field private final preview_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

.field private preview_height:I

.field private preview_width:I

.field private push_repeating_request_when_torch_off:Z

.field private push_repeating_request_when_torch_off_id:Landroid/hardware/camera2/CaptureRequest;

.field private raw_size:Landroid/util/Size;

.field private raw_todo:Z

.field private ready_for_capture:Z

.field private sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

.field private slow_burst_capture_requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private slow_burst_start_ms:J

.field private sounds_enabled:Z

.field private state:I

.field private supported_extensions_zoom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supports_exposure_time:Z

.field private supports_face_detect_mode_full:Z

.field private supports_face_detect_mode_simple:Z

.field private supports_optical_stabilization:Z

.field private supports_photo_video_recording:Z

.field private supports_white_balance_temperature:Z

.field private surface_texture:Landroid/view/Surface;

.field private take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private thread:Landroid/os/HandlerThread;

.field private use_expo_fast_burst:Z

.field private use_fake_precapture:Z

.field private use_fake_precapture_mode:Z

.field private video_recorder_surface:Landroid/view/Surface;

.field private want_raw:Z

.field private want_video_high_speed:Z

.field private zoom_ratios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zoom_value_1x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x22

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtvideo_values_base:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog_values_base:[F

    const/16 v0, 0x24

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog2_values_base:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3c23d70a    # 0.01f
        0x3d6147ae    # 0.055f
        0x3ca3d70a    # 0.02f
        0x3dcccccd    # 0.1f
        0x3d4ccccd    # 0.05f
        0x3e570a3d    # 0.21f
        0x3db851ec    # 0.09f
        0x3e9eb852    # 0.31f
        0x3e051eb8    # 0.13f
        0x3ec28f5c    # 0.38f
        0x3e3851ec    # 0.18f
        0x3ee66666    # 0.45f
        0x3e8f5c29    # 0.28f
        0x3f11eb85    # 0.57f
        0x3eb33333    # 0.35f
        0x3f23d70a    # 0.64f
        0x3ee66666    # 0.45f
        0x3f3851ec    # 0.72f
        0x3f028f5c    # 0.51f
        0x3f428f5c    # 0.76f
        0x3f19999a    # 0.6f
        0x3f51eb85    # 0.82f
        0x3f2b851f    # 0.67f
        0x3f5c28f6    # 0.86f
        0x3f451eb8    # 0.77f
        0x3f68f5c3    # 0.91f
        0x3f6147ae    # 0.88f
        0x3f75c28f    # 0.96f
        0x3f7851ec    # 0.97f
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3c23d70a    # 0.01f
        0x3d8f5c29    # 0.07f
        0x3cf5c28f    # 0.03f
        0x3e2e147b    # 0.17f
        0x3d4ccccd    # 0.05f
        0x3e800000    # 0.25f
        0x3d8f5c29    # 0.07f
        0x3e9eb852    # 0.31f
        0x3db851ec    # 0.09f
        0x3eb851ec    # 0.36f
        0x3e051eb8    # 0.13f
        0x3ee147ae    # 0.44f
        0x3e3851ec    # 0.18f
        0x3f028f5c    # 0.51f
        0x3e75c28f    # 0.24f
        0x3f11eb85    # 0.57f
        0x3e9eb852    # 0.31f
        0x3f23d70a    # 0.64f
        0x3ec28f5c    # 0.38f
        0x3f333333    # 0.7f
        0x3eeb851f    # 0.46f
        0x3f428f5c    # 0.76f
        0x3f147ae1    # 0.58f
        0x3f547ae1    # 0.83f
        0x3f333333    # 0.7f
        0x3f63d70a    # 0.89f
        0x3f5c28f6    # 0.86f
        0x3f733333    # 0.95f
        0x3f7d70a4    # 0.99f
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3c23d70a    # 0.01f
        0x3db851ec    # 0.09f
        0x3cf5c28f    # 0.03f
        0x3e6b851f    # 0.23f
        0x3d8f5c29    # 0.07f
        0x3ebd70a4    # 0.37f
        0x3df5c28f    # 0.12f
        0x3ef5c28f    # 0.48f
        0x3e2e147b    # 0.17f
        0x3f0f5c29    # 0.56f
        0x3e800000    # 0.25f
        0x3f23d70a    # 0.64f
        0x3ea3d70a    # 0.32f
        0x3f333333    # 0.7f
        0x3ec7ae14    # 0.39f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f4f5c29    # 0.81f
        0x3f170a3d    # 0.59f
        0x3f59999a    # 0.85f
        0x3f28f5c3    # 0.66f
        0x3f6147ae    # 0.88f
        0x3f3851ec    # 0.72f
        0x3f666666    # 0.9f
        0x3f47ae14    # 0.78f
        0x3f6b851f    # 0.92f
        0x3f6147ae    # 0.88f
        0x3f733333    # 0.95f
        0x3f6b851f    # 0.92f
        0x3f75c28f    # 0.96f
        0x3f7d70a4    # 0.99f
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    .line 2035
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;-><init>(I)V

    .line 173
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J

    const/4 v3, -0x1

    iput v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->last_faces_detected:I

    .line 188
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->open_camera_lock:Ljava/lang/Object;

    .line 189
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 193
    sget-object v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    iput-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    const/4 v4, 0x3

    iput v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->expo_bracketing_n_images:I

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iput-wide v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->expo_bracketing_stops:D

    const/4 v5, 0x1

    iput-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_expo_fast_burst:Z

    iput v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_n_images:I

    const/4 v6, 0x0

    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_source_distance:F

    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_target_distance:F

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_add_infinity:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->dummy_capture_hack:Z

    .line 236
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_burst_images:Ljava/util/List;

    .line 237
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_burst_images_raw:Ljava/util/List;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_start_ms:J

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash_time_ms:J

    .line 280
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->media_action_sound:Landroid/media/MediaActionSound;

    iput-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sounds_enabled:Z

    .line 1983
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off:Z

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off_id:Landroid/hardware/camera2/CaptureRequest;

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_turn_on_torch_id:Landroid/hardware/camera2/CaptureRequest;

    .line 8164
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v1, v6, :cond_0

    .line 2042
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewExtensionCaptureCallback:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewExtensionCaptureCallback:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    :goto_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->context:Landroid/content/Context;

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    iput-object p4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 2053
    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "samsung"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung:Z

    .line 2054
    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "sm-g93"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    iput-boolean p4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung_s7:Z

    if-eqz p3, :cond_1

    .line 2055
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "sm-g"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung_galaxy_s:Z

    .line 2062
    new-instance p3, Landroid/os/HandlerThread;

    const-string p4, "CameraBackground"

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->thread:Landroid/os/HandlerThread;

    .line 2063
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 2064
    new-instance p3, Landroid/os/Handler;

    iget-object p4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 2065
    new-instance p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$3;

    invoke-direct {p3, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$3;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->executor:Ljava/util/concurrent/Executor;

    const-string p3, "camera"

    .line 2072
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    .line 2213
    new-instance p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;

    invoke-direct {p3, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraManager;)V

    .line 2218
    :try_start_0
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object p4

    aget-object p2, p4, p2

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->cameraIdS:Ljava/lang/String;

    iget-object p4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 2221
    invoke-static {p1, p2, p3, p4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 2274
    new-instance p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;

    invoke-direct {p2, p0, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2301
    monitor-enter v3

    .line 2302
    :goto_2
    :try_start_1
    iget-boolean p1, p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->callback_done:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->open_camera_lock:Ljava/lang/Object;

    .line 2305
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2310
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2313
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->media_action_sound:Landroid/media/MediaActionSound;

    const/4 p2, 0x2

    .line 2340
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaActionSound;I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->media_action_sound:Landroid/media/MediaActionSound;

    .line 2341
    invoke-static {p1, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaActionSound;I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->media_action_sound:Landroid/media/MediaActionSound;

    .line 2342
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaActionSound;I)V

    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtvideo_values_base:[F

    .line 2345
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->enforceMinTonemapCurvePoints([F)[F

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtvideo_values:[F

    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog_values_base:[F

    .line 2346
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->enforceMinTonemapCurvePoints([F)[F

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog_values:[F

    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog2_values_base:[F

    .line 2347
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->enforceMinTonemapCurvePoints([F)[F

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog2_values:[F

    return-void

    :cond_3
    const-string p1, "CameraController2"

    const-string p2, "camera failed to open"

    .line 2316
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 2313
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catch_1
    move-exception p1

    .line 2269
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 2270
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catch_2
    move-exception p1

    .line 2258
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2259
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catch_3
    move-exception p1

    .line 2249
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 2250
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catch_4
    move-exception p1

    .line 2240
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 2241
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catch_5
    move-exception p1

    .line 2231
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 2232
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private BLOCK_FOR_EXTENSIONS()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 1300
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eq v0, v1, :cond_0

    return-void

    .line 1301
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for extension session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static GaintoRGB(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    div-float/2addr v0, p0

    return v0
.end method

.method private static RGBtoGain(F)F
    .locals 2

    const v0, 0x3727c5ac    # 1.0E-5f

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    .line 1388
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    return-object p0
.end method

.method static synthetic access$100(I)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 0

    .line 71
    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertTemperatureToRggbVector(I)Landroid/hardware/camera2/params/RggbChannelVector;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)[F
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog_values:[F

    return-object p0
.end method

.method static synthetic access$1100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)[F
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog2_values:[F

    return-object p0
.end method

.method static synthetic access$11802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    return-object p1
.end method

.method static synthetic access$11900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/view/Surface;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->surface_texture:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$12000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/view/Surface;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->video_recorder_surface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$12100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V

    return-void
.end method

.method static synthetic access$12600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureBurst(Z)V

    return-void
.end method

.method static synthetic access$12700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->has_received_frame:Z

    return p0
.end method

.method static synthetic access$12702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->has_received_frame:Z

    return p1
.end method

.method static synthetic access$12800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->modified_from_camera_settings:Z

    return p0
.end method

.method static synthetic access$12802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->modified_from_camera_settings:Z

    return p1
.end method

.method static synthetic access$1300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result p0

    return p0
.end method

.method static synthetic access$13300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    return p0
.end method

.method static synthetic access$13400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_focus_performed:Z

    return p0
.end method

.method static synthetic access$13402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_focus_performed:Z

    return p1
.end method

.method static synthetic access$13500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    return p0
.end method

.method static synthetic access$13502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    return p1
.end method

.method static synthetic access$13600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Integer;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_ae:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$13602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_ae:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$13700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_flash_required:Z

    return p0
.end method

.method static synthetic access$13702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_flash_required:Z

    return p1
.end method

.method static synthetic access$13802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_is_ae_scanning:Z

    return p1
.end method

.method static synthetic access$13900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J

    return-wide v0
.end method

.method static synthetic access$13902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J

    return-wide p1
.end method

.method static synthetic access$1400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/media/ImageReader;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$14000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ready_for_capture:Z

    return p0
.end method

.method static synthetic access$14002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ready_for_capture:Z

    return p1
.end method

.method static synthetic access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    return-object p0
.end method

.method static synthetic access$14102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    return-object p1
.end method

.method static synthetic access$14200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    return p0
.end method

.method static synthetic access$14202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    return p1
.end method

.method static synthetic access$14300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_turn_on_torch_id:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$14302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_turn_on_torch_id:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    return p0
.end method

.method static synthetic access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    return p1
.end method

.method static synthetic access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    return-wide v0
.end method

.method static synthetic access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    return-wide p1
.end method

.method static synthetic access$14600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture()V

    return-void
.end method

.method static synthetic access$14700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureAfterPrecapture()V

    return-void
.end method

.method static synthetic access$14800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_focus_move_callback:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    return-object p0
.end method

.method static synthetic access$14902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_iso:Z

    return p1
.end method

.method static synthetic access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    return-object p0
.end method

.method static synthetic access$15002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_iso:I

    return p1
.end method

.method static synthetic access$1502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    return-object p1
.end method

.method static synthetic access$15102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_exposure_time:Z

    return p1
.end method

.method static synthetic access$15200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_exposure_time:J

    return-wide v0
.end method

.method static synthetic access$15202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_exposure_time:J

    return-wide p1
.end method

.method static synthetic access$15302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_frame_duration:Z

    return p1
.end method

.method static synthetic access$15402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_frame_duration:J

    return-wide p1
.end method

.method static synthetic access$15502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_aperture:Z

    return p1
.end method

.method static synthetic access$15602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;F)F
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_aperture:F

    return p1
.end method

.method static synthetic access$15702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_white_balance_rggb:Z

    return p1
.end method

.method static synthetic access$15802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/params/RggbChannelVector;)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_white_balance_rggb:Landroid/hardware/camera2/params/RggbChannelVector;

    return-object p1
.end method

.method static synthetic access$15900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->face_detection_listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    return-object p0
.end method

.method static synthetic access$1600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$16000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/graphics/Rect;
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getViewableRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$16100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->last_faces_detected:I

    return p0
.end method

.method static synthetic access$16102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->last_faces_detected:I

    return p1
.end method

.method static synthetic access$16200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertFromCameraFace(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$16300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    return-object p0
.end method

.method static synthetic access$16400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    return-object p0
.end method

.method static synthetic access$16502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->done_all_captures:Z

    return p1
.end method

.method static synthetic access$16600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off:Z

    return p0
.end method

.method static synthetic access$16602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off:Z

    return p1
.end method

.method static synthetic access$16700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off_id:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$16702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off_id:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->playSound(I)V

    return-void
.end method

.method static synthetic access$1800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    return p0
.end method

.method static synthetic access$1808(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 2

    .line 71
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    return v0
.end method

.method static synthetic access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_capture_requests:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung_s7:Z

    return p0
.end method

.method static synthetic access$2000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    return-object p0
.end method

.method static synthetic access$2100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$2102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$2200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    return p0
.end method

.method static synthetic access$2202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    return p1
.end method

.method static synthetic access$2300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    return p0
.end method

.method static synthetic access$2302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    return p1
.end method

.method static synthetic access$2400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    return-object p0
.end method

.method static synthetic access$2402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    return-object p1
.end method

.method static synthetic access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_single_request:Z

    return p0
.end method

.method static synthetic access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_burst_images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    return p0
.end method

.method static synthetic access$2802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    return p1
.end method

.method static synthetic access$2810(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 2

    .line 71
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    return v0
.end method

.method static synthetic access$2900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_requested_last_capture:Z

    return p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    return-object p0
.end method

.method static synthetic access$3000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    return-void
.end method

.method static synthetic access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$3200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method static synthetic access$3300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->postNextSlowBurst()V

    return-void
.end method

.method static synthetic access$3400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_in_progress:Z

    return p0
.end method

.method static synthetic access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    return p0
.end method

.method static synthetic access$3502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    return p1
.end method

.method static synthetic access$3510(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 2

    .line 71
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    return v0
.end method

.method static synthetic access$3700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkImagesCompleted()V

    return-void
.end method

.method static synthetic access$3800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static synthetic access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    return-object p0
.end method

.method static synthetic access$402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p1
.end method

.method static synthetic access$4300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_total:I

    return p0
.end method

.method static synthetic access$4400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/RawImage;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    return-object p0
.end method

.method static synthetic access$4402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/RawImage;)Lnet/sourceforge/opencamera/cameracontroller/RawImage;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    return-object p1
.end method

.method static synthetic access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_burst_images_raw:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    return-object p0
.end method

.method static synthetic access$4900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->cameraIdS:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    return p0
.end method

.method static synthetic access$5002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics_sensor_orientation:I

    return p1
.end method

.method static synthetic access$5102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics_facing:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object p1
.end method

.method static synthetic access$5202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraExtensionCharacteristics;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    return-object p1
.end method

.method static synthetic access$5300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createPreviewRequest()V

    return-void
.end method

.method static synthetic access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->open_camera_lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onError(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    return p0
.end method

.method static synthetic access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_optical_stabilization:Z

    return p0
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung:Z

    return p0
.end method

.method static synthetic access$900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)[F
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtvideo_values:[F

    return-object p0
.end method

.method private allowManualWB()Z
    .locals 2

    .line 3709
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexus 6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private capture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5712
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private capture(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 5721
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 5722
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5727
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 5728
    invoke-static {v1, p1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 5729
    monitor-exit v0

    return-void

    .line 5725
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 5729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkImagesCompleted()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 4685
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->done_all_captures:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    if-nez v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 4710
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 4714
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePendingRaw()V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    .line 4722
    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onCompleted()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 4723
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 4724
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v1, v3, :cond_5

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_in_progress:Z

    .line 4726
    :cond_5
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :goto_3
    return-void

    :catchall_1
    move-exception v1

    .line 4710
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private clearPending()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_burst_images:Ljava/util/List;

    .line 4642
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_burst_images_raw:Ljava/util/List;

    .line 4643
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4646
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->access$8202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;Z)Z

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    if-eqz v1, :cond_1

    .line 4649
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->clear()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    .line 4650
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->access$8302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;Z)Z

    :cond_1
    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_capture_requests:Ljava/util/List;

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_total:I

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_single_request:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_start_ms:J

    return-void
.end method

.method private closeCaptureSession()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 2353
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2357
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_1

    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 2365
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraExtensionSession;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2368
    :try_start_2
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_1
    :goto_0
    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 2373
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private closePictureImageReader()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2481
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 2486
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    :cond_1
    return-void
.end method

.method public static computeZoomRatios(Ljava/util/List;FF)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FF)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide v3, 0x3ff04798c91ecd91L    # 1.0174796921026863

    move-wide v5, v3

    :goto_0
    const v7, 0x3727c5ac    # 1.0E-5f

    sub-float v7, p2, v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpg-double v11, v5, v7

    if-gez v11, :cond_0

    mul-double v9, v9, v5

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v9, v7

    double-to-int v7, v9

    .line 2574
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-double v5, v5, v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, p2, v3

    float-to-int v4, v4

    .line 2578
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 2579
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    mul-float v5, v1, v3

    float-to-int v5, v5

    .line 2589
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 2590
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    cmpg-float v3, v7, v1

    if-gez v3, :cond_3

    .line 2594
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2597
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x64

    if-ge v3, v7, :cond_6

    .line 2598
    div-int/lit8 v3, v4, 0x5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2601
    div-int/lit8 v8, v4, 0xa

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    float-to-double v11, v1

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v1

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move v1, v8

    int-to-double v7, v3

    .line 2609
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v15, v7

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const/4 v13, 0x0

    :goto_1
    add-int/lit8 v14, v3, -0x1

    if-ge v13, v14, :cond_5

    mul-double v11, v11, v7

    mul-double v14, v11, v9

    double-to-int v14, v14

    .line 2616
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_4

    .line 2618
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2623
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_7

    const/16 v8, 0x64

    .line 2625
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :cond_7
    int-to-float v1, v4

    const/high16 v4, 0x41700000    # 15.0f

    div-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 2632
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2636
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2637
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2639
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v7, v8, :cond_8

    rem-int/lit8 v8, v7, 0x64

    if-nez v8, :cond_8

    .line 2640
    div-int/lit8 v8, v7, 0x64

    if-eqz v8, :cond_8

    add-int/lit8 v9, v8, -0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_8

    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v9, v1, -0x1

    if-ge v8, v9, :cond_8

    .line 2644
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    return v3
.end method

.method private convertAntiBanding(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "auto"

    goto :goto_0

    :cond_1
    const-string p1, "60hz"

    goto :goto_0

    :cond_2
    const-string p1, "50hz"

    goto :goto_0

    :cond_3
    const-string p1, "off"

    :goto_0
    return-object p1
.end method

.method private convertAreaToMeteringRectangle(Landroid/graphics/Rect;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .line 5419
    iget-object v0, p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertRectToCamera2(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 5420
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    iget p2, p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;->weight:I

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method private convertColorEffect(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "aqua"

    goto :goto_0

    :pswitch_1
    const-string p1, "blackboard"

    goto :goto_0

    :pswitch_2
    const-string p1, "whiteboard"

    goto :goto_0

    :pswitch_3
    const-string p1, "posterize"

    goto :goto_0

    :pswitch_4
    const-string p1, "sepia"

    goto :goto_0

    :pswitch_5
    const-string p1, "solarize"

    goto :goto_0

    :pswitch_6
    const-string p1, "negative"

    goto :goto_0

    :pswitch_7
    const-string p1, "mono"

    goto :goto_0

    :pswitch_8
    const-string p1, "none"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method private convertEdgeMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "high_quality"

    goto :goto_0

    :cond_1
    const-string p1, "fast"

    goto :goto_0

    :cond_2
    const-string p1, "off"

    :goto_0
    return-object p1
.end method

.method private convertFocusModeToValue(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "focus_mode_edof"

    goto :goto_0

    :cond_1
    const-string p1, "focus_mode_continuous_picture"

    goto :goto_0

    :cond_2
    const-string p1, "focus_mode_continuous_video"

    goto :goto_0

    :cond_3
    const-string p1, "focus_mode_macro"

    goto :goto_0

    :cond_4
    const-string p1, "focus_mode_auto"

    goto :goto_0

    :cond_5
    const-string p1, "focus_mode_manual2"

    :goto_0
    return-object p1
.end method

.method private convertFocusModesToValues([IF)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IF)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2497
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2502
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2503
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2504
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2505
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "focus_mode_auto"

    .line 2508
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x2

    .line 2513
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "focus_mode_macro"

    .line 2514
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2518
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "focus_mode_locked"

    .line 2519
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "focus_mode_infinity"

    .line 2525
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5

    const-string p2, "focus_mode_manual2"

    .line 2530
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p2, 0x5

    .line 2536
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "focus_mode_edof"

    .line 2537
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 p2, 0x4

    .line 2541
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "focus_mode_continuous_picture"

    .line 2542
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 p2, 0x3

    .line 2546
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "focus_mode_continuous_video"

    .line 2547
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object p1
.end method

.method private convertFromCameraFace(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;
    .locals 1

    .line 5452
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertRectFromCamera2(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 5453
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/Face;)I

    move-result p2

    invoke-direct {v0, p2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;-><init>(ILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private convertMeteringRectangleToArea(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;
    .locals 1

    .line 5447
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertRectFromCamera2(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 5448
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    invoke-static {p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;-><init>(Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method private convertNoiseReductionMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "minimal"

    goto :goto_0

    :cond_1
    const-string p1, "high_quality"

    goto :goto_0

    :cond_2
    const-string p1, "fast"

    goto :goto_0

    :cond_3
    const-string p1, "off"

    :goto_0
    return-object p1
.end method

.method private convertRectFromCamera2(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .line 5425
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 5426
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 5427
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 5428
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v6

    int-to-double v6, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double p1, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, p1

    const-wide p1, 0x409f400000000000L    # 2000.0

    mul-double v0, v0, p1

    double-to-int v0, v0

    const/16 v1, 0x3e8

    sub-int/2addr v0, v1

    mul-double v4, v4, p1

    double-to-int v4, v4

    sub-int/2addr v4, v1

    mul-double v2, v2, p1

    double-to-int v2, v2

    sub-int/2addr v2, v1

    mul-double v6, v6, p1

    double-to-int p1, v6

    sub-int/2addr p1, v1

    const/16 p2, -0x3e8

    .line 5434
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5435
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5436
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5437
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5438
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5439
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5440
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5441
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5443
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private convertRectToCamera2(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12

    .line 5398
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    const-wide v2, 0x409f400000000000L    # 2000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 5399
    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    .line 5400
    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    .line 5401
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 p2, p2, 0x3e8

    int-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v2

    .line 5402
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-double v2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-double v10, p2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-int p2, v2

    .line 5403
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    double-to-int v0, v0

    .line 5404
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    double-to-int v1, v1

    .line 5405
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v8

    double-to-int v2, v2

    .line 5406
    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5407
    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5408
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5409
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5410
    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5411
    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5412
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5413
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5415
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public static convertRggbToTemperature([F)I
    .locals 13

    const/4 v0, 0x0

    .line 1408
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1409
    aget v2, p0, v1

    const/4 v3, 0x2

    .line 1410
    aget v3, p0, v3

    const/4 v4, 0x3

    .line 1411
    aget p0, p0, v4

    add-float/2addr v2, v3

    .line 1414
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->GaintoRGB(F)F

    move-result v0

    .line 1415
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->GaintoRGB(F)F

    move-result v2

    .line 1416
    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->GaintoRGB(F)F

    move-result p0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v0, v0, v3

    mul-float v2, v2, v3

    mul-float p0, p0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v4, v0, v3

    float-to-int v4, v4

    add-float v5, v2, v3

    float-to-int v5, v5

    add-float v6, p0, v3

    float-to-int v6, v6

    const/16 v7, 0x3a98

    if-ne v4, v6, :cond_0

    const/16 p0, 0x19c8

    goto/16 :goto_2

    :cond_0
    const/high16 v8, 0x40000000    # 2.0f

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    if-le v4, v6, :cond_2

    float-to-double v0, v2

    const-wide v4, 0x406423d3809e615aL    # 161.1195681661

    .line 1431
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    const-wide v4, 0x4058de21a12b8afeL    # 99.4708025861

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v0, v0, v9

    double-to-float v0, v0

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v1, p0

    const-wide v4, 0x407310b778951748L    # 305.0447927307

    .line 1436
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    const-wide v4, 0x406150914111eaa4L    # 138.5177312231

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v1, v4

    mul-double v1, v1, v9

    double-to-float p0, v1

    add-float/2addr v0, p0

    div-float/2addr v0, v8

    :goto_0
    add-float/2addr v0, v3

    float-to-int p0, v0

    goto :goto_2

    :cond_2
    if-le v4, v1, :cond_4

    if-gt v5, v1, :cond_3

    goto :goto_1

    :cond_3
    float-to-double v0, v0

    const-wide v4, 0x40749b2dfcd49634L    # 329.698727446

    .line 1446
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    const-wide v4, -0x3fe1f896446b7185L    # -7.507239275877164

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    add-double/2addr v0, v4

    mul-double v0, v0, v9

    double-to-float p0, v0

    float-to-double v0, v2

    const-wide v11, 0x407201f4680909dcL    # 288.1221695283

    .line 1447
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v11

    const-wide v11, -0x3fd583e0657af152L    # -13.24242861627803

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    mul-double v0, v0, v9

    double-to-float v0, v0

    add-float/2addr p0, v0

    div-float/2addr p0, v8

    add-float/2addr p0, v3

    float-to-int p0, p0

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p0, 0x3a98

    :goto_2
    const/16 v0, 0x3e8

    .line 1451
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1452
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static convertRggbVectorToTemperature(Landroid/hardware/camera2/params/RggbChannelVector;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1393
    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/RggbChannelVector;)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/params/RggbChannelVector;)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2(Landroid/hardware/camera2/params/RggbChannelVector;)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3(Landroid/hardware/camera2/params/RggbChannelVector;)F

    move-result p0

    aput p0, v0, v1

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertRggbToTemperature([F)I

    move-result p0

    return p0
.end method

.method private convertSceneMode(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "barcode"

    goto :goto_0

    :pswitch_1
    const-string p1, "candlelight"

    goto :goto_0

    :pswitch_2
    const-string p1, "party"

    goto :goto_0

    :pswitch_3
    const-string p1, "sports"

    goto :goto_0

    :pswitch_4
    const-string p1, "fireworks"

    goto :goto_0

    :pswitch_5
    const-string p1, "steadyphoto"

    goto :goto_0

    :pswitch_6
    const-string p1, "sunset"

    goto :goto_0

    :pswitch_7
    const-string p1, "snow"

    goto :goto_0

    :pswitch_8
    const-string p1, "beach"

    goto :goto_0

    :pswitch_9
    const-string p1, "theatre"

    goto :goto_0

    :pswitch_a
    const-string p1, "night-portrait"

    goto :goto_0

    :pswitch_b
    const-string p1, "night"

    goto :goto_0

    :pswitch_c
    const-string p1, "landscape"

    goto :goto_0

    :pswitch_d
    const-string p1, "portrait"

    goto :goto_0

    :pswitch_e
    const-string p1, "action"

    goto :goto_0

    :cond_0
    const-string p1, "auto"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
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

.method public static convertTemperatureToRggb(I)[F
    .locals 9

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42700000    # 60.0f

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x42840000    # 66.0f

    cmpg-float v4, p0, v3

    if-gtz v4, :cond_0

    :goto_0
    const/high16 v4, 0x437f0000    # 255.0f

    goto :goto_1

    :cond_0
    sub-float v4, p0, v0

    float-to-double v4, v4

    const-wide v6, -0x403ef3257dc83fbbL    # -0.1332047592

    .line 1323
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x40749b2dfcd49634L    # 329.698727446

    mul-double v4, v4, v6

    double-to-float v4, v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    cmpl-float v5, v4, v2

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    cmpg-float v5, p0, v3

    if-gtz v5, :cond_4

    float-to-double v5, p0

    .line 1332
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide v7, 0x4058de21a12b8afeL    # 99.4708025861

    mul-double v5, v5, v7

    const-wide v7, 0x406423d3809e615aL    # 161.1195681661

    sub-double/2addr v5, v7

    double-to-float v0, v5

    cmpg-float v5, v0, v1

    if-gez v5, :cond_3

    const/4 v0, 0x0

    :cond_3
    cmpl-float v5, v0, v2

    if-lez v5, :cond_6

    goto :goto_2

    :cond_4
    sub-float v0, p0, v0

    float-to-double v5, v0

    const-wide v7, -0x404cab0f1052d94dL    # -0.0755148492

    .line 1340
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x407201f4680909dcL    # 288.1221695283

    mul-double v5, v5, v7

    double-to-float v0, v5

    cmpg-float v5, v0, v1

    if-gez v5, :cond_5

    const/4 v0, 0x0

    :cond_5
    cmpl-float v5, v0, v2

    if-lez v5, :cond_6

    :goto_2
    const/high16 v0, 0x437f0000    # 255.0f

    :cond_6
    cmpl-float v3, p0, v3

    if-ltz v3, :cond_7

    :goto_3
    const/high16 v1, 0x437f0000    # 255.0f

    goto :goto_5

    :cond_7
    const/high16 v3, 0x41980000    # 19.0f

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_8

    goto :goto_5

    :cond_8
    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr p0, v3

    float-to-double v5, p0

    .line 1353
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide v7, 0x406150914111eaa4L    # 138.5177312231

    mul-double v5, v5, v7

    const-wide v7, 0x407310b778951748L    # 305.0447927307

    sub-double/2addr v5, v7

    double-to-float p0, v5

    cmpg-float v3, p0, v1

    if-gez v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, p0

    :goto_4
    cmpl-float p0, v1, v2

    if-lez p0, :cond_a

    goto :goto_3

    :cond_a
    :goto_5
    div-float/2addr v4, v2

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 1370
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->RGBtoGain(F)F

    move-result p0

    .line 1371
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->RGBtoGain(F)F

    move-result v0

    .line 1372
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->RGBtoGain(F)F

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p0, v2, v3

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    const/4 p0, 0x1

    aput v0, v2, p0

    const/4 p0, 0x2

    aput v0, v2, p0

    const/4 p0, 0x3

    aput v1, v2, p0

    return-object v2
.end method

.method private static convertTemperatureToRggbVector(I)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 5

    .line 1306
    invoke-static {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertTemperatureToRggb(I)[F

    move-result-object p0

    .line 1307
    new-instance v0, Landroid/hardware/camera2/params/RggbChannelVector;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    return-object v0
.end method

.method private convertWhiteBalance(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "shade"

    goto :goto_0

    :pswitch_1
    const-string p1, "twilight"

    goto :goto_0

    :pswitch_2
    const-string p1, "cloudy-daylight"

    goto :goto_0

    :pswitch_3
    const-string p1, "daylight"

    goto :goto_0

    :pswitch_4
    const-string p1, "warm-fluorescent"

    goto :goto_0

    :pswitch_5
    const-string p1, "fluorescent"

    goto :goto_0

    :pswitch_6
    const-string p1, "incandescent"

    goto :goto_0

    :pswitch_7
    const-string p1, "auto"

    goto :goto_0

    :pswitch_8
    const-string p1, "manual"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method private createCaptureSession(Landroid/media/MediaRecorder;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    .line 5799
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->closeCaptureSession()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 5801
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 5809
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5815
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5818
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Landroid/util/Range;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5821
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5824
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5827
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5830
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->face_detection_listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5834
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "face_detection_listener not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5831
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "has_face_detect_mode not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5828
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "wb_lock not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5825
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ae_lock not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5822
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "sensor_frame_duration not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5819
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ae_target_fps_range not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5816
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "has_iso not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5813
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "want_raw not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5810
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burst_type not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5807
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "want_video_high_speed not supported for extension session"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_0
    if-eqz p1, :cond_d

    :try_start_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_photo_video_recording:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-nez v0, :cond_c

    if-eqz p2, :cond_c

    .line 5841
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createPictureImageReader()V

    goto :goto_1

    .line 5844
    :cond_c
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->closePictureImageReader()V

    goto :goto_1

    .line 5849
    :cond_d
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createPictureImageReader()V

    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_10

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_width:I

    if-eqz v0, :cond_f

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_height:I

    if-eqz v0, :cond_f

    .line 5860
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->updatePreviewTexture()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 5862
    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->surface_texture:Landroid/view/Surface;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5866
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    .line 5868
    :cond_e
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->surface_texture:Landroid/view/Surface;

    .line 5871
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 5858
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_10
    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 5886
    monitor-enter v0
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_11

    .line 5888
    :try_start_3
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaRecorder;)Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->video_recorder_surface:Landroid/view/Surface;

    goto :goto_3

    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->video_recorder_surface:Landroid/view/Surface;

    .line 5893
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 5995
    :try_start_4
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/media/MediaRecorder;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 5998
    monitor-enter v1
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5999
    :try_start_5
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_13

    iget-boolean v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_photo_video_recording:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-nez v7, :cond_12

    if-eqz p2, :cond_12

    new-array p2, v3, [Landroid/view/Surface;

    aput-object v2, p2, v6

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->video_recorder_surface:Landroid/view/Surface;

    aput-object v2, p2, v5

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 6002
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v2

    aput-object v2, p2, v4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :cond_12
    new-array p2, v4, [Landroid/view/Surface;

    aput-object v2, p2, v6

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->video_recorder_surface:Landroid/view/Surface;

    aput-object v2, p2, v5

    .line 6005
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :cond_13
    iget-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-eqz p2, :cond_14

    .line 6012
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :cond_14
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    if-eqz p2, :cond_15

    new-array p2, v3, [Landroid/view/Surface;

    aput-object v2, p2, v6

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 6015
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v2

    aput-object v2, p2, v5

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v2

    aput-object v2, p2, v4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :cond_15
    new-array p2, v4, [Landroid/view/Surface;

    aput-object v2, p2, v6

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 6018
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v2

    aput-object v2, p2, v5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 6025
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6042
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v1, v2, :cond_18

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_17

    iget p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    .line 6047
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6048
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 6049
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 6051
    :cond_16
    new-instance p2, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;

    invoke-direct {v3, p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;)V

    invoke-direct {p2, p1, v1, v2, v3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    .line 6080
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V

    :cond_17
    iput-boolean v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z

    goto :goto_6

    :cond_18
    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-eqz p1, :cond_19

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_19

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 6086
    invoke-static {p1, p2, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    iput-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :cond_19
    :try_start_7
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 6093
    invoke-static {p1, p2, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    iput-boolean v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_6
    :try_start_8
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6116
    monitor-enter p1
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    .line 6117
    :goto_7
    :try_start_9
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->access$12200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;)Z

    move-result p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez p2, :cond_1a

    :try_start_a
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6120
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    :catch_0
    move-exception p2

    .line 6123
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 6126
    :cond_1a
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6133
    sget-object p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne p1, p2, :cond_1b

    .line 6134
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->resetCaptureResultInfo()V

    :cond_1b
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6136
    monitor-enter p1
    :try_end_c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2

    .line 6137
    :try_start_d
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 6142
    monitor-exit p1

    return-void

    .line 6140
    :cond_1c
    new-instance p2, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p2

    :catchall_1
    move-exception p2

    .line 6142
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p2
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2

    :catchall_2
    move-exception p2

    .line 6126
    :try_start_f
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p2

    :catch_1
    move-exception p1

    .line 6106
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 6107
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_2

    :catchall_3
    move-exception p1

    .line 6025
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw p1
    :try_end_12
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_2

    :catchall_4
    move-exception p1

    .line 5893
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw p1
    :try_end_14
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_2

    :catch_2
    move-exception p1

    .line 6160
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 6161
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catch_3
    move-exception p1

    .line 6150
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 6151
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    .line 5791
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method private createPictureImageReader()V
    .locals 5

    .line 4603
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4609
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->closePictureImageReader()V

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_width:I

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_height:I

    if-eqz v1, :cond_1

    const/16 v2, 0x100

    const/4 v3, 0x2

    .line 4616
    invoke-static {v0, v1, v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 4625
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;

    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    if-nez v1, :cond_0

    .line 4629
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v1

    const/16 v3, 0x20

    iget v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->max_raw_images:I

    invoke-static {v0, v1, v3, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    .line 4635
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void

    .line 4613
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4607
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private createPreviewRequest()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5743
    :try_start_0
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5744
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$9()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5746
    invoke-static {v1, v2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5756
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    return-void
.end method

.method private enforceMinTonemapCurvePoints([F)[F
    .locals 9

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 2427
    :goto_0
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_1

    return-object p1

    .line 2432
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2433
    :goto_1
    array-length v4, p1

    const/4 v5, 0x2

    div-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 2434
    new-instance v4, Landroid/util/Pair;

    mul-int/lit8 v5, v3, 0x2

    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2435
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2437
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_3

    const-string v0, "CameraController2"

    const-string v1, "less than 2 points?!"

    .line 2438
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 2442
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_6

    const/4 p1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2446
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_5

    .line 2447
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    add-int/lit8 v7, v3, 0x1

    .line 2448
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 2449
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v8, v6

    cmpl-float v6, v8, p1

    if-lez v6, :cond_4

    move v4, v3

    move p1, v8

    :cond_4
    move v3, v7

    goto :goto_3

    .line 2457
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    add-int/lit8 v4, v4, 0x1

    .line 2458
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2459
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    .line 2460
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr p1, v3

    mul-float p1, p1, v7

    .line 2463
    new-instance v3, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v3, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 2466
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [F

    .line 2467
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2468
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    mul-int/lit8 v3, v2, 0x2

    .line 2469
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 2470
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-object p1
.end method

.method private fireAutoFlash()Z
    .locals 9

    .line 7721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash_time_ms:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v6, 0xbb8

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash_time_ms:J

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash:Z

    return v0

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7734
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "flash_frontscreen_auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "flash_auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_flash_required:Z

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash:Z

    goto :goto_0

    .line 7739
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fireAutoFlashFrontScreen()Z

    move-result v2

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash:Z

    :goto_0
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash:Z

    if-eqz v2, :cond_3

    iput-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash_time_ms:J

    goto :goto_1

    :cond_3
    iput-wide v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_use_flash_time_ms:J

    :goto_1
    return v2
.end method

.method private fireAutoFlashFrontScreen()Z
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_iso:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_iso:I

    const/16 v1, 0x2ee

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPreviewSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->surface_texture:Landroid/view/Surface;

    return-object v0
.end method

.method private getViewableRect()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 5382
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$18()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5387
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 5388
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    .line 5389
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5390
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 5391
    iput v1, v0, Landroid/graphics/Rect;->top:I

    return-object v0
.end method

.method private hasCaptureSession()Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 1294
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private onError(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    const-string v0, "onError"

    const-string v1, "CameraController2"

    .line 2000
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    .line 2006
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;)V

    if-eqz v0, :cond_1

    const-string p1, "error occurred after camera was opened"

    .line 2013
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->context:Landroid/content/Context;

    .line 2015
    check-cast p1, Landroid/app/Activity;

    .line 2016
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sounds_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->context:Landroid/content/Context;

    const-string v1, "audio"

    .line 5367
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5368
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->media_action_sound:Landroid/media/MediaActionSound;

    .line 5369
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaActionSound;I)V

    :cond_0
    return-void
.end method

.method private postNextSlowBurst()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 1472
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetCaptureResultInfo()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_is_ae_scanning:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_ae:Ljava/lang/Integer;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_flash_required:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_white_balance_rggb:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_iso:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_exposure_time:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_frame_duration:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_aperture:Z

    return-void
.end method

.method private runFakePrecapture()V
    .locals 7

    .line 7622
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7632
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7633
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "flash_on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "flash_frontscreen_on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "flash_auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "flash_frontscreen_auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7638
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7641
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7643
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7644
    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_precapture:I

    add-int/2addr v1, v5

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_precapture:I

    iput-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    :goto_2
    const/4 v5, 0x0

    .line 7656
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    if-eqz v0, :cond_4

    .line 7663
    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onFrontScreenTurnOn()V

    :cond_4
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7671
    monitor-enter v1

    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    .line 7673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_turn_on_torch_id:Landroid/hardware/camera2/CaptureRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7676
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    if-eqz v3, :cond_5

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_turn_on_torch_id:Landroid/hardware/camera2/CaptureRequest;

    .line 7682
    :cond_5
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 7690
    :try_start_3
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput-boolean v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 7696
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 7700
    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 7696
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 7656
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x5ad697b8 -> :sswitch_3
        -0x473ee362 -> :sswitch_2
        -0xa09548 -> :sswitch_1
        0x60e43c8e -> :sswitch_0
    .end sparse-switch
.end method

.method private runPrecapture()V
    .locals 9

    .line 7551
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7561
    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    .line 7574
    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7576
    invoke-static {v5, v3, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7577
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7578
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$6()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7580
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-static {v3, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    const/4 v5, 0x2

    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    .line 7583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 7588
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v8, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    invoke-static {v5, v6, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 7589
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v8, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    invoke-static {v5, v6, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 7592
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$6()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 7593
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    invoke-static {v4, v3, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 7601
    :try_start_1
    invoke-static {v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 7607
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 7611
    invoke-interface {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_0
    return-void

    .line 7607
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setRepeatingRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5673
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 5679
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_4

    .line 5680
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 5686
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewExtensionCaptureCallback:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 5688
    invoke-static {v1, p1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 5692
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v1

    .line 5693
    invoke-static {v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 5694
    invoke-static {v1, p1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 5697
    invoke-static {v1, p1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5705
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5708
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 5683
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 5708
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static setupFocusBracketingDistances(FFI)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 6775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x3dcccccd    # 0.1f

    .line 6779
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 6780
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    div-float v1, v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_4

    if-nez v4, :cond_0

    move v5, p0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, p2, -0x1

    if-ne v4, v5, :cond_1

    move v5, p1

    goto :goto_2

    :cond_1
    cmpl-float v6, v2, v1

    if-lez v6, :cond_2

    sub-int/2addr v5, v4

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    sub-int v5, p2, v5

    int-to-double v5, v5

    .line 6814
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    int-to-double v7, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    double-to-float v5, v7

    cmpl-float v6, v2, v1

    if-lez v6, :cond_3

    sub-float v5, v3, v5

    :cond_3
    sub-float v6, v3, v5

    mul-float v6, v6, v2

    mul-float v5, v5, v1

    add-float/2addr v6, v5

    div-float v5, v3, v6

    .line 6828
    :goto_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private takePendingRaw()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 4667
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    .line 4669
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    .line 4671
    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->pending_raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    if-eqz v0, :cond_0

    .line 4675
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4669
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private takePictureAfterPrecapture()V
    .locals 8

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 6578
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 6585
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v2, :cond_3

    .line 6586
    :cond_1
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureBurst(Z)V

    return-void

    .line 6579
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureBurstBracketing()V

    return-void

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6598
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_14

    .line 6599
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_4

    goto/16 :goto_b

    :cond_4
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6617
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    :goto_1
    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6618
    :try_start_2
    new-instance v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    invoke-direct {v4, v6, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v6, 0x1

    .line 6619
    invoke-static {v4, v3, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6623
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 6624
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6625
    :cond_7
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6626
    iget v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    add-int/2addr v4, v6

    iput v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_9

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6634
    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eq v4, v5, :cond_9

    .line 6638
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$5()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6644
    :cond_9
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->clearPending()V

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 6646
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    if-eqz v4, :cond_a

    .line 6648
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    :cond_a
    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_total:I

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_single_request:Z

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6659
    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 6660
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    move-object v4, v2

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v3, v2

    .line 6680
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-object v4, v2

    :goto_3
    const/4 v6, 0x0

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v3, v2

    .line 6669
    :goto_4
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    goto :goto_3

    .line 6687
    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_c

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    if-eqz v0, :cond_c

    .line 6693
    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onStarted()V

    :cond_c
    if-eqz v6, :cond_12

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6697
    monitor-enter v0

    :try_start_4
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v5, :cond_11

    .line 6698
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_9

    .line 6703
    :cond_d
    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_release_during_photo:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->context:Landroid/content/Context;

    .line 6704
    check-cast v5, Landroid/app/Activity;

    .line 6705
    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$6;

    invoke-direct {v6, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$6;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v5, 0x3e8

    .line 6714
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_4
    move-exception v5

    .line 6717
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    :goto_6
    :try_start_7
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6725
    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v5, v6, :cond_f

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_10

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 6727
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewExtensionCaptureCallback:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    invoke-static {v5, v3, v6, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 6731
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    invoke-static {v5, v3, v6, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 6735
    :cond_10
    :goto_7
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->playSound(I)V
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_5
    move-exception v3

    .line 6754
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    goto :goto_8

    :catch_6
    move-exception v3

    .line 6743
    invoke-static {v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-object v4, v1

    .line 6762
    :goto_8
    monitor-exit v0

    goto :goto_a

    .line 6701
    :cond_11
    :goto_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 6762
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1

    :cond_12
    :goto_a
    if-eqz v4, :cond_13

    .line 6767
    invoke-interface {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_13
    return-void

    .line 6602
    :cond_14
    :goto_b
    :try_start_9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 6687
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_d

    :goto_c
    throw v1

    :goto_d
    goto :goto_c
.end method

.method private takePictureBurst(Z)V
    .locals 10

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 7240
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v0, v1, :cond_0

    const-string v0, "CameraController2"

    .line 7241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "takePictureBurstBracketing called but unexpected burst_type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7243
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7251
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1b

    .line 7252
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    goto/16 :goto_c

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7263
    invoke-static {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    :goto_0
    invoke-static {v4, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7268
    invoke-static {v5, v4, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7272
    invoke-static {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7273
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7274
    :cond_4
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7275
    iget v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    add-int/2addr v5, v2

    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    :cond_5
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 7278
    sget-object v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v5, v8, :cond_6

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_for_noise_reduction:Z

    if-eqz v5, :cond_6

    .line 7282
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7283
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7284
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    if-nez p1, :cond_7

    .line 7288
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->clearPending()V

    :cond_7
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 7291
    invoke-static {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    if-eqz v5, :cond_8

    .line 7295
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7296
    iget v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    add-int/2addr v5, v2

    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    :cond_8
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 7300
    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v5, v7, :cond_a

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    if-eqz p1, :cond_9

    iget v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    add-int/2addr v5, v2

    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_in_progress:Z

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    goto :goto_2

    :cond_a
    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_for_noise_reduction:Z

    if-eqz v5, :cond_d

    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_iso:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_exposure_time:Z

    if-eqz v5, :cond_e

    iget v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_iso:I

    iget-wide v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_exposure_time:J

    .line 7329
    invoke-static {v5, v6, v7}, Lnet/sourceforge/opencamera/HDRProcessor;->sceneIsLowLight(IJ)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->noise_reduction_low_light:Z

    if-eqz v5, :cond_b

    const/16 v5, 0xf

    goto :goto_1

    :cond_b
    const/16 v5, 0x8

    :goto_1
    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    goto :goto_2

    :cond_c
    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_exposure_time:Z

    if-eqz v5, :cond_e

    iget-wide v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_exposure_time:J

    const-wide/32 v7, 0xfe502a

    cmp-long v9, v5, v7

    if-gtz v9, :cond_e

    const/4 v5, 0x3

    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    goto :goto_2

    :cond_d
    iget v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_requested_n_images:I

    iput v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    :goto_2
    const/4 v5, 0x1

    :goto_3
    :try_start_2
    iget-boolean v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    .line 7360
    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    :cond_f
    iget v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_total:I

    iget-boolean v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    if-eqz v7, :cond_10

    goto :goto_4

    :cond_10
    const/4 v6, 0x0

    :goto_4
    iput v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_single_request:Z

    .line 7368
    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE_BURST_IN_PROGRESS:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    invoke-direct {v6, v7, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 7369
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7370
    :try_start_3
    new-instance v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    invoke-direct {v7, v8, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v4, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 7371
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v6

    const/4 v8, 0x1

    move v6, v5

    move-object v5, v4

    move-object v4, v1

    goto :goto_6

    :catch_0
    move-exception v4

    goto :goto_5

    :catch_1
    move-exception v4

    move-object v6, v1

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v6, v1

    const/4 v5, 0x1

    .line 7381
    :goto_5
    :try_start_4
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-object v7, v6

    const/4 v8, 0x0

    move v6, v5

    move-object v5, v1

    .line 7388
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_11

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    if-eqz v0, :cond_11

    if-eqz v6, :cond_11

    .line 7394
    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onStarted()V

    :cond_11
    if-eqz v8, :cond_19

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7398
    monitor-enter v0

    :try_start_5
    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v6, :cond_18

    .line 7399
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_12

    goto :goto_a

    :cond_12
    :try_start_6
    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 7408
    sget-object v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v6, v8, :cond_14

    iget-boolean v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_in_progress:Z

    xor-int/2addr v2, v6

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_requested_last_capture:Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v6, :cond_13

    move-object v5, v7

    :cond_13
    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 7415
    invoke-static {v2, v5, v6, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_in_progress:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 7420
    new-instance v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;

    invoke-direct {v5, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 7455
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_7
    iget v9, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    sub-int/2addr v9, v2

    if-ge v8, v9, :cond_15

    .line 7457
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 7458
    :cond_15
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 7461
    invoke-static {v2, v6, v5, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :cond_16
    :goto_8
    if-nez p1, :cond_17

    .line 7521
    invoke-direct {p0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->playSound(I)V
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catch_3
    move-exception p1

    .line 7530
    :try_start_7
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-object v4, p1

    .line 7538
    :cond_17
    :goto_9
    monitor-exit v0

    goto :goto_b

    .line 7402
    :cond_18
    :goto_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 7538
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_19
    :goto_b
    if-eqz v4, :cond_1a

    .line 7543
    invoke-interface {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_1a
    return-void

    .line 7255
    :cond_1b
    :goto_c
    :try_start_8
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 7388
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d
.end method

.method private takePictureBurstBracketing()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 6836
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v2, v3, :cond_0

    const-string v2, "CameraController2"

    .line 6837
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "takePictureBurstBracketing called but unexpected burst_type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6839
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    .line 6841
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6845
    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_29

    .line 6846
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    goto/16 :goto_19

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    iget-object v7, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 6858
    sget-object v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    const/4 v10, 0x2

    if-eq v8, v9, :cond_3

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, 0x6

    :goto_1
    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6866
    invoke-static {v8, v7, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 6873
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->clearPending()V

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReader:Landroid/media/ImageReader;

    .line 6876
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    iget-boolean v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    if-eqz v8, :cond_4

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    .line 6878
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/ImageReader;)Landroid/view/Surface;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    :cond_4
    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 6880
    sget-object v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v8, v9, :cond_18

    .line 6895
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-boolean v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    if-eqz v8, :cond_5

    .line 6899
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6900
    iget v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    add-int/2addr v8, v5

    iput v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    :cond_5
    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 6904
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$6()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "CameraController2"

    const-string v9, "takePictureBurstBracketing called but null iso_range"

    .line 6906
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6914
    invoke-static {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6915
    invoke-static {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result v9

    goto :goto_2

    :cond_7
    iget-boolean v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_iso:Z

    if-eqz v9, :cond_8

    iget v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_iso:I

    goto :goto_2

    :cond_8
    const/16 v9, 0x320

    .line 6920
    :goto_2
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 6921
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 6922
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$14()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v9, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    iget-boolean v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_frame_duration:Z

    const-wide/32 v11, 0x1fca055

    if-eqz v8, :cond_9

    .line 6925
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$15()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    iget-wide v13, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_frame_duration:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 6927
    :cond_9
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$15()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_4
    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6930
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6931
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v11

    goto :goto_5

    :cond_a
    iget-boolean v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_exposure_time:Z

    if-eqz v8, :cond_b

    iget-wide v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_exposure_time:J

    :cond_b
    :goto_5
    iget v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->expo_bracketing_n_images:I

    .line 6935
    div-int/2addr v8, v10

    iget-wide v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->expo_bracketing_stops:D
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-double v13, v8

    .line 6936
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    :try_start_2
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-boolean v13, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->dummy_capture_hack:Z

    if-eqz v13, :cond_e

    iget-boolean v13, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_expo_fast_burst:Z

    if-eqz v13, :cond_e

    .line 6953
    invoke-static {v7, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 6954
    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;

    if-eqz v13, :cond_c

    .line 6957
    invoke-static {v13, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->access$8202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;Z)Z

    :cond_c
    iget-object v13, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onRawImageAvailableListener:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    if-eqz v13, :cond_d

    .line 6959
    invoke-static {v13, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->access$8302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;Z)Z

    :cond_d
    const/4 v13, 0x1

    goto :goto_6

    :cond_e
    const/4 v13, 0x0

    :goto_6
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v8, :cond_12

    iget-boolean v15, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_exposure_time:Z
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v16, v9

    if-eqz v15, :cond_11

    move v15, v14

    :goto_8
    add-int/lit8 v6, v8, -0x1

    if-ge v15, v6, :cond_f

    mul-double v16, v16, v9

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    long-to-double v5, v11

    .line 6969
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v16

    double-to-long v5, v5

    move-wide/from16 v16, v9

    :try_start_3
    iget-wide v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->min_exposure_time:J

    cmp-long v18, v5, v9

    if-gez v18, :cond_10

    move-wide v5, v9

    .line 6977
    :cond_10
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v9, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6978
    new-instance v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE_BURST_IN_PROGRESS:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    invoke-direct {v5, v6, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v7, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 6979
    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v16

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_12
    move-wide/from16 v16, v9

    .line 6986
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6987
    new-instance v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE_BURST_IN_PROGRESS:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    invoke-direct {v5, v6, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v7, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 6988
    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v8, :cond_17

    iget-boolean v6, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_exposure_time:Z
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_16

    move-wide/from16 v9, v16

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_13

    mul-double v9, v9, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_13
    move v14, v5

    long-to-double v4, v11

    .line 6997
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    double-to-long v4, v4

    :try_start_4
    iget-wide v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->max_exposure_time:J

    cmp-long v18, v4, v9

    if-lez v18, :cond_14

    move-wide v4, v9

    .line 7005
    :cond_14
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v9, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    add-int/lit8 v4, v8, -0x1

    if-ne v14, v4, :cond_15

    .line 7013
    new-instance v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v7, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_b

    .line 7016
    :cond_15
    new-instance v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE_BURST_IN_PROGRESS:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v7, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 7018
    :goto_b
    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    move v14, v5

    :goto_c
    add-int/lit8 v5, v14, 0x1

    const/4 v4, 0x0

    goto :goto_9

    :cond_17
    const/4 v4, 0x1

    iput-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_single_request:Z

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_18
    iget-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    if-eqz v4, :cond_1a

    iget-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    if-eqz v4, :cond_1a

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7032
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 7033
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7034
    :cond_19
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7035
    iget v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_photo:I

    .line 7038
    :cond_1a
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7040
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v4

    iget v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_source_distance:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v10, v4, v8

    if-gez v10, :cond_1b

    goto :goto_d

    :cond_1b
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7044
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v4

    iget v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_target_distance:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v10, v4, v8

    if-gez v10, :cond_1c

    goto :goto_d

    :cond_1c
    const-string v4, "CameraController2"

    const-string v5, "current focus matches neither source nor target"

    .line 7049
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_source_distance:F

    iget v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_target_distance:F

    iget v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_n_images:I

    .line 7052
    invoke-static {v4, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setupFocusBracketingDistances(FFI)Ljava/util/List;

    move-result-object v4

    iget-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_add_infinity:Z

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    .line 7054
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    const/4 v5, 0x0

    .line 7056
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1f

    .line 7057
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$17()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-static {v7, v8, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7059
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v5, v8, :cond_1e

    .line 7060
    new-instance v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    const/4 v6, 0x0

    invoke-direct {v8, v9, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_f

    .line 7067
    :cond_1e
    new-instance v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    sget-object v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE_BURST_IN_PROGRESS:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    const/4 v6, 0x0

    invoke-direct {v8, v9, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V

    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 7069
    :goto_f
    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    iput-boolean v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_in_progress:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1f
    const/4 v4, 0x0

    iput-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_single_request:Z

    const/4 v13, 0x0

    .line 7094
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v13

    iput v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    iput v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_total:I

    iput v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    iget-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    if-eqz v4, :cond_20

    goto :goto_11

    :cond_20
    const/4 v5, 0x0

    :goto_11
    iput v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    iget-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    if-nez v4, :cond_21

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 7104
    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_21
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_13

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 7123
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    const/4 v4, 0x0

    iput-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x0

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 7113
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    const/4 v4, 0x0

    iput-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    const/4 v4, 0x0

    iput-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    goto :goto_12

    .line 7130
    :goto_13
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_22

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    if-eqz v3, :cond_22

    .line 7136
    invoke-interface {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onStarted()V

    :cond_22
    if-eqz v5, :cond_27

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7140
    monitor-enter v3

    :try_start_6
    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v5, :cond_26

    .line 7141
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_23

    goto/16 :goto_17

    :cond_23
    const/4 v5, 0x1

    :try_start_7
    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->modified_from_camera_settings:Z

    iget-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_expo_fast_burst:Z

    if-eqz v5, :cond_24

    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 7149
    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v5, v7, :cond_24

    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v7, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    .line 7152
    invoke-static {v5, v2, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto/16 :goto_15

    :cond_24
    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_capture_requests:Ljava/util/List;

    .line 7160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_start_ms:J

    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 7161
    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v5, v7, :cond_25

    :try_start_8
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7167
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v5, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7168
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$14()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    iget-object v7, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_capture_requests:Ljava/util/List;

    iget v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$14()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v2, v5, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7169
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$15()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    iget-object v7, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_capture_requests:Ljava/util/List;

    iget v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$15()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v2, v5, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->slow_burst_capture_requests:Ljava/util/List;

    iget v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    .line 7171
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7175
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7177
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_14

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 7185
    :try_start_9
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-object v4, v2

    .line 7192
    :goto_14
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->postNextSlowBurst()V

    goto :goto_15

    :cond_25
    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v7, 0x0

    .line 7197
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v7, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewCaptureCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    iget-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    invoke-static {v5, v2, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_15
    const/4 v2, 0x0

    .line 7201
    invoke-direct {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->playSound(I)V
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_16

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 7220
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    goto :goto_16

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 7209
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-object v4, v2

    .line 7228
    :goto_16
    monitor-exit v3

    goto :goto_18

    .line 7144
    :cond_26
    :goto_17
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 7228
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2

    :cond_27
    :goto_18
    if-eqz v4, :cond_28

    .line 7233
    invoke-interface {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_28
    return-void

    .line 6849
    :cond_29
    :goto_19
    :try_start_b
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 7130
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1b

    :goto_1a
    throw v2

    :goto_1b
    goto :goto_1a
.end method

.method private updateUseFakePrecaptureMode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "flash_frontscreen_auto"

    .line 5214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "flash_frontscreen_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 5218
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq p1, v0, :cond_1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5220
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture:Z

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6342
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_focus_performed:Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_a

    .line 6344
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6351
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 6359
    invoke-interface {p1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    .line 6360
    monitor-exit v0

    return-void

    :cond_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6362
    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v4, v5, :cond_2

    .line 6365
    invoke-interface {p1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    .line 6366
    monitor-exit v0

    return-void

    .line 6368
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    .line 6374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J

    .line 6375
    monitor-exit v0

    return-void

    :cond_3
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z

    if-eqz v2, :cond_4

    .line 6379
    invoke-interface {p1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    .line 6380
    monitor-exit v0

    return-void

    :cond_4
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    .line 6412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :try_start_1
    iget-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6416
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "flash_auto"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "flash_frontscreen_auto"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6421
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "flash_on"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    .line 6418
    :cond_6
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fireAutoFlash()Z

    move-result p2

    if-eqz p2, :cond_8

    :goto_1
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6427
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 6430
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, p2, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6432
    :cond_7
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, p2, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6433
    iget p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_focus:I

    add-int/2addr p2, v3

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_focus:I

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_focus_performed:Z

    .line 6435
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0xc8

    .line 6446
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 6449
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6456
    :cond_8
    :goto_2
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, p2, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6457
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 6458
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6459
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p2

    .line 6467
    :try_start_4
    invoke-static {p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    iput-wide v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    iput-wide v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    move-object p1, p2

    .line 6475
    :goto_3
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6476
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_9

    .line 6480
    invoke-interface {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    :cond_9
    return-void

    .line 6348
    :cond_a
    :goto_4
    :try_start_5
    invoke-interface {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    .line 6349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 6476
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public cancelAutoFocus()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6500
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_3

    .line 6501
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z

    if-eqz v1, :cond_1

    .line 6510
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6513
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v1, v2, :cond_2

    .line 6516
    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6519
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6522
    :try_start_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6535
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 6530
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6538
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->autofocus_time_ms:J

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    iput v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6545
    :try_start_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    .line 6553
    :try_start_4
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 6555
    :goto_1
    monitor-exit v0

    return-void

    .line 6504
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 6555
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public captureResultAperture()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_aperture:F

    return v0
.end method

.method public captureResultExposureTime()J
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_exposure_time:J

    return-wide v0
.end method

.method public captureResultFrameDuration()J
    .locals 2

    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_frame_duration:J

    return-wide v0
.end method

.method public captureResultHasAperture()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_aperture:Z

    return v0
.end method

.method public captureResultHasExposureTime()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_exposure_time:Z

    return v0
.end method

.method public captureResultHasFrameDuration()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_frame_duration:Z

    return v0
.end method

.method public captureResultHasIso()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_iso:Z

    return v0
.end method

.method public captureResultHasWhiteBalanceTemperature()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_has_white_balance_rggb:Z

    return v0
.end method

.method public captureResultIsAEScanning()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_is_ae_scanning:Z

    return v0
.end method

.method public captureResultIso()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_iso:I

    return v0
.end method

.method public captureResultWhiteBalanceTemperature()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_white_balance_rggb:Landroid/hardware/camera2/params/RggbChannelVector;

    .line 8001
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertRggbVectorToTemperature(Landroid/hardware/camera2/params/RggbChannelVector;)I

    move-result v0

    return v0
.end method

.method public clearFocusAndMetering()V
    .locals 12

    .line 5508
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    .line 5509
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getViewableRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 5512
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5518
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v1, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    new-array v5, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5520
    invoke-static {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5521
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    new-instance v11, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v9, v5, -0x1

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v11, v1, v3

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5522
    invoke-static {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5525
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5526
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$17()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    new-array v5, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5528
    invoke-static {v2, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5529
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    new-instance v11, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v11, v2, v3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5530
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    move v3, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5533
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5514
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5515
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    .line 5537
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 5545
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public clearPreviewFpsRange()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5012
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Landroid/util/Range;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v3, 0x0

    .line 5014
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/util/Range;)Landroid/util/Range;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5015
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;J)J

    .line 5016
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createPreviewRequest()V

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    .line 5021
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5022
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5031
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sounds_enabled:Z

    return-void
.end method

.method public focusIsContinuous()Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 5623
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5625
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    .line 5628
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public focusIsVideo()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 5637
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5639
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    .line 5642
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public getAPI()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera2 (Android L)"

    return-object v0
.end method

.method public getAntiBanding()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3928
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$22()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3930
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$22()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3931
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertAntiBanding(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5309
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5311
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5336
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$21()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5338
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$21()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBurstTotal()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 4532
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_total:I

    return v0
.end method

.method public getBurstType()Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    return-object v0
.end method

.method public getCameraExtension()I
    .locals 1

    .line 4435
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->isCameraExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCameraFeatures()Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2656
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2710
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2712
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2713
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2722
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpl-float v7, v2, v4

    if-lez v7, :cond_2

    cmpl-float v7, v3, v4

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 2724
    :goto_1
    iput-boolean v7, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    .line 2729
    iget-boolean v7, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 2731
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2732
    invoke-static {v7, v3, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->computeZoomRatios(Ljava/util/List;FF)I

    move-result v2

    iput v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_value_1x:I

    .line 2734
    iput-object v7, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->zoom_ratios:Ljava/util/List;

    .line 2735
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->zoom_ratios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_zoom:I

    .line 2736
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->zoom_ratios:Ljava/util/List;

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    goto :goto_2

    :cond_3
    iput-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    :goto_2
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2745
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$12()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2746
    iput-boolean v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_simple:Z

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_full:Z

    .line 2749
    array-length v3, v2

    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x2

    if-ge v7, v3, :cond_6

    aget v10, v2, v7

    if-ne v10, v6, :cond_4

    .line 2757
    iput-boolean v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    iput-boolean v6, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_simple:Z

    goto :goto_4

    :cond_4
    if-ne v10, v9, :cond_5

    .line 2763
    iput-boolean v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    iput-boolean v6, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_full:Z

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2769
    :cond_6
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2770
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$16()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_7

    .line 2774
    iput-boolean v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_simple:Z

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_full:Z

    .line 2779
    :cond_7
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2781
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2783
    array-length v3, v2

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_9

    aget v10, v2, v7

    if-ne v10, v6, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2794
    :cond_9
    iput-boolean v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_simple:Z

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_full:Z

    :cond_a
    :goto_6
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2800
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$4()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2805
    array-length v3, v2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    const/16 v13, 0x17

    if-ge v7, v3, :cond_e

    aget v14, v2, v7

    if-ne v14, v9, :cond_b

    const/4 v12, 0x1

    goto :goto_8

    :cond_b
    const/4 v15, 0x3

    if-ne v14, v15, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/16 v15, 0x9

    if-ne v14, v15, :cond_d

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v13, :cond_d

    const/4 v11, 0x1

    :cond_d
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2842
    invoke-static {v2, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v2

    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_burst:Z

    :try_start_0
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2854
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$5()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v3, 0x100

    .line 2865
    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;

    move-result-object v7

    .line 2866
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v13, :cond_11

    .line 2868
    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 2870
    array-length v14, v13

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v14, :cond_11

    aget-object v9, v13, v15

    .line 2876
    array-length v4, v7

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_10

    aget-object v6, v7, v3

    .line 2877
    invoke-static {v6, v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto :goto_a

    .line 2885
    :cond_10
    new-instance v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-static {v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v4

    invoke-static {v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v6

    invoke-direct {v3, v4, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    .line 2886
    iput-boolean v5, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supports_burst:Z

    .line 2887
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    goto :goto_9

    :cond_11
    const-string v3, "CameraController2"

    if-eqz v7, :cond_45

    .line 2898
    array-length v4, v7

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_12

    aget-object v9, v7, v6

    .line 2901
    iget-object v13, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    new-instance v14, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-static {v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v15

    invoke-static {v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v9

    invoke-direct {v14, v15, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 2906
    :cond_12
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;

    invoke-direct {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v8, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    if-eqz v10, :cond_18

    const/16 v4, 0x20

    .line 2912
    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;

    move-result-object v4

    if-nez v4, :cond_13

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    goto :goto_e

    .line 2919
    :cond_13
    array-length v6, v4

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v6, :cond_16

    aget-object v9, v4, v7

    iget-object v10, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    if-eqz v10, :cond_14

    .line 2920
    invoke-static {v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v10

    invoke-static {v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v13

    mul-int v10, v10, v13

    iget-object v13, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    invoke-static {v13}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v13

    iget-object v14, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    invoke-static {v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v14

    mul-int v13, v13, v14

    if-le v10, v13, :cond_15

    :cond_14
    iput-object v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_16
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    if-nez v4, :cond_17

    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    goto :goto_e

    :cond_17
    const/4 v4, 0x1

    .line 2932
    iput-boolean v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_raw:Z

    goto :goto_e

    :cond_18
    iput-boolean v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    .line 2956
    :goto_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ae_fps_ranges:Ljava/util/List;

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2957
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$7()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Range;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v6, :cond_19

    aget-object v9, v4, v7

    iget-object v10, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ae_fps_ranges:Ljava/util/List;

    .line 2958
    invoke-static {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    filled-new-array {v13, v9}, [I

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_19
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ae_fps_ranges:Ljava/util/List;

    .line 2960
    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;

    invoke-direct {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2968
    const-class v4, Landroid/media/MediaRecorder;

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 2969
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    iget-object v6, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ae_fps_ranges:Ljava/util/List;

    .line 2971
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v7, 0x270f

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 2972
    aget v9, v9, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_10

    :cond_1a
    if-eqz v4, :cond_44

    .line 2980
    array-length v6, v4

    const/4 v9, 0x0

    :goto_11
    const/16 v10, 0x870

    const/16 v13, 0x1000

    if-ge v9, v6, :cond_1d

    aget-object v14, v4, v9

    .line 2981
    invoke-static {v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v15

    if-gt v15, v13, :cond_1c

    invoke-static {v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v13

    if-le v13, v10, :cond_1b

    goto :goto_12

    .line 2983
    :cond_1b
    const-class v10, Landroid/media/MediaRecorder;

    move/from16 v16, v9

    invoke-static {v2, v10, v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v8

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    long-to-double v8, v8

    .line 2984
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v17, v17, v8

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    mul-double v8, v8, v17

    double-to-int v8, v8

    .line 2985
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v7, v8}, [I

    move-result-object v8

    .line 2986
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2987
    new-instance v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-static {v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v10

    invoke-static {v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v13

    invoke-direct {v8, v10, v13, v9, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(IILjava/util/List;Z)V

    .line 2988
    iget-object v9, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1c
    :goto_12
    move/from16 v16, v9

    :goto_13
    add-int/lit8 v9, v16, 0x1

    const/4 v8, 0x0

    goto :goto_11

    .line 2994
    :cond_1d
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;

    invoke-direct {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v11, :cond_23

    .line 2997
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hs_fps_ranges:Ljava/util/List;

    .line 2998
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes_high_speed:Ljava/util/List;

    .line 3000
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Range;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v6, :cond_1e

    aget-object v8, v4, v7

    iget-object v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hs_fps_ranges:Ljava/util/List;

    .line 3001
    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    filled-new-array {v11, v8}, [I

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1e
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hs_fps_ranges:Ljava/util/List;

    .line 3003
    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;

    invoke-direct {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3012
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;

    move-result-object v4

    .line 3013
    array-length v6, v4

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v6, :cond_22

    aget-object v8, v4, v7

    .line 3014
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3015
    invoke-static {v2, v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v11

    array-length v14, v11

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v14, :cond_1f

    aget-object v17, v11, v15

    .line 3016
    invoke-static/range {v17 .. v17}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v17 .. v17}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    filled-new-array {v5, v10}, [I

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x870

    goto :goto_16

    .line 3018
    :cond_1f
    invoke-static {v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v5

    if-gt v5, v13, :cond_21

    invoke-static {v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v5

    const/16 v10, 0x870

    if-le v5, v10, :cond_20

    goto :goto_17

    .line 3020
    :cond_20
    new-instance v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-static {v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v11

    invoke-static {v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v8

    const/4 v14, 0x1

    invoke-direct {v5, v11, v8, v9, v14}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(IILjava/util/List;Z)V

    .line 3024
    iget-object v8, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes_high_speed:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_21
    const/16 v10, 0x870

    :goto_17
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_15

    .line 3026
    :cond_22
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes_high_speed:Ljava/util/List;

    new-instance v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;

    invoke-direct {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3029
    :cond_23
    const-class v4, Landroid/graphics/SurfaceTexture;

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    .line 3030
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->preview_sizes:Ljava/util/List;

    .line 3031
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->context:Landroid/content/Context;

    .line 3032
    check-cast v5, Landroid/app/Activity;

    .line 3034
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 3035
    invoke-static {v5, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 3039
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_24

    .line 3041
    iget v5, v4, Landroid/graphics/Point;->y:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    :cond_24
    if-eqz v2, :cond_43

    .line 3052
    array-length v3, v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_27

    aget-object v6, v2, v5

    .line 3055
    invoke-static {v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    if-gt v7, v8, :cond_26

    invoke-static {v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_25

    goto :goto_19

    .line 3060
    :cond_25
    iget-object v7, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->preview_sizes:Ljava/util/List;

    new-instance v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-static {v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v9

    invoke-static {v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v6

    invoke-direct {v8, v9, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_31

    :try_start_1
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    .line 3067
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraExtensionCharacteristics;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1a

    :catch_0
    nop

    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_31

    .line 3075
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions:Ljava/util/List;

    .line 3076
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions_zoom:Ljava/util/List;

    .line 3077
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :try_start_2
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v5, 0x100

    .line 3084
    :try_start_3
    invoke-static {v4, v3, v5}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraExtensionCharacteristics;II)Ljava/util/List;

    move-result-object v4

    .line 3088
    iget-object v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_29
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 3089
    new-instance v9, Landroid/util/Size;

    iget v10, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v11, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 3094
    iget-object v7, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    if-nez v7, :cond_2a

    .line 3095
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    .line 3097
    :cond_2a
    iget-object v7, v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_1c

    :cond_2b
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    .line 3106
    const-class v6, Landroid/graphics/SurfaceTexture;

    invoke-static {v4, v3, v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraExtensionCharacteristics;ILjava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 3110
    iget-object v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->preview_sizes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_2c
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 3111
    new-instance v10, Landroid/util/Size;

    iget v11, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v13, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-direct {v10, v11, v13}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 3116
    iget-object v8, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    if-nez v8, :cond_2d

    .line 3117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    .line 3119
    :cond_2d
    iget-object v8, v9, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_1d

    :cond_2e
    if-eqz v7, :cond_28

    if-eqz v8, :cond_28

    .line 3131
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v4, v6, :cond_28

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    .line 3134
    invoke-static {v4, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Ljava/util/Set;

    move-result-object v4

    .line 3135
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2f
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v6

    .line 3138
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$12()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v7

    if-ne v6, v7, :cond_2f

    .line 3139
    iget-object v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions_zoom:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extension_characteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    .line 3142
    invoke-static {v4, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Ljava/util/Set;

    move-result-object v4

    .line 3143
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1f

    :catch_1
    const/16 v5, 0x100

    .line 3159
    :catch_2
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3160
    iget-object v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions_zoom:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1b

    .line 3166
    :cond_31
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_extensions_zoom:Ljava/util/List;

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supported_extensions_zoom:Ljava/util/List;

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3168
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$5()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "flash_off"

    if-eqz v2, :cond_33

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3169
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$8()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 3170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3171
    array-length v5, v2

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_32

    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3172
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 3174
    :cond_32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    .line 3178
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3179
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_auto"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3180
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_on"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3181
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_torch"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture:Z

    if-nez v2, :cond_34

    const/4 v2, 0x4

    .line 3184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3185
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_red_eye"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 3192
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v2

    sget-object v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v2, v4, :cond_34

    .line 3193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    .line 3194
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3195
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_frontscreen_auto"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_frontscreen_on"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3197
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    const-string v3, "flash_frontscreen_torch"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_21
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3200
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$9()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_35

    .line 3202
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->minimum_focus_distance:F

    goto :goto_22

    :cond_35
    const/4 v2, 0x0

    .line 3207
    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->minimum_focus_distance:F

    :goto_22
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3210
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 3211
    iget v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->minimum_focus_distance:F

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertFocusModesToValues([IF)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    .line 3212
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    if-eqz v2, :cond_36

    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    const-string v3, "focus_mode_manual2"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    .line 3213
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_focus_bracketing:Z

    .line 3215
    :cond_36
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    if-eqz v2, :cond_38

    .line 3217
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    const-string v3, "focus_mode_continuous_picture"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iput-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->initial_focus_mode:Ljava/lang/String;

    goto :goto_23

    .line 3222
    :cond_37
    iget-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->initial_focus_mode:Ljava/lang/String;

    goto :goto_23

    :cond_38
    const/4 v2, 0x0

    iput-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->initial_focus_mode:Ljava/lang/String;

    :goto_23
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3231
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_num_focus_areas:I

    const/4 v2, 0x1

    .line 3233
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_exposure_lock_supported:Z

    .line 3235
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_white_balance_lock_supported:Z

    const/4 v3, 0x0

    .line 3237
    iput-boolean v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_optical_stabilization_supported:Z

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3238
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$9()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_3a

    .line 3240
    array-length v4, v3

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_3a

    aget v6, v3, v5

    if-ne v6, v2, :cond_39

    .line 3242
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_optical_stabilization_supported:Z

    goto :goto_25

    :cond_39
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    goto :goto_24

    .line 3249
    :cond_3a
    :goto_25
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_optical_stabilization_supported:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_optical_stabilization:Z

    const/4 v2, 0x0

    .line 3251
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_video_stabilization_supported:Z

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3252
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$10()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_3c

    .line 3254
    array-length v3, v2

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_3c

    aget v5, v2, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3b

    .line 3256
    iput-boolean v6, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_video_stabilization_supported:Z

    goto :goto_27

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_3c
    :goto_27
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v3, 0x0

    .line 3264
    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v2

    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_photo_video_recording_supported:Z

    .line 3265
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_photo_video_recording_supported:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_photo_video_recording:Z

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3267
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_3e

    .line 3269
    array-length v3, v2

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_3e

    aget v5, v2, v4

    if-nez v5, :cond_3d

    if-eqz v12, :cond_3d

    .line 3274
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->allowManualWB()Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    .line 3275
    iput-boolean v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_white_balance_temperature:Z

    const/16 v5, 0x3e8

    .line 3276
    iput v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_temperature:I

    const/16 v5, 0x3a98

    .line 3277
    iput v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_temperature:I

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 3281
    :cond_3e
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_white_balance_temperature:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_white_balance_temperature:Z

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v3, 0x0

    .line 3285
    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3287
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$6()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_3f

    const/4 v4, 0x1

    .line 3289
    iput-boolean v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_iso_range:Z

    .line 3290
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_iso:I

    .line 3291
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_iso:I

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3293
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$13()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_3f

    const/4 v4, 0x1

    .line 3295
    iput-boolean v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_exposure_time:Z

    .line 3296
    iput-boolean v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_expo_bracketing:Z

    const/4 v4, 0x5

    .line 3297
    iput v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_expo_bracketing_n_images:I

    .line 3298
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure_time:J

    .line 3299
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure_time:J

    iget-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_samsung_galaxy_s:Z

    if-eqz v2, :cond_3f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_3f

    .line 3307
    iget-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure_time:J

    const-wide/32 v6, 0xbebc200

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure_time:J

    .line 3313
    :cond_3f
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_exposure_time:Z

    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_exposure_time:Z

    .line 3314
    iget-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure_time:J

    iput-wide v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->min_exposure_time:J

    .line 3315
    iget-wide v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure_time:J

    iput-wide v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->max_exposure_time:J

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3317
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$14()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v2

    .line 3318
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure:I

    .line 3319
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure:I

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3320
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$15()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/util/Rational;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Rational;)F

    move-result v2

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->exposure_step:F

    const/4 v2, 0x1

    .line 3322
    iput-boolean v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->can_disable_shutter_sound:Z

    if-eqz v12, :cond_41

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3325
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_41

    .line 3329
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->tonemap_max_curve_points:I

    .line 3334
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_40

    .line 3335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtvideo_values:[F

    array-length v5, v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    if-lt v4, v5, :cond_40

    .line 3336
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog_values:[F

    array-length v5, v5

    div-int/2addr v5, v6

    if-lt v4, v5, :cond_40

    .line 3337
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jtlog2_values:[F

    array-length v4, v4

    div-int/2addr v4, v6

    if-lt v2, v4, :cond_40

    const/4 v5, 0x1

    goto :goto_29

    :cond_40
    const/4 v5, 0x0

    :goto_29
    iput-boolean v5, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_tonemap_curve:Z

    :cond_41
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3347
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    if-eqz v2, :cond_42

    .line 3352
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_42

    .line 3353
    iput-object v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->apertures:[F

    :cond_42
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3356
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->computeViewAngles(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;

    move-result-object v2

    .line 3357
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/SizeF;)F

    move-result v3

    iput v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_x:F

    .line 3358
    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/SizeF;)F

    move-result v2

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_y:F

    return-object v0

    :cond_43
    const-string v0, "no preview sizes returned by getOutputSizes"

    .line 3048
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v0

    :cond_44
    const-string v0, "no video sizes returned by getOutputSizes"

    .line 2976
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v0

    :cond_45
    const-string v0, "no picture sizes returned by getOutputSizes"

    .line 2894
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v0

    :catch_3
    move-exception v0

    goto :goto_2a

    :catch_4
    move-exception v0

    .line 2861
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2862
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method

.method public getCameraOrientation()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics_sensor_orientation:I

    return v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3661
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$23()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3663
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$23()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3664
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertColorEffect(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .line 7897
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getEdgeMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4027
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4029
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4030
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertEdgeMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4955
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$13()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4957
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$13()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExposureTime()J
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4243
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics_facing:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object v0
.end method

.method public getFlashValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5276
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$5()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5279
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5556
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5558
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5562
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$8()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-nez v0, :cond_2

    return-object v1

    .line 5565
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getViewableRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 5566
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_3

    return-object v1

    .line 5570
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5571
    array-length v3, v0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v4, v0, v5

    .line 5572
    invoke-direct {p0, v2, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertMeteringRectangleToArea(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getFocusBracketingSourceDistance()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_source_distance:F

    return v0
.end method

.method public getFocusBracketingTargetDistance()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_target_distance:F

    return v0
.end method

.method public getFocusDistance()F
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5142
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v0

    return v0
.end method

.method public getFocusValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5134
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5137
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertFocusModeToValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISO()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4238
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result v0

    return v0
.end method

.method public getISOKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getJpegQuality()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4835
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)B

    move-result v0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5579
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$17()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5581
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5585
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-nez v0, :cond_2

    return-object v1

    .line 5588
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getViewableRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 5589
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_3

    aget-object v3, v0, v5

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/params/MeteringRectangle;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_3

    return-object v1

    .line 5593
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5594
    array-length v3, v0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v4, v0, v5

    .line 5595
    invoke-direct {p0, v2, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertMeteringRectangleToArea(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getNBurstTaken()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_taken:I

    return v0
.end method

.method public getNoiseReductionMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4142
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4144
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4145
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertNoiseReductionMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpticalStabilization()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4769
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4772
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getParametersString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 3

    .line 4305
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_width:I

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_height:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object v0
.end method

.method public getPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 3

    .line 4732
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_width:I

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_height:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3537
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$19()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3539
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$19()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3540
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertSceneMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 5038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hs_fps_ranges:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->ae_fps_ranges:Ljava/util/List;

    .line 5041
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    .line 5042
    aget v3, v2, v3

    mul-int/lit16 v3, v3, 0x3e8

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    filled-new-array {v3, v2}, [I

    move-result-object v2

    .line 5043
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4820
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v0

    return-object v0
.end method

.method public getUseCamera2FakeFlash()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture:Z

    return v0
.end method

.method public getVideoStabilization()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4777
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    return v0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3801
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$20()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3803
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$20()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3804
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertWhiteBalance(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceTemperature()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3838
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result v0

    return v0
.end method

.method public getZoom()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->current_zoom_value:I

    return v0
.end method

.method public initVideoRecorderPostPrepare(Landroid/media/MediaRecorder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 7932
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    .line 7936
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    .line 7940
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$9()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    .line 7941
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7942
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createCaptureSession(Landroid/media/MediaRecorder;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7950
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 7951
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :cond_0
    const-string p1, "CameraController2"

    const-string p2, "no camera"

    .line 7929
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7930
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1
.end method

.method public initVideoRecorderPrePrepare(Landroid/media/MediaRecorder;)V
    .locals 0

    .line 7920
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    const/4 p1, 0x2

    .line 7921
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->playSound(I)V

    return-void
.end method

.method public isBurstOrExpo()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 4513
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCameraExtension()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 4430
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCapturingBurst()Z
    .locals 4

    .line 4518
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->isBurstOrExpo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 4520
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_in_progress:Z

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst:I

    if-gtz v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->n_burst_raw:I

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 4522
    :cond_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getBurstTotal()I

    move-result v0

    if-le v0, v3, :cond_4

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getNBurstTaken()I

    move-result v0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getBurstTotal()I

    move-result v2

    if-ge v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isContinuousBurstInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_in_progress:Z

    return v0
.end method

.method public isManualISO()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4205
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    return v0
.end method

.method public needsFlash()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_flash_required:Z

    return v0
.end method

.method public needsFrontScreenFlash()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7989
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash_frontscreen_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7990
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash_frontscreen_auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fireAutoFlashFrontScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onError()V
    .locals 2

    const-string v0, "CameraController2"

    const-string v1, "onError"

    .line 1993
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 1995
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onError(Landroid/hardware/camera2/CameraDevice;)V

    :cond_0
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 7960
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->playSound(I)V

    .line 7961
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createPreviewRequest()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7962
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createCaptureSession(Landroid/media/MediaRecorder;Z)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 2380
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->closeCaptureSession()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewIsVideoMode:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 2384
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    .line 2387
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->closePictureImageReader()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->thread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 2395
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/os/HandlerThread;)Z

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->thread:Landroid/os/HandlerThread;

    .line 2397
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->thread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->executor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2403
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeLocationInfo()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v1, 0x0

    .line 5356
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$4202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public resetCoverPreview()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->has_received_frame:Z

    return-void
.end method

.method public resetZoom()V
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_value_1x:I

    .line 4950
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setZoom(I)V

    return-void
.end method

.method public sceneModeAffectsFunctionality()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAntiBanding(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3870
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$6()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3874
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3875
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    .line 3876
    invoke-direct {p0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertAntiBanding(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3878
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "auto"

    .line 3881
    invoke-virtual {p0, v1, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3885
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3887
    iget-object p1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "60hz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "50hz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x3

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x2

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x1

    :goto_2
    :pswitch_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3906
    invoke-static {p1, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3907
    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3908
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3910
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3918
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_7
    :goto_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_3
        0x18d8ed -> :sswitch_2
        0x194d4c -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAperture(F)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4282
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v1, 0x1

    .line 4287
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4288
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4289
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4290
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4299
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5290
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5292
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5293
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5295
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5303
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5317
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5319
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5320
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5322
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5330
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    return-void
.end method

.method public setBurstForNoiseReduction(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_for_noise_reduction:Z

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->noise_reduction_low_light:Z

    return-void
.end method

.method public setBurstNImages(I)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_requested_n_images:I

    return-void
.end method

.method public setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4459
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->updateUseFakePrecaptureMode(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    .line 4460
    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    return-void
.end method

.method public setCameraExtension(ZI)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eqz p1, :cond_1

    .line 4390
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    if-eqz p1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ne v0, v1, :cond_3

    return-void

    .line 4396
    :cond_3
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 4403
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4415
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createPreviewRequest()V

    :cond_5
    if-eqz p1, :cond_6

    .line 4419
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    goto :goto_3

    .line 4423
    :cond_6
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    :goto_3
    return-void

    .line 4400
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setCaptureFollowAutofocusHint(Z)V
    .locals 1

    .line 6490
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6491
    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_follows_autofocus_hint:Z

    .line 6493
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setColorEffect(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 13

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3593
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3597
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3598
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    .line 3599
    invoke-direct {p0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertColorEffect(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3601
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "none"

    .line 3604
    invoke-virtual {p0, v1, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 3607
    iget-object v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "posterize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v12, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "solarize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "negative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "sepia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v12, 0x4

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v12, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "mono"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v12, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "aqua"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v12, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "blackboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v12, 0x0

    :goto_1
    packed-switch v12, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v3, 0x5

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x3

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v3, 0x6

    goto :goto_2

    :pswitch_4
    const/4 v3, 0x4

    goto :goto_2

    :pswitch_5
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_6
    const/16 v3, 0x8

    goto :goto_2

    :pswitch_7
    const/4 v3, 0x7

    :goto_2
    :pswitch_8
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3641
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$5802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3642
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$5900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3644
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 3652
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_c
    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x617979b9 -> :sswitch_8
        0x2dcebc -> :sswitch_7
        0x333ae3 -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x68429f6 -> :sswitch_4
        0xf91545d -> :sswitch_3
        0x36e70c35 -> :sswitch_2
        0x57d28ff3 -> :sswitch_1
        0x77b67ce7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContinuousFocusMoveCallback(Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6563
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    :cond_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_focus_move_callback:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 7890
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setDummyCaptureHack(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->dummy_capture_hack:Z

    return-void
.end method

.method public setEdgeMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3963
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$8()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3967
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "default"

    .line 3968
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3969
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget v6, v0, v5

    .line 3970
    invoke-direct {p0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertEdgeMode(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3972
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3975
    :cond_2
    invoke-virtual {p0, v1, p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3978
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3982
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_6

    .line 3983
    iget-object p1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "high_quality"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "fast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/4 v1, 0x2

    :goto_2
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4003
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result p1

    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result p1

    if-eq p1, v1, :cond_8

    :cond_7
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4004
    invoke-static {p1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4005
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4006
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4008
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 4016
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_8
    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_2
        0x2fd85c -> :sswitch_1
        0x6ab28362 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExpoBracketingNImages(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 4472
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/4 p1, 0x5

    :cond_0
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->expo_bracketing_n_images:I

    return-void

    .line 4475
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "n_images should be an odd number greater than 1"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpoBracketingStops(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->expo_bracketing_stops:D

    return-void

    .line 4492
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setExposureCompensation(I)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v1, 0x1

    .line 4963
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4964
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4965
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4967
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4975
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExposureTime(J)Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4254
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v0

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-nez v3, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4260
    invoke-static {v0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;J)J

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4261
    invoke-static {p1, p2, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4262
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4271
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setFaceDetectionListener(Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6302
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    :cond_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->face_detection_listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    const/4 p1, -0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->last_faces_detected:I

    return-void
.end method

.method public setFlashValue(Ljava/lang/String;)V
    .locals 3

    const-string v0, "flash_off"

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5233
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5240
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->updateUseFakePrecaptureMode(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5242
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flash_torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5244
    invoke-static {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5245
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5246
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5249
    invoke-static {v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5250
    invoke-static {p1, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off:Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->push_repeating_request_when_torch_off_id:Landroid/hardware/camera2/CaptureRequest;

    .line 5254
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5257
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5258
    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5259
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5269
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFocusAndMeteringArea(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;)Z"
        }
    .end annotation

    .line 5460
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    .line 5461
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getViewableRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5466
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5468
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    iget-object v7, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5471
    invoke-static {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertAreaToMeteringRectangle(Landroid/graphics/Rect;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5473
    invoke-static {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5476
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5477
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$17()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5479
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v2, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5482
    invoke-static {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertAreaToMeteringRectangle(Landroid/graphics/Rect;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v6

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5484
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5487
    invoke-static {p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    :goto_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    .line 5490
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 5498
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_5
    :goto_4
    return v1
.end method

.method public setFocusBracketingAddInfinity(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_add_infinity:Z

    return-void
.end method

.method public setFocusBracketingNImages(I)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_n_images:I

    return-void
.end method

.method public setFocusBracketingSourceDistance(F)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_source_distance:F

    return-void
.end method

.method public setFocusBracketingTargetDistance(F)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_target_distance:F

    return-void
.end method

.method public setFocusDistance(F)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5149
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5154
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5155
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5156
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5158
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5166
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setFocusValue(Ljava/lang/String;)V
    .locals 8

    .line 5055
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    .line 5057
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "focus_mode_macro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "focus_mode_infinity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "focus_mode_continuous_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "focus_mode_manual2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "focus_mode_continuous_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "focus_mode_edof"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "focus_mode_auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "focus_mode_locked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v0, 0x0

    .line 5064
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5068
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x1

    :goto_2
    :pswitch_6
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5087
    invoke-static {p1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5088
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5089
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5090
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5093
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5101
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c4267c1 -> :sswitch_7
        -0x7118f3dc -> :sswitch_6
        -0x711762d5 -> :sswitch_5
        -0x2a6f6a7d -> :sswitch_4
        0x11975297 -> :sswitch_3
        0x17feaa40 -> :sswitch_2
        0x2335561d -> :sswitch_1
        0x4e9a3bf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setISO(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 0

    const/4 p1, 0x0

    .line 4152
    invoke-virtual {p0, p1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setManualISO(ZI)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setISO(I)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4214
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4220
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4221
    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4222
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4231
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setJpegQuality(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    int-to-byte p1, p1

    .line 4845
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;B)B

    return-void

    .line 4843
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setLocationInfo(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5351
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$4202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public setManualISO(ZI)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4169
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$6()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v2, 0x1

    .line 4178
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    .line 4179
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4180
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4181
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4184
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4185
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4187
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->updateUseFakePrecaptureMode(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4189
    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4190
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4199
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setNoiseReductionMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4065
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4069
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "default"

    .line 4070
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4071
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget v6, v0, v5

    .line 4072
    invoke-direct {p0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertNoiseReductionMode(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4074
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4077
    :cond_2
    invoke-virtual {p0, v1, p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4080
    iget-object v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4084
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 4085
    iget-object p1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "high_quality"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "minimal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "fast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_7
    const-string p1, "CameraController2"

    const-string v2, "noise reduction minimal, but pre-Android M!"

    .line 4102
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :pswitch_2
    const/4 v4, 0x1

    goto :goto_3

    :pswitch_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4118
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result p1

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result p1

    if-eq p1, v1, :cond_a

    :cond_9
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4119
    invoke-static {p1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4120
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4121
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 4123
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 4131
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_a
    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_3
        0x2fd85c -> :sswitch_2
        0x3f738da1 -> :sswitch_1
        0x6ab28362 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPictureSize(II)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    .line 4317
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v0

    if-nez v0, :cond_1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_width:I

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_height:I

    return-void

    .line 4321
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 5655
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setPreviewFpsRange(II)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4986
    new-instance v1, Landroid/util/Range;

    div-int/lit16 v2, p1, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/util/Range;)Landroid/util/Range;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    int-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 4988
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double v2, v2, v0

    double-to-long v0, v2

    invoke-static {p2, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;J)J

    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x0

    .line 4992
    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4993
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5002
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_width:I

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_height:I

    return-void
.end method

.method public setPreviewTexture(Landroid/view/TextureView;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->texture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 5669
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->texture:Landroid/graphics/SurfaceTexture;

    return-void

    .line 5667
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setRaw(ZI)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->max_raw_images:I

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_size:Landroid/util/Size;

    if-nez v0, :cond_2

    return-void

    .line 4346
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_raw:Z

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->max_raw_images:I

    return-void

    .line 4350
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setRecordingHint(Z)V
    .locals 0

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 5343
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3441
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const-string v4, "auto"

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 3446
    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget v9, v0, v7

    if-nez v9, :cond_0

    const/4 v8, 0x1

    .line 3449
    :cond_0
    invoke-direct {v1, v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertSceneMode(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 3451
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object/from16 v0, p1

    goto :goto_3

    .line 3456
    :cond_4
    :goto_2
    invoke-interface {v2, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 3458
    :goto_3
    invoke-virtual {v1, v2, v0, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 3461
    iget-object v0, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_4
    const/4 v3, -0x1

    goto/16 :goto_5

    :sswitch_0
    const-string v3, "candlelight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/16 v3, 0xf

    goto/16 :goto_5

    :sswitch_1
    const-string v3, "night-portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0xe

    goto/16 :goto_5

    :sswitch_2
    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const/16 v3, 0xd

    goto/16 :goto_5

    :sswitch_3
    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/16 v3, 0xc

    goto/16 :goto_5

    :sswitch_4
    const-string v3, "party"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 v3, 0xb

    goto/16 :goto_5

    :sswitch_5
    const-string v3, "night"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    const/16 v3, 0xa

    goto/16 :goto_5

    :sswitch_6
    const-string v3, "beach"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    const/16 v3, 0x9

    goto/16 :goto_5

    :sswitch_7
    const-string v3, "snow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    const/16 v3, 0x8

    goto :goto_5

    :sswitch_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v3, 0x7

    goto :goto_5

    :sswitch_9
    const-string v3, "fireworks"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    const/4 v3, 0x6

    goto :goto_5

    :sswitch_a
    const-string v3, "steadyphoto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_4

    :cond_f
    const/4 v3, 0x5

    goto :goto_5

    :sswitch_b
    const-string v3, "barcode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x4

    goto :goto_5

    :sswitch_c
    const-string v3, "sunset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_4

    :cond_11
    const/4 v3, 0x3

    goto :goto_5

    :sswitch_d
    const-string v3, "sports"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_4

    :cond_12
    const/4 v3, 0x2

    goto :goto_5

    :sswitch_e
    const-string v4, "theatre"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_4

    :sswitch_f
    const-string v3, "action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_4

    :cond_13
    const/4 v3, 0x0

    :cond_14
    :goto_5
    packed-switch v3, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/16 v5, 0xf

    goto :goto_6

    :pswitch_1
    const/4 v5, 0x6

    goto :goto_6

    :pswitch_2
    const/4 v5, 0x4

    goto :goto_6

    :pswitch_3
    const/4 v5, 0x3

    goto :goto_6

    :pswitch_4
    const/16 v5, 0xe

    goto :goto_6

    :pswitch_5
    const/4 v5, 0x5

    goto :goto_6

    :pswitch_6
    const/16 v5, 0x8

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x9

    goto :goto_6

    :pswitch_8
    const/16 v5, 0xc

    goto :goto_6

    :pswitch_9
    const/16 v5, 0xb

    goto :goto_6

    :pswitch_a
    const/16 v5, 0x10

    goto :goto_6

    :pswitch_b
    const/16 v5, 0xa

    goto :goto_6

    :pswitch_c
    const/16 v5, 0xd

    goto :goto_6

    :pswitch_d
    const/4 v5, 0x7

    goto :goto_6

    :pswitch_e
    const/4 v5, 0x2

    :goto_6
    :pswitch_f
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3517
    invoke-static {v0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$5602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3518
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$5700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3520
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3528
    invoke-static {v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_15
    :goto_7
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_f
        -0x50780669 -> :sswitch_e
        -0x35643881 -> :sswitch_d
        -0x351e356a -> :sswitch_c
        -0x13e21780 -> :sswitch_b
        -0x11e5dea0 -> :sswitch_a
        -0xfbf68f4 -> :sswitch_9
        0x2dddaf -> :sswitch_8
        0x35f183 -> :sswitch_7
        0x5946163 -> :sswitch_6
        0x63f6418 -> :sswitch_5
        0x6581ae6 -> :sswitch_4
        0x2b77bb9b -> :sswitch_3
        0x5545f2bb -> :sswitch_2
        0x6332f5b0 -> :sswitch_1
        0x713fe229 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_f
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

.method public setTonemapProfile(Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;FF)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4787
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4788
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4789
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4792
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 4794
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4795
    invoke-static {v0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4797
    invoke-static {p2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    .line 4799
    :goto_0
    sget-object p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4800
    invoke-static {p1, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4802
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    :goto_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4804
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4806
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4814
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_2
    return-void
.end method

.method public setUseCamera2FakeFlash(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture:Z

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    return-void
.end method

.method public setUseExpoFastBurst(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_expo_fast_burst:Z

    return-void
.end method

.method public setVideoHighSpeed(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4368
    :cond_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->want_video_high_speed:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->is_video_high_speed:Z

    return-void

    .line 4372
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setVideoStabilization(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4752
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4753
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$8500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4755
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4763
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 14

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3719
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3723
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3724
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v0, v4

    .line 3725
    invoke-direct {p0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->convertWhiteBalance(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_white_balance_temperature:Z

    if-nez v5, :cond_1

    goto :goto_1

    .line 3731
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "auto"

    .line 3737
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "manual"

    .line 3738
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3740
    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 3742
    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3744
    :cond_5
    invoke-virtual {p0, v1, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3747
    iget-object v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "daylight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v13, 0x8

    goto :goto_2

    :sswitch_1
    const-string v0, "fluorescent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v13, 0x7

    goto :goto_2

    :sswitch_2
    const-string v0, "twilight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v13, 0x6

    goto :goto_2

    :sswitch_3
    const-string v0, "cloudy-daylight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v13, 0x5

    goto :goto_2

    :sswitch_4
    const-string v0, "shade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v13, 0x4

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v13, 0x3

    goto :goto_2

    :sswitch_6
    const-string v0, "warm-fluorescent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v13, 0x2

    goto :goto_2

    :sswitch_7
    const-string v0, "incandescent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v13, 0x1

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/4 v13, 0x0

    :goto_2
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x5

    goto :goto_3

    :pswitch_2
    const/4 v3, 0x3

    goto :goto_3

    :pswitch_3
    const/4 v3, 0x7

    goto :goto_3

    :pswitch_4
    const/4 v3, 0x6

    goto :goto_3

    :pswitch_5
    const/16 v3, 0x8

    goto :goto_3

    :pswitch_6
    const/4 v3, 0x4

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x2

    :goto_3
    :pswitch_8
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3781
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3782
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3784
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 3792
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_f
    :goto_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4075183a -> :sswitch_8
        -0x37fc9231 -> :sswitch_7
        -0x2adfe6e0 -> :sswitch_6
        0x2dddaf -> :sswitch_5
        0x6854e2d -> :sswitch_4
        0x1c4eedc3 -> :sswitch_3
        0x625dee90 -> :sswitch_2
        0x71671468 -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setWhiteBalanceTemperature(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3812
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x3e8

    .line 3818
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x3a98

    .line 3819
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 3820
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3821
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$6100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3822
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3831
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setZoom(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 4855
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setZoom(IF)V

    return-void
.end method

.method public setZoom(IF)V
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 4865
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supported_extensions_zoom:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_extension:I

    .line 4866
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-ltz p1, :cond_8

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    .line 4875
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v3, p2, v1

    if-lez v3, :cond_5

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    const/4 v4, 0x0

    .line 4881
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    .line 4886
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    cmpl-float v3, p2, v3

    if-gtz v3, :cond_3

    goto :goto_1

    .line 4889
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "smooth_zoom too large"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4884
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "smooth_zoom too small"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    cmpl-float v1, p2, v1

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->zoom_ratios:Ljava/util/List;

    .line 4892
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4897
    invoke-static {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4898
    invoke-static {v0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4899
    invoke-static {p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4902
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4903
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 4905
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 4907
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    float-to-double v7, p2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    double-to-int p2, v3

    .line 4908
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    double-to-int v0, v3

    sub-int v3, v1, p2

    add-int/2addr v1, p2

    sub-int p2, v2, v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 4931
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4932
    invoke-static {p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$9500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_3
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->current_zoom_value:I

    .line 4936
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 4944
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_4
    return-void

    .line 4878
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public shouldCoverPreview()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->has_received_frame:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public startFaceDetection()Z
    .locals 4

    .line 6260
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->BLOCK_FOR_EXTENSIONS()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6261
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$10()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$10()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_full:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6269
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v3, 0x2

    .line 6270
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$12402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->supports_face_detect_mode_simple:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6275
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6276
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$12402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6282
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$12300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6283
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$5700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 6285
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 6293
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    return v1

    :cond_2
    const-string v0, "CameraController2"

    const-string v2, "startFaceDetection() called but face detection not available"

    .line 6279
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public startPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6170
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->initial_focus_mode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->initial_focus_mode:Ljava/lang/String;

    .line 6180
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setFocusValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6183
    monitor-enter v0

    .line 6184
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6186
    :try_start_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->setRepeatingRequest()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6198
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 6194
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 6196
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v1

    .line 6200
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6201
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createCaptureSession(Landroid/media/MediaRecorder;Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 6200
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public stopContinuousBurst()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->continuous_burst_in_progress:Z

    return-void
.end method

.method public stopFocusBracketingBurst()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    .line 4570
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focus_bracketing_in_progress:Z

    goto :goto_0

    .line 4574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopFocusBracketingBurst burst_type is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->burst_type:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 6208
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_4

    .line 6209
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 6218
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->extensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 6220
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1(Landroid/hardware/camera2/CameraExtensionSession;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 6224
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 6230
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6235
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->closeCaptureSession()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 6243
    :goto_1
    :try_start_3
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 6246
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    const/4 v2, 0x0

    .line 6249
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$11702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6250
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$12300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 6253
    :cond_3
    monitor-exit v0

    return-void

    .line 6212
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 6253
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public supportsAutoFocus()Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 5604
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5606
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    .line 5609
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public supportsMetering()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5616
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$17()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public takePicture(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->background_camera_lock:Ljava/lang/Object;

    .line 7776
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_f

    .line 7777
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->hasCaptureSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->picture_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->jpeg_todo:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->imageReaderRaw:Landroid/media/ImageReader;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->raw_todo:Z

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->done_all_captures:Z

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->take_picture_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    .line 7789
    sget-object p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_NORMAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->sessionType:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    .line 7800
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne p2, v1, :cond_3

    :cond_2
    :goto_1
    const/4 p2, 0x0

    goto/16 :goto_5

    :cond_3
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7804
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "flash_off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "flash_torch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "flash_frontscreen_torch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->use_fake_precapture_mode:Z

    const/4 v1, 0x2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7812
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "flash_auto"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "flash_frontscreen_auto"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p2, 0x1

    :goto_3
    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7813
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 7816
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fireAutoFlash()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 7821
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_8

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->fake_precapture_torch_performed:Z

    .line 7835
    iget p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_precapture:I

    add-int/2addr p2, p1

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_fake_flash_precapture:I

    const/4 p1, 0x5

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->state:I

    .line 7837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->precapture_state_change_time_ms:J

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 p1, 0x0

    const/4 p2, 0x1

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->capture_result_ae:Ljava/lang/Integer;

    if-eqz p2, :cond_a

    .line 7848
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v1, :cond_a

    const/4 p2, 0x1

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    :goto_4
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->camera_settings:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    .line 7849
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flash_auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p2, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 7868
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_c

    .line 7872
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureAfterPrecapture()V

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    .line 7875
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->runFakePrecapture()V

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    .line 7878
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->runPrecapture()V

    :cond_e
    :goto_6
    return-void

    .line 7780
    :cond_f
    :goto_7
    :try_start_1
    invoke-interface {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    .line 7781
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 7868
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public testGetPreviewBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method public testGetTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->previewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4830
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/TonemapCurve;

    move-result-object v0

    return-object v0
.end method

.method public unlock()V
    .locals 0

    return-void
.end method

.method public updatePreviewTexture()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_width:I

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_height:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 5777
    :cond_0
    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_texture_view_buffer_w:I

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_height:I

    .line 5778
    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_texture_view_buffer_h:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->texture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_width:I

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->preview_height:I

    .line 5779
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    :goto_0
    return-void
.end method
