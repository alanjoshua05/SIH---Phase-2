.class Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/HDRProcessor;->autoAlignment([I[I[Landroid/renderscript/Allocation;IILjava/util/List;IZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;ZIZIIIJ)Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapInfo"
.end annotation


# instance fields
.field final allocation:Landroid/renderscript/Allocation;

.field final bitmap:Landroid/graphics/Bitmap;

.field final index:I

.field final luminanceInfo:Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

.field final synthetic this$0:Lnet/sourceforge/opencamera/HDRProcessor;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/HDRProcessor;Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation;I)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->this$0:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->luminanceInfo:Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    iput-object p3, p0, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->allocation:Landroid/renderscript/Allocation;

    iput p5, p0, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->index:I

    return-void
.end method
