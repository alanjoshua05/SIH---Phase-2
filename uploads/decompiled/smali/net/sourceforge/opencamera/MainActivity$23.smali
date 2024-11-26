.class Lnet/sourceforge/opencamera/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$started:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/MainActivity$23;->val$started:Z

    .line 4462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09007c

    .line 4464
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->val$started:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4467
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/16 v2, 0xc8

    const/16 v3, 0xff

    .line 4468
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v4, 0x3f

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->access$2702(Lnet/sourceforge/opencamera/MainActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4469
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4470
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4471
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4472
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4474
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/MainActivity$23$1;

    invoke-direct {v2, p0, v0}, Lnet/sourceforge/opencamera/MainActivity$23$1;-><init>(Lnet/sourceforge/opencamera/MainActivity$23;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4480
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4483
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$23;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4484
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2700(Lnet/sourceforge/opencamera/MainActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 4486
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
