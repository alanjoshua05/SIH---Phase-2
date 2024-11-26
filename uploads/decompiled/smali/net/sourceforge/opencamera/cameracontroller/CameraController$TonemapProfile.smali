.class public final enum Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TonemapProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_JTLOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_JTLOG2:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_JTVIDEO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_REC709:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

.field public static final enum TONEMAPPROFILE_SRGB:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_REC709:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_SRGB:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTVIDEO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG2:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 525
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 526
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_REC709"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_REC709:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 527
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_SRGB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_SRGB:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 528
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_LOG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 529
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_GAMMA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 530
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_JTVIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTVIDEO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 531
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_JTLOG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 532
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    const-string v1, "TONEMAPPROFILE_JTLOG2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG2:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 524
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->$values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->$VALUES:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 524
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 524
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->$VALUES:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    .line 524
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0
.end method
