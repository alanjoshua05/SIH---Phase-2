.class Lnet/sourceforge/opencamera/ui/DrawPreview$1;
.super Ljava/lang/Object;
.source "DrawPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/DrawPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/DrawPreview;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/ui/DrawPreview$1;ZF)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->onPostExecute(ZF)V

    return-void
.end method

.method private onPostExecute(ZF)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 197
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$200(Lnet/sourceforge/opencamera/ui/DrawPreview;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$200(Lnet/sourceforge/opencamera/ui/DrawPreview;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 200
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$202(Lnet/sourceforge/opencamera/ui/DrawPreview;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 209
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$300(Lnet/sourceforge/opencamera/ui/DrawPreview;)F

    move-result p1

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 210
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$302(Lnet/sourceforge/opencamera/ui/DrawPreview;F)F

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$500()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$300(Lnet/sourceforge/opencamera/ui/DrawPreview;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$600(Lnet/sourceforge/opencamera/ui/DrawPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$402(Lnet/sourceforge/opencamera/ui/DrawPreview;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 214
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$202(Lnet/sourceforge/opencamera/ui/DrawPreview;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->this$0:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 172
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->access$000(Lnet/sourceforge/opencamera/ui/DrawPreview;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->freeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    long-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->handler:Landroid/os/Handler;

    .line 175
    new-instance v2, Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;

    invoke-direct {v2, p0, v0}, Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;-><init>(Lnet/sourceforge/opencamera/ui/DrawPreview$1;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->handler:Landroid/os/Handler;

    .line 183
    new-instance v1, Lnet/sourceforge/opencamera/ui/DrawPreview$1$2;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/ui/DrawPreview$1$2;-><init>(Lnet/sourceforge/opencamera/ui/DrawPreview$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
