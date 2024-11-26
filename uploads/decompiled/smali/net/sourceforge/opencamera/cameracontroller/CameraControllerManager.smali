.class public abstract Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;
.super Ljava/lang/Object;
.source "CameraControllerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDescription(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
.end method

.method public abstract getNumberOfCameras()I
.end method
