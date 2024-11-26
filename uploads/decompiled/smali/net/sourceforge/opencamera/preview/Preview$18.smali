.class Lnet/sourceforge/opencamera/preview/Preview$18;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->takeRemainingRepeatPhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$18;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$18;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6614
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5000(Lnet/sourceforge/opencamera/preview/Preview;)V

    return-void
.end method
