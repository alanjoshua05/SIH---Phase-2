.class public Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;
.super Ljava/lang/Object;
.source "VideoQualityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/VideoQualityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimension2D"
.end annotation


# instance fields
.field final height:I

.field final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;->width:I

    iput p2, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;->height:I

    return-void
.end method
