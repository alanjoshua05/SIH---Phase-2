.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;
.super Ljava/lang/Object;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestTagObject"
.end annotation


# instance fields
.field private type:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->type:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;)V

    return-void
.end method

.method static synthetic access$13200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;
    .locals 0

    .line 333
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->getType()Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->setType(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;)V

    return-void
.end method

.method private getType()Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->type:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    return-object v0
.end method

.method private setType(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->type:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    return-void
.end method
