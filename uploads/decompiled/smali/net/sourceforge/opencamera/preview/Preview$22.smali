.class Lnet/sourceforge/opencamera/preview/Preview$22;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$clear_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$offset_y_dp:I

.field final synthetic val$use_fake_toast:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;ZLjava/lang/String;ILnet/sourceforge/opencamera/ToastBoxer;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$use_fake_toast:Z

    iput-object p3, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$message:Ljava/lang/String;

    iput p4, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$offset_y_dp:I

    iput-object p5, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$clear_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    iput-object p6, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$activity:Landroid/app/Activity;

    .line 7897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7899
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5400(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$use_fake_toast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7906
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5500(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$offset_y_dp:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7909
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$use_fake_toast:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7914
    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7918
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7919
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7920
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7923
    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 7925
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c003d

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const v7, 0x7f0900ec

    .line 7926
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lnet/sourceforge/opencamera/preview/Preview;->access$5302(Lnet/sourceforge/opencamera/preview/Preview;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7927
    invoke-static {v5}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v7, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7928
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7929
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020002

    .line 7932
    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7933
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$5300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7938
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5600(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 7940
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5600(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$22$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$22$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview$22;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7968
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$clear_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    if-eqz v2, :cond_3

    .line 7984
    iget-object v2, v2, Lnet/sourceforge/opencamera/ToastBoxer;->toast:Landroid/widget/Toast;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$clear_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 7987
    iget-object v2, v2, Lnet/sourceforge/opencamera/ToastBoxer;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_3
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$message:Ljava/lang/String;

    .line 7990
    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->val$clear_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    if-eqz v3, :cond_4

    .line 7994
    iput-object v2, v3, Lnet/sourceforge/opencamera/ToastBoxer;->toast:Landroid/widget/Toast;

    :cond_4
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 8003
    invoke-static {v3, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$5802(Lnet/sourceforge/opencamera/preview/Preview;J)J

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 8006
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8011
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 8013
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/preview/Preview;->access$5902(Lnet/sourceforge/opencamera/preview/Preview;Landroid/widget/Toast;)Landroid/widget/Toast;

    return-void
.end method
