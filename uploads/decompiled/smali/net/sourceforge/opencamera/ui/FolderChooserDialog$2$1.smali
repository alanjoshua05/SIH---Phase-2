.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$1;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$1;->this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$1;->this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;

    .line 156
    iget-object p1, p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$400(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$1;->this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;

    .line 157
    iget-object p1, p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$300(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
