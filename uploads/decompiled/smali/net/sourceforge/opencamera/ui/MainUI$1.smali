.class Lnet/sourceforge/opencamera/ui/MainUI$1;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;

.field final synthetic val$display_height:I

.field final synthetic val$ui_rotation:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;IILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    iput p2, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$ui_rotation:I

    iput p3, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$display_height:I

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$view:Landroid/view/View;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    iget v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$ui_rotation:I

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$display_height:I

    .line 918
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$000(Lnet/sourceforge/opencamera/ui/MainUI;II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$view:Landroid/view/View;

    .line 922
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$1;->val$view:Landroid/view/View;

    .line 925
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
