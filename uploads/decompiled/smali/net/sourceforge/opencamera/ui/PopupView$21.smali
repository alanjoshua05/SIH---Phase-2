.class Lnet/sourceforge/opencamera/ui/PopupView$21;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;->createButtonOptions(Landroid/view/ViewGroup;Landroid/content/Context;ILjava/util/Map;Ljava/util/List;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$final_button_width:I

.field final synthetic val$final_current_view:Landroid/view/View;

.field final synthetic val$scroll:Landroid/widget/HorizontalScrollView;

.field final synthetic val$total_width:I


# direct methods
.method constructor <init>(Landroid/view/View;IILandroid/widget/HorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$final_current_view:Landroid/view/View;

    iput p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$total_width:I

    iput p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$final_button_width:I

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$scroll:Landroid/widget/HorizontalScrollView;

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$final_current_view:Landroid/view/View;

    .line 1518
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$total_width:I

    iget v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$final_button_width:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    .line 1520
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$21;->val$scroll:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    .line 1522
    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method
