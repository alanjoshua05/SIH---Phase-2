.class Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;
.super Ljava/lang/Object;
.source "JavaImageFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RGBf_luminance"
.end annotation


# instance fields
.field fb:F

.field fg:F

.field fr:F

.field lum:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/JavaImageFunctions$1;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;-><init>()V

    return-void
.end method


# virtual methods
.method setRGB(FFF)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->fr:F

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->fg:F

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->fb:F

    .line 591
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    return-void
.end method

.method setRGB([FIII)V
    .locals 0

    mul-int p3, p3, p4

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    .line 596
    aget p2, p1, p3

    add-int/lit8 p4, p3, 0x1

    aget p4, p1, p4

    add-int/lit8 p3, p3, 0x2

    aget p1, p1, p3

    invoke-virtual {p0, p2, p4, p1}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->setRGB(FFF)V

    return-void
.end method
