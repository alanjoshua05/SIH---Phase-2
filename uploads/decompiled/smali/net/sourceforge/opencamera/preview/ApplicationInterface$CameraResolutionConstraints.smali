.class public Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;
.super Ljava/lang/Object;
.source "ApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/ApplicationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraResolutionConstraints"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraResConstraints"


# instance fields
.field public has_max_mp:Z

.field public max_mp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasConstraints()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->has_max_mp:Z

    return v0
.end method

.method satisfies(Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->has_max_mp:Z

    if-eqz v0, :cond_0

    .line 81
    iget v0, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v0, v0, p1

    iget p1, p0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->max_mp:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
