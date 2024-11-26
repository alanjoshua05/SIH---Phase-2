.class Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;
.super Ljava/lang/Object;
.source "JavaImageProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedBitmap"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final cache_pixels_b:[B

.field private final cache_pixels_i:[I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->bitmap:Landroid/graphics/Bitmap;

    mul-int p2, p2, p3

    .line 91
    new-array p1, p2, [I

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->cache_pixels_i:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->cache_pixels_b:[B

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)[I
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->cache_pixels_i:[I

    return-object p0
.end method


# virtual methods
.method getCachedPixelsB()[B
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->cache_pixels_b:[B

    return-object v0
.end method

.method getCachedPixelsI()[I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->cache_pixels_i:[I

    return-object v0
.end method
