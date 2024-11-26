.class Lnet/sourceforge/opencamera/ui/PopupView$2;
.super Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;
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
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$2;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$2;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$2;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 175
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$2;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 180
    invoke-virtual {v0, p1, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->updateFocus(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$2;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 181
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    return-void
.end method
