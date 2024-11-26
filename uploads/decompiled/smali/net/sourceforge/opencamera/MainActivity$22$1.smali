.class Lnet/sourceforge/opencamera/MainActivity$22$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/MainActivity$22;

.field final synthetic val$thumbnail_f:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity$22;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$22$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$22;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$22$1;->val$thumbnail_f:Landroid/graphics/Bitmap;

    .line 4405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$22;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$22$1;->val$thumbnail_f:Landroid/graphics/Bitmap;

    .line 4408
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MainActivity$22;->access$2400(Lnet/sourceforge/opencamera/MainActivity$22;Landroid/graphics/Bitmap;)V

    return-void
.end method
