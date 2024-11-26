.class public Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field final rect:Landroid/graphics/Rect;

.field final weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;->rect:Landroid/graphics/Rect;

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;->weight:I

    return-void
.end method
