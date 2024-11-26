.class Lnet/sourceforge/opencamera/MyApplicationInterface$2;
.super Ljava/lang/Object;
.source "MyApplicationInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;->stoppedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

.field final synthetic val$thumbnail_f:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyApplicationInterface;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$2;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$2;->val$thumbnail_f:Landroid/graphics/Bitmap;

    .line 2480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$2;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$2;->val$thumbnail_f:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 2482
    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
