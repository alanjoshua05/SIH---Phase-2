.class Lnet/sourceforge/opencamera/ui/PopupView$20;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;->createButtonOptions(Landroid/view/ViewGroup;Landroid/content/Context;ILjava/util/Map;Ljava/util/List;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$20;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1341
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$20;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;

    .line 1344
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;->onClick(Ljava/lang/String;)V

    return-void
.end method
