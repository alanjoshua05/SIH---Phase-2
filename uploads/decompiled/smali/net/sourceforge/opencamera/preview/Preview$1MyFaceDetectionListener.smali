.class Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->setupCameraParameters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFaceDetectionListener"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private last_face_location:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field private last_n_faces:I

.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2454
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->handler:Landroid/os/Handler;

    const/4 p1, -0x1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->last_n_faces:I

    .line 2456
    sget-object p1, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNSET:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->last_face_location:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    return-void
.end method

.method static synthetic access$2600(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V
    .locals 0

    .line 2453
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->reportFaces([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V

    return-void
.end method

.method private reportFaces([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_14

    .line 2502
    array-length v2, v1

    .line 2503
    sget-object v3, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNKNOWN:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const/4 v4, 0x1

    if-lez v2, :cond_a

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2509
    invoke-static {v5}, Lnet/sourceforge/opencamera/preview/Preview;->access$2700(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 2510
    array-length v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    const v12, 0x3f266666    # 0.65f

    const v13, 0x3eb33333    # 0.35f

    if-ge v10, v6, :cond_2

    aget-object v14, v1, v10

    iget-object v15, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2514
    invoke-static {v15}, Lnet/sourceforge/opencamera/preview/Preview;->access$2800(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/RectF;

    move-result-object v15

    iget-object v14, v14, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v14, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2515
    invoke-static {v14}, Lnet/sourceforge/opencamera/preview/Preview;->access$2800(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v14, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2516
    invoke-static {v14}, Lnet/sourceforge/opencamera/preview/Preview;->access$2800(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    iget-object v15, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2517
    invoke-static {v15}, Lnet/sourceforge/opencamera/preview/Preview;->access$2800(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    iget-object v7, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2519
    invoke-static {v7}, Lnet/sourceforge/opencamera/preview/Preview;->access$2900(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    move-result-object v7

    invoke-interface {v7}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v14, v7

    iget-object v7, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2520
    invoke-static {v7}, Lnet/sourceforge/opencamera/preview/Preview;->access$2900(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    move-result-object v7

    invoke-interface {v7}, Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v15, v7

    if-eqz v11, :cond_1

    cmpg-float v7, v14, v13

    if-ltz v7, :cond_0

    cmpl-float v7, v14, v12

    if-gtz v7, :cond_0

    cmpg-float v7, v15, v13

    if-ltz v7, :cond_0

    cmpl-float v7, v15, v12

    if-lez v7, :cond_1

    :cond_0
    const/4 v11, 0x0

    :cond_1
    add-float/2addr v8, v14

    add-float/2addr v9, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    int-to-float v1, v2

    div-float/2addr v8, v1

    div-float/2addr v9, v1

    if-eqz v11, :cond_3

    .line 2536
    sget-object v3, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_CENTRE:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2539
    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$3000(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v1

    const/16 v5, 0x5a

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v1, v5, :cond_6

    const/16 v5, 0xb4

    if-eq v1, v5, :cond_5

    const/16 v5, 0x10e

    if-eq v1, v5, :cond_4

    move v1, v9

    goto :goto_1

    :cond_4
    sub-float/2addr v6, v9

    move v1, v8

    move v8, v6

    goto :goto_1

    :cond_5
    sub-float v8, v6, v8

    sub-float v1, v6, v9

    goto :goto_1

    :cond_6
    sub-float v8, v6, v8

    move v1, v8

    move v8, v9

    :goto_1
    cmpg-float v5, v8, v13

    if-gez v5, :cond_7

    .line 2565
    sget-object v3, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_LEFT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    goto :goto_2

    :cond_7
    cmpl-float v5, v8, v12

    if-lez v5, :cond_8

    .line 2567
    sget-object v3, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_RIGHT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    goto :goto_2

    :cond_8
    cmpg-float v5, v1, v13

    if-gez v5, :cond_9

    .line 2569
    sget-object v3, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_TOP:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    goto :goto_2

    :cond_9
    cmpl-float v1, v1, v12

    if-lez v1, :cond_a

    .line 2571
    sget-object v3, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_BOTTOM:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    :cond_a
    :goto_2
    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->last_n_faces:I

    if-ne v2, v1, :cond_b

    iget-object v5, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->last_face_location:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    if-eq v3, v5, :cond_14

    :cond_b
    if-nez v2, :cond_c

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    goto/16 :goto_5

    .line 2580
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v6}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-ne v2, v4, :cond_d

    const v7, 0x7f100086

    goto :goto_3

    :cond_d
    const v7, 0x7f10008b

    :goto_3
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez v2, :cond_13

    .line 2581
    sget-object v6, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNKNOWN:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    if-eq v3, v6, :cond_13

    .line 2582
    sget-object v6, Lnet/sourceforge/opencamera/preview/Preview$24;->$SwitchMap$net$sourceforge$opencamera$preview$Preview$FaceLocation:[I

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_12

    const/4 v4, 0x2

    if-eq v6, v4, :cond_11

    const/4 v4, 0x3

    if-eq v6, v4, :cond_10

    const/4 v4, 0x4

    if-eq v6, v4, :cond_f

    const/4 v4, 0x5

    if-eq v6, v4, :cond_e

    goto/16 :goto_4

    .line 2596
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f10003c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 2593
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f100360

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2590
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f100329

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2587
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000bb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2584
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f100048

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_13
    :goto_4
    iget-object v4, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    .line 2605
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->handler:Landroid/os/Handler;

    .line 2606
    new-instance v5, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;

    invoke-direct {v5, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    iput v2, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->last_n_faces:I

    iput-object v3, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->last_face_location:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    :cond_14
    return-void
.end method


# virtual methods
.method public onFaceDetection([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2464
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2466
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2467
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2480
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2481
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
