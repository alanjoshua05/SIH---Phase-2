.class public Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final score:I

.field public final temp:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ILandroid/graphics/Rect;)V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->temp:Landroid/graphics/Rect;

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->score:I

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->rect:Landroid/graphics/Rect;

    return-void
.end method
