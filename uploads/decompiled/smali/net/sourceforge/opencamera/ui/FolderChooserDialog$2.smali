.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 149
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$100(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 150
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$300(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 151
    new-instance v0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$1;-><init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 162
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$500(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 163
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$300(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 164
    new-instance v0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$2;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$2;-><init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
