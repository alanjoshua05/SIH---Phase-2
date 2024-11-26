.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;
.super Ljava/lang/Object;
.source "PreferenceSubCameraControlsMore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

.field final synthetic val$alert:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;->val$alert:Landroid/app/AlertDialog;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 197
    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->dialogs:Ljava/util/HashSet;

    iget-object v0, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
