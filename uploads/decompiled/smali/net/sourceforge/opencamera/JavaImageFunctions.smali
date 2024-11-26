.class public Lnet/sourceforge/opencamera/JavaImageFunctions;
.super Ljava/lang/Object;
.source "JavaImageFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ConvertToGreyscaleFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;,
        Lnet/sourceforge/opencamera/JavaImageFunctions$CreateMTBApplyFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JavaImageFunctions"

.field private static final pyramid_blending_weights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions;->pyramid_blending_weights:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3e800000    # 0.25f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()[F
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions;->pyramid_blending_weights:[F

    return-object v0
.end method
