.class synthetic Lnet/sourceforge/opencamera/ui/MainUI$9;
.super Ljava/lang/Object;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/MainUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$ui$MainUI$UIPlacement:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2683
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->values()[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$ui$MainUI$UIPlacement:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$ui$MainUI$UIPlacement:[I

    sget-object v3, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1122
    :catch_1
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    :try_start_2
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_EXTERNAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
