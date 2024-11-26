.class Lnet/sourceforge/opencamera/HDRProcessor$1;
.super Ljava/lang/Object;
.source "HDRProcessor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/HDRProcessor;->autoAlignment([I[I[Landroid/renderscript/Allocation;IILjava/util/List;IZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;ZIZIIIJ)Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/HDRProcessor;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/HDRProcessor;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$1;->this$0:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2097
    check-cast p1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    check-cast p2, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/HDRProcessor$1;->compare(Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;)I
    .locals 0

    .line 2102
    iget-object p1, p1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->luminanceInfo:Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    iget-object p2, p2, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->luminanceInfo:Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->compareTo(Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;)I

    move-result p1

    return p1
.end method
