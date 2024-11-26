.class Lnet/sourceforge/opencamera/MyApplicationInterface$3;
.super Ljava/lang/Object;
.source "MyApplicationInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;->trashLastImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyApplicationInterface;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$3;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$3;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 3787
    invoke-static {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon()V

    return-void
.end method
