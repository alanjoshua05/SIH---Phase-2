.class Lnet/sourceforge/opencamera/preview/Preview$23;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->recycleBitmapForPreviewTask(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Landroid/graphics/Bitmap;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$23;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$23;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/sourceforge/opencamera/preview/Preview$23;->val$handler:Landroid/os/Handler;

    .line 8095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$23;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 8098
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->refreshPreviewBitmapTaskIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$23;->val$bitmap:Landroid/graphics/Bitmap;

    .line 8101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$23;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    .line 8106
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
