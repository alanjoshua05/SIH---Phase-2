.class Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrightnessDetails"
.end annotation


# instance fields
.field final median_brightness:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;->median_brightness:I

    return-void
.end method
