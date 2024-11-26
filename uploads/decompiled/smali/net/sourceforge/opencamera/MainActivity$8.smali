.class Lnet/sourceforge/opencamera/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$8;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$8;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 712
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$8;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    new-instance v3, Lnet/sourceforge/opencamera/MainActivity$8$1;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/MainActivity$8$1;-><init>(Lnet/sourceforge/opencamera/MainActivity$8;)V

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->access$602(Lnet/sourceforge/opencamera/MainActivity;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    return-void
.end method
