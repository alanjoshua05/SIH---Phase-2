.class public Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraFeatures"
.end annotation


# instance fields
.field public apertures:[F

.field public can_disable_shutter_sound:Z

.field public exposure_step:F

.field public is_exposure_lock_supported:Z

.field public is_optical_stabilization_supported:Z

.field public is_photo_video_recording_supported:Z

.field public is_video_stabilization_supported:Z

.field public is_white_balance_lock_supported:Z

.field public is_zoom_supported:Z

.field public max_expo_bracketing_n_images:I

.field public max_exposure:I

.field public max_exposure_time:J

.field public max_iso:I

.field public max_num_focus_areas:I

.field public max_temperature:I

.field public max_zoom:I

.field public min_exposure:I

.field public min_exposure_time:J

.field public min_iso:I

.field public min_temperature:I

.field public minimum_focus_distance:F

.field public picture_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

.field public preview_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

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

.field public supported_flash_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public supported_focus_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public supports_burst:Z

.field public supports_expo_bracketing:Z

.field public supports_exposure_time:Z

.field public supports_face_detection:Z

.field public supports_focus_bracketing:Z

.field public supports_iso_range:Z

.field public supports_raw:Z

.field public supports_tonemap_curve:Z

.field public supports_white_balance_temperature:Z

.field public tonemap_max_curve_points:I

.field public video_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

.field public video_sizes_high_speed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

.field public view_angle_x:F

.field public view_angle_y:F

.field public zoom_ratios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSize(Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;DZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            "DZ)",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 130
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmpl-double v1, p2, v3

    if-lez v1, :cond_2

    .line 133
    invoke-virtual {v2, p2, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsFrameRate(D)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    if-eqz p4, :cond_4

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public static supportsFrameRate(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 111
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    int-to-double v2, p1

    .line 112
    invoke-virtual {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsFrameRate(D)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
