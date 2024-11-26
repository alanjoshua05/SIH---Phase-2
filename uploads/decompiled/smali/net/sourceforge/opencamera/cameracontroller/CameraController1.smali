.class public Lnet/sourceforge/opencamera/cameracontroller/CameraController1;
.super Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.source "CameraController1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController1$TakePictureShutterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraController1"

.field private static final max_expo_bracketing_n_images:I = 0x3


# instance fields
.field private burst_exposures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private camera:Landroid/hardware/Camera;

.field private final camera_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

.field private final camera_info:Landroid/hardware/Camera$CameraInfo;

.field private current_exposure_compensation:I

.field private current_zoom_value:I

.field private display_orientation:I

.field private expo_bracketing_n_images:I

.field private expo_bracketing_stops:D

.field private frontscreen_flash:Z

.field private iso_key:Ljava/lang/String;

.field private n_burst:I

.field private final pending_burst_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private picture_height:I

.field private picture_width:I

.field private sounds_enabled:Z

.field private want_expo_bracketing:Z


# direct methods
.method public constructor <init>(ILnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;-><init>(I)V

    .line 29
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->sounds_enabled:Z

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->pending_burst_images:Ljava/util/List;

    const/4 v1, 0x3

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->expo_bracketing_n_images:I

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iput-wide v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->expo_bracketing_stops:D

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p2

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    .line 79
    :try_start_1
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 92
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    return-void

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 87
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->release()V

    .line 88
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    .line 76
    :cond_0
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 68
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Landroid/hardware/Camera;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$1000(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->takePictureNow(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 24
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->want_expo_bracketing:Z

    return p0
.end method

.method static synthetic access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)I
    .locals 0

    .line 24
    iget p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->n_burst:I

    return p0
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->pending_burst_images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->burst_exposures:Ljava/util/List;

    return-object p0
.end method

.method private clearPending()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->pending_burst_images:Ljava/util/List;

    .line 1757
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->burst_exposures:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->n_burst:I

    return-void
.end method

.method private convertFlashModeToValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 1256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "flash_off"

    goto :goto_1

    :cond_1
    const-string v0, "auto"

    .line 1259
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "flash_auto"

    goto :goto_1

    :cond_2
    const-string v0, "on"

    .line 1262
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "flash_on"

    goto :goto_1

    :cond_3
    const-string v0, "torch"

    .line 1265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "flash_torch"

    goto :goto_1

    :cond_4
    const-string v0, "red-eye"

    .line 1268
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "flash_red_eye"

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private convertFlashModesToValues(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "flash_off"

    if-eqz p1, :cond_4

    const-string v2, "off"

    .line 175
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "auto"

    .line 180
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "flash_auto"

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "on"

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "flash_on"

    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "torch"

    .line 190
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "flash_torch"

    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "red-eye"

    .line 195
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "flash_red_eye"

    .line 196
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_5

    goto :goto_0

    .line 211
    :cond_5
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object p1

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne p1, v2, :cond_6

    .line 214
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "flash_frontscreen_on"

    .line 216
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "flash_frontscreen_torch"

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-object v0
.end method

.method private convertFlashValueToMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1178
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "flash_red_eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "flash_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "flash_torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "flash_frontscreen_torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "flash_frontscreen_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "flash_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "flash_auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, ""

    goto :goto_1

    :pswitch_0
    const-string p1, "red-eye"

    goto :goto_1

    :pswitch_1
    const-string p1, "on"

    goto :goto_1

    :pswitch_2
    const-string p1, "torch"

    goto :goto_1

    :pswitch_3
    const-string p1, "off"

    goto :goto_1

    :pswitch_4
    const-string p1, "auto"

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
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
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertFocusModeToValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    .line 1099
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "focus_mode_auto"

    goto :goto_1

    :cond_1
    const-string v0, "infinity"

    .line 1102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "focus_mode_infinity"

    goto :goto_1

    :cond_2
    const-string v0, "macro"

    .line 1105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "focus_mode_macro"

    goto :goto_1

    :cond_3
    const-string v0, "fixed"

    .line 1108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "focus_mode_fixed"

    goto :goto_1

    :cond_4
    const-string v0, "edof"

    .line 1111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "focus_mode_edof"

    goto :goto_1

    :cond_5
    const-string v0, "continuous-picture"

    .line 1114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "focus_mode_continuous_picture"

    goto :goto_1

    :cond_6
    const-string v0, "continuous-video"

    .line 1117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "focus_mode_continuous_video"

    goto :goto_1

    :cond_7
    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private convertFocusModesToValues(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    const-string v1, "auto"

    .line 236
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "focus_mode_auto"

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "infinity"

    .line 242
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "focus_mode_infinity"

    .line 243
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "macro"

    .line 247
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "focus_mode_macro"

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "focus_mode_locked"

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "fixed"

    .line 258
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "focus_mode_fixed"

    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "edof"

    .line 263
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "focus_mode_edof"

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "continuous-picture"

    .line 268
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "focus_mode_continuous_picture"

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "continuous-video"

    .line 273
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "focus_mode_continuous_video"

    .line 274
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method private getExposureCompensationStep()F
    .locals 1

    .line 984
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 986
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 992
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x3eaaaaab

    :goto_0
    return v0
.end method

.method private getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 147
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method private setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 154
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 163
    iget p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :goto_0
    return-void
.end method

.method private takePictureNow(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->sounds_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1767
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$TakePictureShutterCallback;

    invoke-direct {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$TakePictureShutterCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez p1, :cond_1

    move-object v2, v1

    goto :goto_1

    .line 1768
    :cond_1
    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;

    invoke-direct {v2, p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 1846
    invoke-interface {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onStarted()V

    :cond_2
    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1849
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1855
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1856
    invoke-interface {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :goto_2
    return-void
.end method


# virtual methods
.method public autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V
    .locals 1

    .line 1676
    new-instance p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;

    invoke-direct {p2, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;)V

    .line 1679
    :try_start_0
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1680
    invoke-virtual {v0, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1687
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p2, 0x0

    .line 1689
    invoke-interface {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    :goto_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1701
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1707
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearFocusAndMetering()V
    .locals 5

    const/4 v0, 0x1

    .line 1428
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1430
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 1431
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1434
    :goto_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v4

    if-lez v4, :cond_1

    .line 1435
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 1439
    :goto_1
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1443
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1444
    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :cond_2
    :goto_2
    return-void
.end method

.method public clearPreviewFpsRange()V
    .locals 0

    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1379
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/Camera;Z)Z

    :cond_0
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->sounds_enabled:Z

    return-void
.end method

.method public focusIsContinuous()Z
    .locals 3

    const/4 v0, 0x1

    .line 1506
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1507
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "continuous-picture"

    .line 1510
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 1515
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1516
    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public focusIsVideo()Z
    .locals 2

    .line 1522
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1523
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "continuous-video"

    .line 1525
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAPI()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera"

    return-object v0
.end method

.method public getAntiBanding()Ljava/lang/String;
    .locals 1

    .line 557
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    .line 1320
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1323
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v0

    return v0
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .line 1335
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1338
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v0

    return v0
.end method

.method public getBurstTotal()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->n_burst:I

    return v0
.end method

.method public getBurstType()Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->want_expo_bracketing:Z

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    :goto_0
    return-object v0
.end method

.method public getCameraExtension()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCameraFeatures()Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    const-string v0, "CameraController1"

    .line 291
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 298
    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;

    invoke-direct {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;-><init>()V

    .line 299
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    .line 300
    iget-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_zoom:I

    .line 303
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->zoom_ratios:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 310
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 311
    iput-boolean v4, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_zoom_supported:Z

    .line 312
    iput v4, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_zoom:I

    const/4 v3, 0x0

    .line 313
    iput-object v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->zoom_ratios:Ljava/util/List;

    .line 317
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_face_detection:Z

    .line 320
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 327
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    .line 329
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 332
    iget-object v7, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    new-instance v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v8, v9, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_2
    iget-object v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->picture_sizes:Ljava/util/List;

    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;

    invoke-direct {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 340
    invoke-direct {p0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->convertFlashModesToValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_flash_values:Ljava/util/List;

    .line 342
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 343
    invoke-direct {p0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->convertFocusModesToValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supported_focus_values:Ljava/util/List;

    .line 344
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_num_focus_areas:I

    .line 346
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v3

    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_exposure_lock_supported:Z

    .line 348
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v3

    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_white_balance_lock_supported:Z

    .line 350
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v3

    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_video_stabilization_supported:Z

    .line 352
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v3

    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->is_photo_video_recording_supported:Z

    .line 354
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure:I

    .line 355
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure:I

    .line 356
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getExposureCompensationStep()F

    move-result v3

    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->exposure_step:F

    .line 357
    iget v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->min_exposure:I

    if-eqz v3, :cond_3

    iget v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_exposure:I

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supports_expo_bracketing:Z

    const/4 v3, 0x3

    .line 358
    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->max_expo_bracketing_n_images:I

    .line 360
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    .line 365
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 367
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 370
    iget-object v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    new-instance v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 373
    :cond_5
    iget-object v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->video_sizes:Ljava/util/List;

    new-instance v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;

    invoke-direct {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->preview_sizes:Ljava/util/List;

    .line 377
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 378
    iget-object v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->preview_sizes:Ljava/util/List;

    new-instance v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v3, v5, :cond_7

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 386
    invoke-static {v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/Camera$CameraInfo;)Z

    move-result v3

    iput-boolean v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->can_disable_shutter_sound:Z

    goto :goto_6

    .line 389
    :cond_7
    iput-boolean v4, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->can_disable_shutter_sound:Z

    :goto_6
    const/high16 v3, 0x422c0000    # 43.0f

    const/high16 v4, 0x425c0000    # 55.0f

    .line 399
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v5

    iput v5, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_x:F

    .line 400
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v1

    iput v1, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_y:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v1

    .line 404
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "exception reading horizontal or vertical view angles"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput v4, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_x:F

    .line 407
    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_y:F

    .line 414
    :goto_7
    iget v1, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_x:F

    const/high16 v5, 0x43160000    # 150.0f

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_8

    iget v1, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_y:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_9

    :cond_8
    const-string v1, "camera API reporting stupid view angles, set to sensible defaults"

    .line 415
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iput v4, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_x:F

    .line 417
    iput v3, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->view_angle_y:F

    :cond_9
    return-object v2

    :cond_a
    const-string v1, "getSupportedPictureSizes() returned null!"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v0

    :catch_2
    move-exception v1

    const-string v2, "failed to get camera parameters"

    .line 294
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 296
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public getCameraOrientation()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 1968
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .line 489
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->display_orientation:I

    return v0
.end method

.method public getEdgeMode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->current_exposure_compensation:I

    return v0
.end method

.method public getExposureTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 1973
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown camera_facing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_UNKNOWN:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object v0

    .line 1975
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object v0

    .line 1977
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object v0
.end method

.method public getFlashValue()Ljava/lang/String;
    .locals 1

    .line 1276
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->convertFlashModeToValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation

    .line 1449
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1453
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    .line 1455
    new-instance v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    iget-object v4, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct {v3, v4, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFocusBracketingSourceDistance()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFocusBracketingTargetDistance()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFocusDistance()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFocusValue()Ljava/lang/String;
    .locals 1

    .line 1126
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->convertFocusModeToValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISO()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getISOKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    return-object v0
.end method

.method public getJpegQuality()I
    .locals 1

    .line 934
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation

    .line 1461
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1465
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    .line 1467
    new-instance v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    iget-object v4, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct {v3, v4, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getNBurstTaken()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->pending_burst_images:Ljava/util/List;

    .line 877
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNoiseReductionMode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpticalStabilization()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParametersString()Ljava/lang/String;
    .locals 1

    .line 2002
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2008
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 3

    .line 731
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->picture_width:I

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->picture_height:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object v0
.end method

.method public getPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 3

    .line 747
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 749
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object v1
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .line 461
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1042
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1051
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1052
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 1

    .line 930
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0
.end method

.method public getVideoStabilization()Z
    .locals 3

    .line 910
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "CameraController1"

    const-string v2, "failed to get parameters for video stabilization"

    .line 915
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 917
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    const/4 v0, 0x0

    return v0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .line 520
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceTemperature()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getZoom()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->current_zoom_value:I

    return v0
.end method

.method public initVideoRecorderPostPrepare(Landroid/media/MediaRecorder;Z)V
    .locals 0

    return-void
.end method

.method public initVideoRecorderPrePrepare(Landroid/media/MediaRecorder;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1990
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method public isBurstOrExpo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCapturingBurst()Z
    .locals 3

    .line 872
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getBurstTotal()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getNBurstTaken()I

    move-result v0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getBurstTotal()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isContinuousBurstInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isManualISO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onError()V
    .locals 2

    const-string v0, "CameraController1"

    const-string v1, "onError"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_error_cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_1
    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1538
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1543
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1544
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public removeLocationInfo()V
    .locals 1

    .line 1372
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1374
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public resetZoom()V
    .locals 1

    const/4 v0, 0x0

    .line 973
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setZoom(I)V

    return-void
.end method

.method public sceneModeAffectsFunctionality()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAntiBanding(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 3

    .line 538
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    const-string v2, "auto"

    .line 540
    invoke-virtual {p0, v1, p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 544
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 546
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 547
    :cond_0
    iget-object p1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-object v1
.end method

.method public setAperture(F)V
    .locals 0

    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 1

    .line 1313
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1314
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1315
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 1

    .line 1328
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1329
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1330
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setBurstForNoiseReduction(ZZ)V
    .locals 0

    return-void
.end method

.method public setBurstNImages(I)V
    .locals 0

    return-void
.end method

.method public setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 787
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_NONE:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq p1, v0, :cond_1

    const-string p1, "CameraController1"

    const-string v0, "burst type not supported"

    .line 788
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 791
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_EXPO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->want_expo_bracketing:Z

    return-void
.end method

.method public setCameraExtension(ZI)V
    .locals 0

    return-void
.end method

.method public setCaptureFollowAutofocusHint(Z)V
    .locals 0

    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 3

    .line 474
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    const-string v2, "none"

    .line 476
    invoke-virtual {p0, v1, p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    :cond_0
    iget-object v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-object p1
.end method

.method public setContinuousFocusMoveCallback(Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1719
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$2;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$2;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 1729
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1736
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 1940
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 1941
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    .line 1942
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 1945
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p1, v0, 0x168

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1953
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CameraController1"

    const-string v2, "failed to set display orientation"

    .line 1957
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->display_orientation:I

    return-void
.end method

.method public setDummyCaptureHack(Z)V
    .locals 0

    return-void
.end method

.method public setEdgeMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setExpoBracketingNImages(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 829
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->expo_bracketing_n_images:I

    return-void

    .line 832
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setExpoBracketingStops(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->expo_bracketing_stops:D

    return-void

    .line 849
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setExposureCompensation(I)Z
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->current_exposure_compensation:I

    if-eq p1, v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->current_exposure_compensation:I

    .line 1008
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1009
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExposureTime(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFaceDetectionListener(Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1625
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1CameraFaceDetectionListener;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1CameraFaceDetectionListener;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 1628
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    :goto_0
    return-void
.end method

.method public setFlashValue(Ljava/lang/String;)V
    .locals 4

    .line 1201
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->frontscreen_flash:Z

    const-string v1, "flash_frontscreen_on"

    .line 1206
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->frontscreen_flash:Z

    return-void

    .line 1212
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1218
    :cond_1
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->convertFlashValueToMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1220
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1224
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1228
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1242
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setFocusAndMeteringArea(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;)Z"
        }
    .end annotation

    .line 1385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;

    .line 1387
    new-instance v2, Landroid/hardware/Camera$Area;

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;->rect:Landroid/graphics/Rect;

    iget v1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;->weight:I

    invoke-direct {v2, v3, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1390
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1391
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1394
    :cond_1
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1397
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1402
    :cond_2
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1405
    :goto_1
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return p1

    .line 1409
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1410
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1412
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1420
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1421
    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public setFocusBracketingAddInfinity(Z)V
    .locals 0

    return-void
.end method

.method public setFocusBracketingNImages(I)V
    .locals 0

    return-void
.end method

.method public setFocusBracketingSourceDistance(F)V
    .locals 0

    return-void
.end method

.method public setFocusBracketingTargetDistance(F)V
    .locals 0

    return-void
.end method

.method public setFocusDistance(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFocusValue(Ljava/lang/String;)V
    .locals 3

    .line 1059
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1060
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "focus_mode_macro"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "focus_mode_fixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "focus_mode_infinity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "focus_mode_continuous_video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "focus_mode_continuous_picture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "focus_mode_edof"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "focus_mode_auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "focus_mode_locked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "macro"

    .line 1069
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "fixed"

    .line 1072
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "infinity"

    .line 1066
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string p1, "continuous-video"

    .line 1081
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string p1, "continuous-picture"

    .line 1078
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string p1, "edof"

    .line 1075
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string p1, "auto"

    .line 1063
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1088
    :goto_1
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c4267c1 -> :sswitch_7
        -0x7118f3dc -> :sswitch_6
        -0x711762d5 -> :sswitch_5
        -0x2a6f6a7d -> :sswitch_4
        0x17feaa40 -> :sswitch_3
        0x2335561d -> :sswitch_2
        0x4e3b879f -> :sswitch_1
        0x4e9a3bf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setISO(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 9

    .line 583
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "iso-values"

    .line 585
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "iso-mode-values"

    .line 587
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "iso-speed-values"

    .line 589
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "nv-picture-iso-values"

    .line 591
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 595
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    .line 598
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 600
    array-length v3, v1

    if-lez v3, :cond_2

    .line 602
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 606
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 607
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 608
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v2

    :cond_3
    const-string v1, "iso"

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    .line 616
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "iso-speed"

    iput-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    .line 618
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "nv-picture-iso"

    iput-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 621
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Z00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "auto"

    if-nez v4, :cond_6

    .line 658
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 659
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "50"

    .line 660
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "100"

    .line 661
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "200"

    .line 662
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "400"

    .line 663
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "800"

    .line 664
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "1600"

    .line 665
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_6
    invoke-virtual {p0, v4, p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->iso_key:Ljava/lang/String;

    .line 671
    iget-object v2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_7
    return-object p1

    :cond_8
    return-object v2
.end method

.method public setISO(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setJpegQuality(I)V
    .locals 1

    .line 939
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 941
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setLocationInfo(Landroid/location/Location;)V
    .locals 8

    .line 1351
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1354
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1355
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1356
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1363
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1365
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    .line 1366
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1368
    :cond_1
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setManualISO(ZI)V
    .locals 0

    return-void
.end method

.method public setNoiseReductionMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPictureSize(II)V
    .locals 1

    .line 736
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->picture_width:I

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->picture_height:I

    .line 739
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 742
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1553
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1556
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1557
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1
.end method

.method public setPreviewFpsRange(II)V
    .locals 1

    .line 1020
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1021
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1022
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CameraController1"

    const-string v0, "setPreviewFpsRange failed to get parameters"

    .line 1027
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1029
    iget p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :goto_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 754
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 757
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 760
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setPreviewTexture(Landroid/view/TextureView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1566
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1569
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1570
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw p1
.end method

.method public setRaw(ZI)V
    .locals 0

    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 3

    .line 1285
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "continuous-video"

    .line 1297
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1298
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1299
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CameraController1"

    const-string v1, "setRecordingHint failed to get parameters"

    .line 1305
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1307
    iget p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 1342
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1343
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1344
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 3

    .line 433
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "auto"

    .line 447
    invoke-virtual {p0, v1, p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "CameraController1"

    const-string v1, "exception from getParameters"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 438
    iget p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public setTonemapProfile(Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;FF)V
    .locals 0

    return-void
.end method

.method public setUseExpoFastBurst(Z)V
    .locals 0

    return-void
.end method

.method public setVideoHighSpeed(Z)V
    .locals 0

    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 1

    .line 903
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 904
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 905
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 4

    .line 496
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    const-string v2, "manual"

    .line 503
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "auto"

    .line 507
    invoke-virtual {p0, v1, p1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    iget-object v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;->selected_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-object p1
.end method

.method public setWhiteBalanceTemperature(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setZoom(I)V
    .locals 2

    .line 952
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->current_zoom_value:I

    .line 956
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 957
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CameraController1"

    const-string v1, "failed to set parameters for zoom"

    .line 960
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 962
    iget p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :goto_0
    return-void
.end method

.method public setZoom(IF)V
    .locals 0

    .line 968
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setZoom(I)V

    return-void
.end method

.method public startFaceDetection()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1602
    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1607
    :catch_0
    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    const/4 v0, 0x0

    return v0
.end method

.method public startPreview()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1579
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1584
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1585
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;-><init>()V

    throw v0
.end method

.method public stopContinuousBurst()V
    .locals 0

    return-void
.end method

.method public stopFocusBracketingBurst()V
    .locals 0

    return-void
.end method

.method public stopPreview()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method

.method public supportsAutoFocus()Z
    .locals 3

    const/4 v0, 0x1

    .line 1475
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1476
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "auto"

    .line 1479
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "macro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 1484
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1485
    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMetering()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1493
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1494
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v2

    .line 1497
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1498
    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->count_camera_parameters_exception:I

    return v0
.end method

.method public takePicture(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 9

    .line 1864
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->clearPending()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->want_expo_bracketing:Z

    if-eqz v0, :cond_3

    .line 1868
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->expo_bracketing_n_images:I

    .line 1869
    div-int/lit8 v1, v1, 0x2

    .line 1870
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 1871
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 1872
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getExposureCompensationStep()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    const v3, 0x3eaaaaab

    .line 1875
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->getExposureCompensation()I

    move-result v4

    iget-wide v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->expo_bracketing_stops:D

    int-to-double v7, v1

    .line 1876
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v5, v7

    float-to-double v7, v3

    .line 1877
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    double-to-int v3, v5

    const/4 v5, 0x1

    .line 1878
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1884
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1888
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    sub-int v8, v1, v7

    mul-int v8, v8, v3

    sub-int v8, v4, v8

    .line 1893
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1894
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v6, v1, :cond_2

    add-int/lit8 v6, v6, 0x1

    mul-int v2, v6, v3

    add-int/2addr v2, v4

    .line 1904
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1905
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->burst_exposures:Ljava/util/List;

    .line 1913
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->n_burst:I

    :cond_3
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->frontscreen_flash:Z

    if-eqz v0, :cond_4

    .line 1919
    invoke-interface {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onFrontScreenTurnOn()V

    .line 1921
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1922
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;

    invoke-direct {v1, p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1934
    :cond_4
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->takePictureNow(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    return-void
.end method

.method public unlock()V
    .locals 1

    .line 1984
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->stopPreview()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->camera:Landroid/hardware/Camera;

    .line 1985
    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    return-void
.end method
