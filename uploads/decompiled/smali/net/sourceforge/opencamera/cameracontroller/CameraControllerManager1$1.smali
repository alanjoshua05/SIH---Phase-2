.class synthetic Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1$1;
.super Ljava/lang/Object;
.source "CameraControllerManager1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1$1;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    :try_start_0
    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager1$1;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
