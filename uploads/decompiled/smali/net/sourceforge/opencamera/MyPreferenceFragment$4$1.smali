.class Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;
.super Ljava/lang/Object;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/MyPreferenceFragment$4;

.field final synthetic val$about_string:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyPreferenceFragment$4;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;->this$1:Lnet/sourceforge/opencamera/MyPreferenceFragment$4;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;->val$about_string:Ljava/lang/StringBuilder;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;->this$1:Lnet/sourceforge/opencamera/MyPreferenceFragment$4;

    .line 715
    iget-object p1, p1, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string p2, "OpenCamera About"

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$1;->val$about_string:Ljava/lang/StringBuilder;

    .line 716
    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 717
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
