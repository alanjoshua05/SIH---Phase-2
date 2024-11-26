.class Lnet/sourceforge/opencamera/ui/PopupView$7;
.super Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;
.source "PopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final update_runnable:Ljava/lang/Runnable;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$picture_sizes:Ljava/util/List;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$picture_sizes:Ljava/util/List;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 p1, 0x0

    .line 405
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    .line 406
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->handler:Landroid/os/Handler;

    .line 407
    new-instance p1, Lnet/sourceforge/opencamera/ui/PopupView$7$1;

    invoke-direct {p1, p0}, Lnet/sourceforge/opencamera/ui/PopupView$7$1;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$7;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->update_runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private update()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 417
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$picture_sizes:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 419
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 421
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 423
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/PreferenceKeys;->getResolutionPreferenceKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 429
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x320

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x190

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->update_runnable:Ljava/lang/Runnable;

    .line 430
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->update_runnable:Ljava/lang/Runnable;

    .line 431
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onClickNext()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 446
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->val$picture_sizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 447
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$308(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 448
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$7;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 449
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onClickPrev()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 436
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 437
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$310(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 438
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$7;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$7;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 439
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method
