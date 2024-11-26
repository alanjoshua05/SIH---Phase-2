.class Lnet/sourceforge/opencamera/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->audioTrigger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$9;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$9;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    .line 1405
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    return-void
.end method
