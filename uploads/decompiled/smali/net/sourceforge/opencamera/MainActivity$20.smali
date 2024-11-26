.class Lnet/sourceforge/opencamera/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->setBrightnessToMinimumIfWanted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$layout:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$20;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$20;->val$layout:Landroid/view/WindowManager$LayoutParams;

    .line 3911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$20;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3913
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$20;->val$layout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
