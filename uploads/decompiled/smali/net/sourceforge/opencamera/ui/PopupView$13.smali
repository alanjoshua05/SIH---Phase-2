.class Lnet/sourceforge/opencamera/ui/PopupView$13;
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

.field private old_video_capture_rate_index:I

.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final update_runnable:Ljava/lang/Runnable;

.field final synthetic val$capture_rate_str:Ljava/util/List;

.field final synthetic val$capture_rate_values:Ljava/util/List;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$capture_rate_values:Ljava/util/List;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    iput-object p5, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$capture_rate_str:Ljava/util/List;

    const/4 p2, 0x0

    .line 799
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    .line 800
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->old_video_capture_rate_index:I

    .line 802
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->handler:Landroid/os/Handler;

    .line 803
    new-instance p1, Lnet/sourceforge/opencamera/ui/PopupView$13$1;

    invoke-direct {p1, p0}, Lnet/sourceforge/opencamera/ui/PopupView$13$1;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$13;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->update_runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private update()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 813
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$capture_rate_values:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 815
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 816
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 817
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 818
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoCaptureRatePreferenceKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 819
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$capture_rate_values:Ljava/util/List;

    iget v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->old_video_capture_rate_index:I

    .line 821
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x3f7fff58    # 0.99999f

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10034a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1002c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$capture_rate_str:Ljava/util/List;

    iget-object v5, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v5}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 834
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100349

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 845
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v2

    iput v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->old_video_capture_rate_index:I

    if-eqz v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->update_runnable:Ljava/lang/Runnable;

    .line 849
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->update_runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    .line 850
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 853
    invoke-virtual {v2, v3, v0, v1, v4}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;ZZ)V

    :goto_4
    return-void
.end method


# virtual methods
.method public onClickNext()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 867
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$capture_rate_values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 868
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$608(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 869
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$13;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 870
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onClickPrev()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 858
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 859
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$610(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 860
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$13;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 861
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method
