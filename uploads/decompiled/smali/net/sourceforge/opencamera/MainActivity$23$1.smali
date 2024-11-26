.class Lnet/sourceforge/opencamera/MainActivity$23$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/MainActivity$23;

.field final synthetic val$galleryButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity$23;Landroid/widget/ImageButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$23$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$23;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$23$1;->val$galleryButton:Landroid/widget/ImageButton;

    .line 4474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$23$1;->val$galleryButton:Landroid/widget/ImageButton;

    .line 4477
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
