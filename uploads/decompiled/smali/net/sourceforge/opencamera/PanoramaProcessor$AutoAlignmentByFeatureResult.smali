.class Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;
.super Ljava/lang/Object;
.source "PanoramaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/PanoramaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoAlignmentByFeatureResult"
.end annotation


# instance fields
.field final offset_x:I

.field final offset_y:I

.field final rotation:F

.field final y_scale:F


# direct methods
.method constructor <init>(IIFF)V
    .locals 0

    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->offset_x:I

    iput p2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->offset_y:I

    iput p3, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->rotation:F

    iput p4, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->y_scale:F

    return-void
.end method
