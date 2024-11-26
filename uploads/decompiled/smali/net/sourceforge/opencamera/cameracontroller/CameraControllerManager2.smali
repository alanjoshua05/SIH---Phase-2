.class public Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;
.super Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;
.source "CameraControllerManager2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CControllerManager2"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->context:Landroid/content/Context;

    return-void
.end method

.method static computeViewAngles(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;
    .locals 9

    .line 120
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 121
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {p0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/util/SizeF;

    move-result-object v1

    .line 122
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    invoke-static {p0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object v2

    .line 123
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {p0, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    .line 124
    array-length v3, p0

    if-nez v3, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/Size;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 137
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/SizeF;)F

    move-result v2

    mul-float v2, v2, v3

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v5, p0, v4

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double v2, v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 138
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/util/SizeF;)F

    move-result v1

    mul-float v1, v1, v0

    float-to-double v0, v1

    aget p0, p0, v4

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 145
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, v2, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0

    .line 131
    :cond_1
    :goto_0
    new-instance p0, Landroid/util/SizeF;

    const/high16 v0, 0x425c0000    # 55.0f

    const/high16 v1, 0x422c0000    # 43.0f

    invoke-direct {p0, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object p0
.end method

.method static isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 3

    .line 154
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-gt p1, p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public allowCamera2Support(I)Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->context:Landroid/content/Context;

    const-string v1, "camera"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    :try_start_0
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object p1, v2, p1

    .line 201
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 203
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public getDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "camera"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object p2, v2, p2

    .line 81
    invoke-static {v0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    .line 83
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "CControllerManager2"

    const-string p2, "unknown camera type"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 98
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->computeViewAngles(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;

    move-result-object p2

    .line 99
    invoke-static {p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/SizeF;)F

    move-result p2

    const/high16 v0, 0x42b50000    # 90.5f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100362

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    .locals 3

    const-string v0, "unknown camera_facing: "

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->context:Landroid/content/Context;

    const-string v2, "camera"

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    .line 51
    :try_start_0
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object p1, v2, p1

    .line 52
    invoke-static {v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 53
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "CControllerManager2"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_EXTERNAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object p1

    .line 57
    :cond_1
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object p1

    .line 55
    :cond_2
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :goto_0
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_UNKNOWN:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    return-object p1
.end method

.method public getNumberOfCameras()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager2;->context:Landroid/content/Context;

    const-string v1, "camera"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
