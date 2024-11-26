.class Lnet/sourceforge/opencamera/ui/PopupView$13$1;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/PopupView$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/ui/PopupView$13;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView$13;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$13$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$13;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$13$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$13;

    .line 808
    iget-object v0, v0, Lnet/sourceforge/opencamera/ui/PopupView$13;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v3, v2}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;ZZ)V

    return-void
.end method
