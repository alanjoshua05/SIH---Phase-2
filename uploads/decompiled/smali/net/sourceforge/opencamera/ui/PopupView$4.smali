.class Lnet/sourceforge/opencamera/ui/PopupView$4;
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

.field final synthetic val$photo_mode_values:Ljava/util/List;

.field final synthetic val$photo_modes:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$4;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$4;->val$photo_modes:Ljava/util/List;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$4;->val$photo_mode_values:Ljava/util/List;

    .line 277
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$4;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$4;->val$photo_modes:Ljava/util/List;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$4;->val$photo_mode_values:Ljava/util/List;

    .line 283
    invoke-static {v0, v1, v2, p1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$000(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
