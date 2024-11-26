.class Lnet/sourceforge/opencamera/ui/MainUI$2;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$2;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$2;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1229
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    return-void
.end method
