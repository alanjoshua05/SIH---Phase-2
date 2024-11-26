.class Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;
.super Ljava/lang/Object;
.source "JavaImageFunctions.java"

# interfaces
.implements Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandBitmapFullFunction"
.end annotation


# instance fields
.field private final bitmap_in:[B

.field private final bitmap_out:[B

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>([B[BII)V
    .locals 0

    .line 4323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->bitmap_in:[B

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->bitmap_out:[B

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->width:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 7

    move p1, p4

    :goto_0
    add-int p2, p4, p6

    if-ge p1, p2, :cond_1

    iget p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->width:I

    mul-int p2, p2, p1

    add-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x4

    .line 4339
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 4340
    div-int/lit8 v0, p1, 0x2

    .line 4357
    div-int/lit8 v1, p3, 0x2

    :goto_1
    add-int v2, p3, p5

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->width:I

    .line 4358
    div-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->bitmap_out:[B

    add-int/lit8 v4, p2, 0x1

    iget-object v5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;->bitmap_in:[B

    add-int/lit8 v6, v2, 0x1

    .line 4360
    aget-byte v6, v5, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v6, v2, 0x2

    .line 4361
    aget-byte v6, v5, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v2, v2, 0x3

    .line 4362
    aget-byte v2, v5, v2

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x8

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4391
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 4385
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
