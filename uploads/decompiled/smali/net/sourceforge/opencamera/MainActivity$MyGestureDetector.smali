.class Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5322
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/MainActivity$1;)V
    .locals 0

    .line 5322
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5354
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1600(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ToastBoxer;

    move-result-object v0

    const v1, 0x7f100342

    invoke-virtual {p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5328
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5330
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 5332
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    .line 5337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 5338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    mul-float v2, v2, v2

    mul-float p1, p1, p1

    add-float/2addr v2, p1

    mul-float p3, p3, p3

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    mul-int v1, v1, v1

    int-to-float p1, v1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_0

    mul-int v0, v0, v0

    int-to-float p1, v0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5342
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {p2}, Lnet/sourceforge/opencamera/MainActivity;->access$1600(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ToastBoxer;

    move-result-object p2

    const p3, 0x7f100365

    invoke-virtual {p1, p2, p3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyGestureDetector;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5343
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->unlockScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5347
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
