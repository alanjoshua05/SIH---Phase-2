.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;
.super Ljava/lang/Object;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSettings"
.end annotation


# instance fields
.field private ae_exposure_compensation:I

.field private ae_lock:Z

.field private ae_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private ae_target_fps_range:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private af_mode:I

.field private af_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private antibanding:I

.field private aperture:F

.field private color_effect:I

.field private control_zoom_ratio:F

.field private default_edge_mode:Ljava/lang/Integer;

.field private default_noise_reduction_mode:Ljava/lang/Integer;

.field private default_optical_stabilization:Ljava/lang/Integer;

.field private default_tonemap_mode:Ljava/lang/Integer;

.field private edge_mode:I

.field private exposure_time:J

.field private face_detect_mode:I

.field private flash_value:Ljava/lang/String;

.field private focus_distance:F

.field private focus_distance_manual:F

.field private gamma_profile:F

.field private has_ae_exposure_compensation:Z

.field private has_af_mode:Z

.field private has_antibanding:Z

.field private has_aperture:Z

.field private has_control_zoom_ratio:Z

.field private has_default_edge_mode:Z

.field private has_default_noise_reduction_mode:Z

.field private has_edge_mode:Z

.field private has_face_detect_mode:Z

.field private has_iso:Z

.field private has_noise_reduction_mode:Z

.field private iso:I

.field private jpeg_quality:B

.field private location:Landroid/location/Location;

.field private log_profile_strength:F

.field private noise_reduction_mode:I

.field private rotation:I

.field private scalar_crop_region:Landroid/graphics/Rect;

.field private scene_mode:I

.field private sensor_frame_duration:J

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

.field private tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field private video_stabilization:Z

.field private wb_lock:Z

.field private white_balance:I

.field private white_balance_temperature:I


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 3

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x5a

    iput-byte p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->jpeg_quality:B

    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scene_mode:I

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->color_effect:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance:I

    const/4 v1, 0x3

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->antibanding:I

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->edge_mode:I

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->noise_reduction_mode:I

    const/16 v1, 0x1388

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance_temperature:I

    const-string v1, "flash_off"

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->flash_value:Ljava/lang/String;

    const-wide/32 v1, 0x1fca055

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->exposure_time:J

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_mode:I

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->face_detect_mode:I

    .line 398
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void
.end method

.method static synthetic access$10000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J
    .locals 2

    .line 352
    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->sensor_frame_duration:J

    return-wide v0
.end method

.method static synthetic access$10002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;J)J
    .locals 0

    .line 352
    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->sensor_frame_duration:J

    return-wide p1
.end method

.method static synthetic access$10100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->focus_distance:F

    return p0
.end method

.method static synthetic access$10102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->focus_distance:F

    return p1
.end method

.method static synthetic access$10200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->focus_distance_manual:F

    return p0
.end method

.method static synthetic access$10202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->focus_distance_manual:F

    return p1
.end method

.method static synthetic access$10300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_af_mode:Z

    return p0
.end method

.method static synthetic access$10302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_af_mode:Z

    return p1
.end method

.method static synthetic access$10402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_mode:I

    return p1
.end method

.method static synthetic access$10500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$10600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$10700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_lock:Z

    return p0
.end method

.method static synthetic access$10702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_lock:Z

    return p1
.end method

.method static synthetic access$10800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAutoExposureLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$10900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->wb_lock:Z

    return p0
.end method

.method static synthetic access$10902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->wb_lock:Z

    return p1
.end method

.method static synthetic access$11000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAutoWhiteBalanceLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$11102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->rotation:I

    return p1
.end method

.method static synthetic access$11200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 352
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method static synthetic access$11202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$11300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$11400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 352
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method static synthetic access$11402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$11500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$11600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 0

    .line 352
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setupBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method static synthetic access$11700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_face_detect_mode:Z

    return p0
.end method

.method static synthetic access$11702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_face_detect_mode:Z

    return p1
.end method

.method static synthetic access$12300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$12402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->face_detect_mode:I

    return p1
.end method

.method static synthetic access$4100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I
    .locals 0

    .line 352
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->getExifOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Landroid/location/Location;
    .locals 0

    .line 352
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->location:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$4202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$5602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scene_mode:I

    return p1
.end method

.method static synthetic access$5700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->color_effect:I

    return p1
.end method

.method static synthetic access$5900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance:I

    return p0
.end method

.method static synthetic access$6002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance:I

    return p1
.end method

.method static synthetic access$6100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance_temperature:I

    return p0
.end method

.method static synthetic access$6202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance_temperature:I

    return p1
.end method

.method static synthetic access$6302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_antibanding:Z

    return p1
.end method

.method static synthetic access$6402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->antibanding:I

    return p1
.end method

.method static synthetic access$6500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_edge_mode:Z

    return p0
.end method

.method static synthetic access$6602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_edge_mode:Z

    return p1
.end method

.method static synthetic access$6700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->edge_mode:I

    return p0
.end method

.method static synthetic access$6702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->edge_mode:I

    return p1
.end method

.method static synthetic access$6800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setEdgeMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_noise_reduction_mode:Z

    return p0
.end method

.method static synthetic access$6902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_noise_reduction_mode:Z

    return p1
.end method

.method static synthetic access$7000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->noise_reduction_mode:I

    return p0
.end method

.method static synthetic access$7002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->noise_reduction_mode:I

    return p1
.end method

.method static synthetic access$7100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setNoiseReductionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_iso:Z

    return p0
.end method

.method static synthetic access$7202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_iso:Z

    return p1
.end method

.method static synthetic access$7300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->iso:I

    return p0
.end method

.method static synthetic access$7302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->iso:I

    return p1
.end method

.method static synthetic access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;
    .locals 0

    .line 352
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->flash_value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->flash_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAEMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J
    .locals 2

    .line 352
    iget-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->exposure_time:J

    return-wide v0
.end method

.method static synthetic access$7602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;J)J
    .locals 0

    .line 352
    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->exposure_time:J

    return-wide p1
.end method

.method static synthetic access$7700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_aperture:Z

    return p0
.end method

.method static synthetic access$7702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_aperture:Z

    return p1
.end method

.method static synthetic access$7800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->aperture:F

    return p0
.end method

.method static synthetic access$7802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->aperture:F

    return p1
.end method

.method static synthetic access$7900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAperture(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->video_stabilization:Z

    return p0
.end method

.method static synthetic access$8402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->video_stabilization:Z

    return p1
.end method

.method static synthetic access$8500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$8600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 0

    .line 352
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object p0
.end method

.method static synthetic access$8602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object p1
.end method

.method static synthetic access$8700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->log_profile_strength:F

    return p0
.end method

.method static synthetic access$8702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->log_profile_strength:F

    return p1
.end method

.method static synthetic access$8800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)F
    .locals 0

    .line 352
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->gamma_profile:F

    return p0
.end method

.method static synthetic access$8802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->gamma_profile:F

    return p1
.end method

.method static synthetic access$8900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setTonemapProfile(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$9000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)B
    .locals 0

    .line 352
    iget-byte p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->jpeg_quality:B

    return p0
.end method

.method static synthetic access$9002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;B)B
    .locals 0

    .line 352
    iput-byte p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->jpeg_quality:B

    return p1
.end method

.method static synthetic access$9102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_control_zoom_ratio:Z

    return p1
.end method

.method static synthetic access$9202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;F)F
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->control_zoom_ratio:F

    return p1
.end method

.method static synthetic access$9300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setControlZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$9402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scalar_crop_region:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$9500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$9602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Z)Z
    .locals 0

    .line 352
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_ae_exposure_compensation:Z

    return p1
.end method

.method static synthetic access$9702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;I)I
    .locals 0

    .line 352
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_exposure_compensation:I

    return p1
.end method

.method static synthetic access$9800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Landroid/util/Range;
    .locals 0

    .line 352
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_target_fps_range:Landroid/util/Range;

    return-object p0
.end method

.method static synthetic access$9902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/util/Range;)Landroid/util/Range;
    .locals 0

    .line 352
    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_target_fps_range:Landroid/util/Range;

    return-object p1
.end method

.method private getExifOrientation()I
    .locals 5

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->rotation:I

    add-int/lit16 v0, v0, 0x168

    .line 407
    rem-int/lit16 v0, v0, 0x168

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0x5a

    const/16 v3, 0x8

    const/4 v4, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_3

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 420
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 412
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method private getGammaProfile(F)F
    .locals 4

    float-to-double v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->gamma_profile:F

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 1027
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getLogProfile(F)F
    .locals 5

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->log_profile_strength:F

    mul-float p1, p1, v0

    float-to-double v1, p1

    .line 1016
    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float p1, v1

    return p1
.end method

.method private setAEMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z
    .locals 10

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 763
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v2, 0x0

    .line 774
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_iso:Z

    const-string v1, "flash_torch"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 775
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$14()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->iso:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-wide v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->exposure_time:J

    if-nez p2, :cond_1

    const-wide/32 v8, 0xbebc200

    .line 779
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 783
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-wide v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->sensor_frame_duration:J

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-lez p2, :cond_2

    .line 785
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$15()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    iget-wide v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->sensor_frame_duration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->flash_value:Ljava/lang/String;

    .line 790
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 791
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 794
    :cond_3
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_target_fps_range:Landroid/util/Range;

    if-eqz p2, :cond_5

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "set ae_target_fps_range: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_target_fps_range:Landroid/util/Range;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraController2"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$26()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_target_fps_range:Landroid/util/Range;

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->flash_value:Ljava/lang/String;

    .line 809
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "flash_red_eye"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "flash_frontscreen_torch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "flash_frontscreen_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "flash_auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "flash_frontscreen_auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 838
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object p2

    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq p2, v0, :cond_e

    .line 839
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 841
    :cond_e
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 842
    :goto_2
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 829
    :pswitch_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 830
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 833
    :pswitch_2
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 834
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 811
    :pswitch_3
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 812
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 820
    :pswitch_4
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 821
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 847
    :pswitch_5
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$4()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 848
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ad697b8 -> :sswitch_7
        -0x473ee362 -> :sswitch_6
        -0x445cab60 -> :sswitch_5
        -0xa09548 -> :sswitch_4
        0x10c9c83 -> :sswitch_3
        0x606b72ed -> :sswitch_2
        0x60e43c8e -> :sswitch_1
        0x77b66834 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 946
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 949
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$17()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 950
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 937
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 940
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 941
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$8()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_regions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 636
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_antibanding:Z

    if-eqz v0, :cond_2

    .line 640
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$22()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$22()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->antibanding:I

    if-eq v0, v1, :cond_2

    .line 643
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$22()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->antibanding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private setAperture(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 745
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_aperture:Z

    if-eqz v0, :cond_1

    .line 751
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$25()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->aperture:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setAutoExposureLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 919
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_lock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setAutoWhiteBalanceLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 928
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$21()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->wb_lock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 593
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$23()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$23()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->color_effect:I

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 602
    :cond_2
    :goto_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$23()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->color_effect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setControlZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_control_zoom_ratio:Z

    if-eqz v0, :cond_0

    .line 857
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$12()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->control_zoom_ratio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 862
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scalar_crop_region:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 866
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$18()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scalar_crop_region:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEdgeMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 657
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_edge_mode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_default_edge_mode:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_default_edge_mode:Z

    .line 664
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_edge_mode:Ljava/lang/Integer;

    .line 668
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->edge_mode:I

    if-eq v0, v3, :cond_5

    .line 671
    :cond_2
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->edge_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 679
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 685
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_default_edge_mode:Z

    if-eqz v0, :cond_5

    .line 688
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_edge_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 689
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_edge_mode:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method private setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_ae_exposure_compensation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_iso:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 878
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v2, :cond_2

    return v1

    .line 882
    :cond_2
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$13()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_exposure_compensation:I

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$13()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-static {p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 885
    :cond_4
    :goto_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$13()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->ae_exposure_compensation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 955
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_face_detect_mode:Z

    if-eqz v0, :cond_1

    .line 959
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$10()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->face_detect_mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 961
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$10()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 910
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$17()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->focus_distance:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 892
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_af_mode:Z

    if-eqz v0, :cond_1

    .line 898
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->af_mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNoiseReductionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 703
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_noise_reduction_mode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_default_noise_reduction_mode:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_default_noise_reduction_mode:Z

    .line 710
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_noise_reduction_mode:Ljava/lang/Integer;

    .line 714
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->noise_reduction_mode:I

    if-eq v0, v3, :cond_5

    .line 717
    :cond_2
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->noise_reduction_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 725
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_default_noise_reduction_mode:Z

    if-eqz v0, :cond_5

    .line 734
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_noise_reduction_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 735
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_noise_reduction_mode:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method private setRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 967
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$29()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 554
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 559
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$30()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 560
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$19()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-boolean v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->has_face_detect_mode:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 567
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$30()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 568
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$19()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_4

    :cond_1
    return v5

    :cond_2
    iget v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scene_mode:I

    if-nez v3, :cond_3

    const/4 v4, 0x1

    .line 584
    :cond_3
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$30()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 585
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$19()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    iget v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scene_mode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    .line 586
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->scene_mode:I

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v5
.end method

.method private setStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 976
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v0, v1, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$28()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->video_stabilization:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 982
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->video_stabilization:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_optical_stabilization:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 987
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_optical_stabilization:Ljava/lang/Integer;

    .line 991
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_optical_stabilization:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 994
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_optical_stabilization:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 997
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_optical_stabilization:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setTonemapProfile(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 12

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 1038
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 1039
    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const/4 v6, 0x0

    if-ne v1, v5, :cond_1

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->log_profile_strength:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 1041
    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-ne v1, v5, :cond_2

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->gamma_profile:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1050
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v1

    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-ne v1, v5, :cond_3

    goto/16 :goto_9

    :cond_3
    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_tonemap_mode:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 1056
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$34()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_tonemap_mode:Ljava/lang/Integer;

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 1064
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_REC709:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const/4 v5, 0x4

    const/16 v6, 0x17

    if-ne v0, v1, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_5

    .line 1067
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$34()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1068
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$35()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 1070
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_SRGB:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-ne v0, v1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_6

    .line 1073
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$34()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1074
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$35()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 1080
    :cond_6
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$9;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x20

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1234
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)[F

    move-result-object v0

    goto/16 :goto_8

    :pswitch_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1229
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)[F

    move-result-object v0

    goto/16 :goto_8

    :pswitch_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1224
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)[F

    move-result-object v0

    goto/16 :goto_8

    :pswitch_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1120
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x40

    :goto_3
    mul-int/lit8 v0, v1, 0x2

    .line 1132
    new-array v0, v0, [F

    :goto_4
    if-ge v3, v1, :cond_b

    int-to-float v5, v3

    int-to-float v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 1135
    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    if-ne v6, v7, :cond_8

    invoke-direct {p0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->getLogProfile(F)F

    move-result v6

    goto :goto_5

    :cond_8
    invoke-direct {p0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->getGammaProfile(F)F

    move-result v6

    :goto_5
    mul-int/lit8 v7, v3, 0x2

    .line 1136
    aput v5, v0, v7

    add-int/2addr v7, v2

    .line 1137
    aput v6, v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_4
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    goto :goto_8

    :pswitch_5
    const/16 v0, 0x10

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    new-array v1, v1, [F

    const/4 v6, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    .line 1091
    aget v7, v5, v3

    const v8, 0x3c9374bc    # 0.018f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_9

    const/high16 v8, 0x40900000    # 4.5f

    mul-float v8, v8, v7

    goto :goto_7

    :cond_9
    float-to-double v8, v7

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    .line 1097
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff195810624dd2fL    # 1.099

    mul-double v8, v8, v10

    const-wide v10, 0x3fb95810624dd2f2L    # 0.099

    sub-double/2addr v8, v10

    double-to-float v8, v8

    :goto_7
    add-int/lit8 v9, v6, 0x1

    .line 1099
    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x2

    .line 1100
    aput v8, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    move-object v0, v1

    :cond_b
    :goto_8
    if-eqz v0, :cond_c

    .line 1275
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$34()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {p1, v1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1276
    new-instance v1, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v1, v0, v0, v0}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 1277
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1278
    iput-boolean v2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_used_tonemap_curve:Z

    goto :goto_9

    .line 1281
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown log type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->tonemap_profile:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController2"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_tonemap_mode:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 1286
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$34()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->default_tonemap_mode:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_e
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x3d889a02    # 0.0667f
        0x3e92a305    # 0.2864f
        0x3e087fcc    # 0.1333f
        0x3ecd288d    # 0.4007f
        0x3e4ccccd    # 0.2f
        0x3ef81062    # 0.4845f
        0x3e888ce7    # 0.2667f
        0x3f0d9e84    # 0.5532f
        0x3eaaa64c    # 0.3333f
        0x3f1ccccd    # 0.6125f
        0x3ecccccd    # 0.4f
        0x3f2a4a8c    # 0.6652f
        0x3eeef34d    # 0.4667f
        0x3f36872b    # 0.713f
        0x3f088659    # 0.5333f
        0x3f41c433    # 0.7569f
        0x3f19999a    # 0.6f
        0x3f4c3611    # 0.7977f
        0x3f2aacda    # 0.6667f
        0x3f560419    # 0.836f
        0x3f3bb98c    # 0.7333f
        0x3f5f41f2    # 0.8721f
        0x3f4ccccd    # 0.8f
        0x3f680347    # 0.9063f
        0x3f5de00d    # 0.8667f
        0x3f705bc0    # 0.9389f
        0x3f6eecc0    # 0.9333f
        0x3f785879    # 0.9701f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3d889a02    # 0.0667f
        0x3e087fcc    # 0.1333f
        0x3e4ccccd    # 0.2f
        0x3e888ce7    # 0.2667f
        0x3eaaa64c    # 0.3333f
        0x3ecccccd    # 0.4f
        0x3eeef34d    # 0.4667f
        0x3f088659    # 0.5333f
        0x3f19999a    # 0.6f
        0x3f2aacda    # 0.6667f
        0x3f3bb98c    # 0.7333f
        0x3f4ccccd    # 0.8f
        0x3f5de00d    # 0.8667f
        0x3f6eecc0    # 0.9333f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 610
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$20()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$20()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance:I

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 619
    :cond_2
    :goto_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$20()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_2
    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance:I

    if-nez v1, :cond_3

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->white_balance_temperature:I

    .line 626
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$100(I)Landroid/hardware/camera2/params/RggbChannelVector;

    move-result-object v0

    .line 627
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$24()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 628
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$27()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    return v2
.end method

.method private setupBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 444
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eq v0, v1, :cond_0

    .line 445
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 449
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 450
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 451
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 452
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAEMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    .line 453
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setControlZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 454
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 455
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 456
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 457
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 458
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAutoExposureLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 459
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAutoWhiteBalanceLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 460
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 461
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 462
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 463
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 464
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 465
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setTonemapProfile(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->location:Landroid/location/Location;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 468
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    move-result-object p2

    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;->SESSIONTYPE_EXTENSION:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$SessionType;

    if-eq p2, v0, :cond_1

    .line 472
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$31()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->location:Landroid/location/Location;

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 474
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$32()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->rotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 475
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$33()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    iget-byte v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->jpeg_quality:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 478
    :cond_2
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setEdgeMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 479
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->setNoiseReductionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    return-void
.end method
