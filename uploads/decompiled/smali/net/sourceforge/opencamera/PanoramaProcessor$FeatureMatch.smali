.class Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;
.super Ljava/lang/Object;
.source "PanoramaProcessor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/PanoramaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private distance:F

.field private final index0:I

.field private final index1:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->index0:I

    iput p2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->index1:I

    return-void
.end method

.method synthetic constructor <init>(IILnet/sourceforge/opencamera/PanoramaProcessor$1;)V
    .locals 0

    .line 1352
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;-><init>(II)V

    return-void
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I
    .locals 0

    .line 1352
    iget p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->index0:I

    return p0
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I
    .locals 0

    .line 1352
    iget p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->index1:I

    return p0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)F
    .locals 0

    .line 1352
    iget p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->distance:F

    return p0
.end method

.method static synthetic access$602(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;F)F
    .locals 0

    .line 1352
    iput p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->distance:F

    return p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1352
    check-cast p1, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->compareTo(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->distance:F

    .line 1370
    iget p1, p1, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->distance:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1375
    instance-of v0, p1, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->compareTo(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
