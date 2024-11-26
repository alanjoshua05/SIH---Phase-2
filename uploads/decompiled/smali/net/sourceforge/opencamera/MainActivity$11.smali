.class Lnet/sourceforge/opencamera/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->clickedTextStamp(Landroid/view/View;)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$11;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$11;->val$editText:Landroid/widget/EditText;

    .line 2093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$11;->val$editText:Landroid/widget/EditText;

    .line 2099
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$11;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2100
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 2101
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "preference_textstamp"

    .line 2102
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2103
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$11;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2105
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateTextStampIcon()V

    return-void
.end method
