.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    .line 121
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->getFile()Ljava/io/File;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 125
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$000(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 127
    invoke-static {p2}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$100(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$202(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 129
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$300(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
