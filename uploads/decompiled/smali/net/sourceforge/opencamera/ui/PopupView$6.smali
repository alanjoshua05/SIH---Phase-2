.class Lnet/sourceforge/opencamera/ui/PopupView$6;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$6;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$6;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$6;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 369
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->clickedAutoLevel()V

    return-void
.end method
