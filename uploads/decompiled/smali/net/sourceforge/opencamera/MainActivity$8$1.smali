.class Lnet/sourceforge/opencamera/MainActivity$8$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/MainActivity$8;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity$8;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$8$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$8;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$8$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$8;

    .line 718
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$8;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->access$702(Lnet/sourceforge/opencamera/MainActivity;Z)Z

    :cond_0
    return-void
.end method
