.class Lnet/sourceforge/opencamera/ImageSaver$2;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ImageSaver;->addRequest(Lnet/sourceforge/opencamera/ImageSaver$Request;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ImageSaver;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ImageSaver;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver$2;->this$0:Lnet/sourceforge/opencamera/ImageSaver;

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver$2;->this$0:Lnet/sourceforge/opencamera/ImageSaver;

    .line 967
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver;->access$000(Lnet/sourceforge/opencamera/ImageSaver;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->imageQueueChanged()V

    return-void
.end method
