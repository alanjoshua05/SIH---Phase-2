.class Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;
.super Ljava/lang/Object;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$alert:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyPreferenceFragment$4;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;->this$1:Lnet/sourceforge/opencamera/MyPreferenceFragment$4;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;->val$alert:Landroid/app/AlertDialog;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;->this$1:Lnet/sourceforge/opencamera/MyPreferenceFragment$4;

    .line 727
    iget-object p1, p1, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    invoke-static {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->access$200(Lnet/sourceforge/opencamera/MyPreferenceFragment;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$4$2;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
