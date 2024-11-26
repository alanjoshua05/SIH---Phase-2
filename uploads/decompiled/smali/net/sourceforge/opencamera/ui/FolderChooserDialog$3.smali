.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->newFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

.field final synthetic val$edit_text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->val$edit_text:Landroid/widget/EditText;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->val$edit_text:Landroid/widget/EditText;

    .line 392
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f10008c

    const/4 p2, 0x0

    .line 397
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$800(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->val$edit_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 404
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1000ad

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 409
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$800(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$000(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 414
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    .line 421
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
