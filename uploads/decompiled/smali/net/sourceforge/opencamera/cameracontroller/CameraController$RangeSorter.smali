.class Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;
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
    name = "RangeSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x50859b8c20244ad4L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 146
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 2

    const/4 v0, 0x0

    .line 150
    aget v1, p1, v0

    aget v0, p2, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    sub-int/2addr v1, v0

    return v1
.end method
