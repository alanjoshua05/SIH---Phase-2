.class Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;
.super Ljava/lang/Object;
.source "PanoramaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/PanoramaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaplacianPyramid"
.end annotation


# instance fields
.field private final diffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field private final heights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private top_level:Landroid/graphics/Bitmap;

.field private final widths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->diffs:Ljava/util/List;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->widths:Ljava/util/List;

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->heights:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;
    .locals 0

    .line 581
    iget-object p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->top_level:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;
    .locals 0

    .line 581
    iget-object p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->diffs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;
    .locals 0

    .line 581
    iget-object p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->heights:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;
    .locals 0

    .line 581
    iget-object p0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->widths:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addDiff([FII)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->diffs:Ljava/util/List;

    .line 594
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->widths:Ljava/util/List;

    .line 595
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->heights:Ljava/util/List;

    .line 596
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setTopLevel(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->top_level:Landroid/graphics/Bitmap;

    return-void
.end method
