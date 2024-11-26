.class Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SizeSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x50859b8c202423c4L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 158
    check-cast p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    check-cast p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;->compare(Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;)I
    .locals 1

    .line 163
    iget v0, p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget p2, p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v0, v0, p2

    iget p2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int p2, p2, p1

    sub-int/2addr v0, p2

    return v0
.end method
