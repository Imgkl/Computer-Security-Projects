.class public final Lcom/google/zxing/client/android/GenieCaptureActivityHandler;
.super Landroid/os/Handler;
.source "GenieCaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

.field private state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/GenieCaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 6
    .param p1, "activity"    # Lcom/google/zxing/client/android/GenieCaptureActivity;
    .param p4, "characterSet"    # Ljava/lang/String;
    .param p5, "cameraManager"    # Lcom/google/zxing/client/android/camera/CameraManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/GenieCaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .local p3, "baseHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    .line 68
    new-instance v0, Lcom/google/zxing/client/android/GenieDecodeThread;

    new-instance v5, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/GenieDecodeThread;-><init>(Lcom/google/zxing/client/android/GenieCaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

    .line 70
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/GenieDecodeThread;->start()V

    .line 71
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    .line 74
    iput-object p5, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 75
    invoke-virtual {p5}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 76
    invoke-direct {p0}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->restartPreviewAndDecode()V

    .line 77
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 154
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    .line 155
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/GenieDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 156
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->drawViewfinder()V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/eventgenie/android/R$id;->restart_preview:I

    if-ne v9, v10, :cond_1

    .line 82
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got restart preview message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->restartPreviewAndDecode()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/eventgenie/android/R$id;->decode_succeeded:I

    if-ne v9, v10, :cond_4

    .line 85
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got decode succeeded message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    iput-object v9, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    .line 87
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 88
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 89
    .local v0, "barcode":Landroid/graphics/Bitmap;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 90
    .local v7, "scaleFactor":F
    if-eqz v2, :cond_3

    .line 91
    const-string v9, "barcode_bitmap"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 92
    .local v3, "compressedBitmap":[B
    if-eqz v3, :cond_2

    .line 93
    const/4 v9, 0x0

    array-length v10, v3

    const/4 v11, 0x0

    invoke-static {v3, v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    :cond_2
    const-string v9, "barcode_scaled_factor"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 99
    .end local v3    # "compressedBitmap":[B
    :cond_3
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/google/zxing/Result;

    invoke-virtual {v10, v9, v0, v7}, Lcom/google/zxing/client/android/GenieCaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    goto :goto_0

    .line 100
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "scaleFactor":F
    :cond_4
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/eventgenie/android/R$id;->decode_failed:I

    if-ne v9, v10, :cond_5

    .line 102
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    iput-object v9, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    .line 103
    iget-object v9, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/GenieDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    sget v11, Lcom/eventgenie/android/R$id;->decode:I

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 104
    :cond_5
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/eventgenie/android/R$id;->return_scan_result:I

    if-ne v9, v10, :cond_6

    .line 105
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got return scan result message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    const/4 v11, -0x1

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    invoke-virtual {v10, v11, v9}, Lcom/google/zxing/client/android/GenieCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    iget-object v9, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-virtual {v9}, Lcom/google/zxing/client/android/GenieCaptureActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_6
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/eventgenie/android/R$id;->launch_product_query:I

    if-ne v9, v10, :cond_0

    .line 109
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got product query message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 111
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x80000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    iget-object v9, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-virtual {v9}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x10000

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 116
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 117
    .local v1, "browserPackageName":Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_7

    .line 118
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 119
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using browser in package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_7
    const-string v9, "com.android.browser"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "com.android.chrome"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 123
    :cond_8
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_9
    :try_start_0
    iget-object v9, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->activity:Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-virtual {v9, v5}, Lcom/google/zxing/client/android/GenieCaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "ignored":Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find anything to handle VIEW of URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 4

    .prologue
    .line 136
    sget-object v1, Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    iput-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->state:Lcom/google/zxing/client/android/GenieCaptureActivityHandler$State;

    .line 137
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 138
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/GenieDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->quit:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/GenieDecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/GenieDecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    sget v1, Lcom/eventgenie/android/R$id;->decode_succeeded:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->removeMessages(I)V

    .line 149
    sget v1, Lcom/eventgenie/android/R$id;->decode_failed:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->removeMessages(I)V

    .line 150
    return-void

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method
