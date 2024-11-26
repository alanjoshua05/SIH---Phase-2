.class Lnet/sourceforge/opencamera/MyPreferenceFragment$6;
.super Ljava/lang/Object;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyPreferenceFragment;->clickedPrivacyPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

.field final synthetic val$alert:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$6;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$6;->val$alert:Landroid/app/AlertDialog;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$6;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 804
    invoke-static {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->access$200(Lnet/sourceforge/opencamera/MyPreferenceFragment;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$6;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
