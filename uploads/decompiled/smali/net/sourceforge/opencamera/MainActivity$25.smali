.class Lnet/sourceforge/opencamera/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->createSaveFolderDialog()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$25;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$25;->val$editText:Landroid/widget/EditText;

    .line 4991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$25;->val$editText:Landroid/widget/EditText;

    .line 4997
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4998
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->processUserSaveLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$25;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5000
    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/MainActivity;->updateSaveFolder(Ljava/lang/String;)V

    return-void
.end method
