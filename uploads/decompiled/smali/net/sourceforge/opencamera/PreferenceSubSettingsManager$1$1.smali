.class Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;
.super Ljava/lang/Object;
.source "PreferenceSubSettingsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;Landroid/widget/EditText;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xml"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 85
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->getSettingsManager()Lnet/sourceforge/opencamera/SettingsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/SettingsManager;->saveSettings(Ljava/lang/String;)V

    return-void
.end method
