.class Lnet/sourceforge/opencamera/ui/MainUI$8;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$8;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$8;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3081
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$8;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3082
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    return-void
.end method
