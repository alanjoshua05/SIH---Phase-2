.class Lnet/sourceforge/opencamera/MyPreferenceFragment$5;
.super Ljava/lang/Object;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$5;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$5;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 793
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 794
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->launchOnlinePrivacyPolicy()V

    return-void
.end method
