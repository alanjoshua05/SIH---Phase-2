.class Lnet/sourceforge/opencamera/ui/MainUI$7;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;

.field final synthetic val$info_preference_key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$7;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI$7;->val$info_preference_key:Ljava/lang/String;

    .line 3059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$7;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 3064
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3065
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI$7;->val$info_preference_key:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3066
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3067
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
