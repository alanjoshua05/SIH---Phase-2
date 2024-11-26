.class Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;
.super Landroidx/activity/OnBackPressedCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenLockOnBackPressedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3511
    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3519
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1500(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3520
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$1600(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ToastBoxer;

    move-result-object v1

    const v2, 0x7f100342

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3526
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->setEnabled(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$ScreenLockOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3527
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
