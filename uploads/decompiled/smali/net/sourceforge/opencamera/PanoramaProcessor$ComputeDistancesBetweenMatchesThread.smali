.class Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;
.super Ljava/lang/Thread;
.source "PanoramaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/PanoramaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeDistancesBetweenMatchesThread"
.end annotation


# instance fields
.field private final bitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final feature_descriptor_radius:I

.field private final matches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;",
            ">;"
        }
    .end annotation
.end field

.field private final nd_indx:I

.field private final pixels0:[I

.field private final pixels1:[I

.field private final st_indx:I


# direct methods
.method constructor <init>(Ljava/util/List;IIILjava/util/List;[I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;",
            ">;III",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;[I[I)V"
        }
    .end annotation

    const-string v0, "ComputeDistancesBetweenMatchesThread"

    .line 1467
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->matches:Ljava/util/List;

    iput p2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->st_indx:I

    iput p3, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->nd_indx:I

    iput p4, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->feature_descriptor_radius:I

    iput-object p5, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->bitmaps:Ljava/util/List;

    iput-object p6, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->pixels0:[I

    iput-object p7, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->pixels1:[I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->matches:Ljava/util/List;

    iget v1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->st_indx:I

    iget v2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->nd_indx:I

    iget v3, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->feature_descriptor_radius:I

    iget-object v4, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->bitmaps:Ljava/util/List;

    iget-object v5, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->pixels0:[I

    iget-object v6, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->pixels1:[I

    .line 1478
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/PanoramaProcessor;->access$700(Ljava/util/List;IIILjava/util/List;[I[I)V

    return-void
.end method
