.class synthetic Lnet/sourceforge/opencamera/MainActivity$40;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$sourceforge$opencamera$MainActivity$SystemOrientation:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6121
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_REC709:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_SRGB:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    sget-object v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    sget-object v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTVIDEO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    sget-object v7, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$TonemapProfile:[I

    sget-object v8, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG2:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 6007
    :catch_6
    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->values()[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    :try_start_7
    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v7

    aput v4, v3, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 3654
    :catch_13
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->values()[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MainActivity$SystemOrientation:[I

    :try_start_14
    sget-object v4, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MainActivity$SystemOrientation:[I

    sget-object v4, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MainActivity$SystemOrientation:[I

    sget-object v4, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 420
    :catch_16
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    :try_start_17
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method
