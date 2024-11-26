.class public Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1;
.super Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;
.source "CameraControllerManager1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CControllerManager1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1$1;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    invoke-virtual {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100037

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000b0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    .locals 4

    const-string v0, "CControllerManager1"

    const-string v1, "unknown camera_facing: "

    .line 21
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 22
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 23
    iget p1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_0
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object p1

    .line 27
    :cond_1
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "failed to get facing"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 37
    :goto_0
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_UNKNOWN:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object p1
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 15
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method
