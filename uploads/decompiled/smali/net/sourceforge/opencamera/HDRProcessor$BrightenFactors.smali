.class public Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightenFactors"
.end annotation


# instance fields
.field public final gain:F

.field public final gamma:F

.field public final low_x:F

.field public final mid_x:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 3299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gain:F

    iput p2, p0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->low_x:F

    iput p3, p0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->mid_x:F

    iput p4, p0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gamma:F

    return-void
.end method
