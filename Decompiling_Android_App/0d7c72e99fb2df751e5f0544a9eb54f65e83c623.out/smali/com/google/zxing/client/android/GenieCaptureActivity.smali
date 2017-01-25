.class public final Lcom/google/zxing/client/android/GenieCaptureActivity;
.super Landroid/app/Activity;
.source "GenieCaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/GenieCaptureActivity$2;
    }
.end annotation


# static fields
.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.android"

.field private static final PRODUCT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google"

.field private static final PRODUCT_SEARCH_URL_SUFFIX:Ljava/lang/String; = "/m/products/scan"

.field private static final TAG:Ljava/lang/String;

.field private static final ZXING_URLS:[Ljava/lang/String;


# instance fields
.field private ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private resultView:Landroid/view/View;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private statusView:Landroid/widget/TextView;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 80
    const-class v0, Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 410
    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    if-nez v1, :cond_0

    .line 333
    iput-object p2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 344
    :goto_0
    return-void

    .line 335
    :cond_0
    if-eqz p2, :cond_1

    .line 336
    iput-object p2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    sget v2, Lcom/eventgenie/android/R$id;->decode_succeeded:I

    iget-object v3, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    .prologue
    .line 672
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 674
    sget v1, Lcom/eventgenie/android/R$string;->msg_camera_framework_bug:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 675
    const v1, 0x104000a

    new-instance v2, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 676
    new-instance v1, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 678
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;
    .param p4, "scaleFactor"    # F

    .prologue
    .line 446
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 447
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    mul-float v1, p4, v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    mul-float v2, p4, v0

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    mul-float v3, p4, v0

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    mul-float v4, p4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 453
    :cond_0
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;FLcom/google/zxing/Result;)V
    .locals 12
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 422
    invoke-virtual {p3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 423
    .local v6, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 424
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 426
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$color;->result_points:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    array-length v7, v6

    if-ne v7, v11, :cond_1

    .line 428
    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    aget-object v7, v6, v9

    aget-object v8, v6, v10

    invoke-static {v1, v4, v7, v8, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V

    .line 443
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    invoke-virtual {p3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v7, v8, :cond_2

    invoke-virtual {p3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v7, v8, :cond_3

    .line 434
    :cond_2
    aget-object v7, v6, v9

    aget-object v8, v6, v10

    invoke-static {v1, v4, v7, v8, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V

    .line 435
    aget-object v7, v6, v11

    const/4 v8, 0x3

    aget-object v8, v6, v8

    invoke-static {v1, v4, v7, v8, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V

    goto :goto_0

    .line 437
    :cond_3
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 438
    move-object v0, v6

    .local v0, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 439
    .local v5, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    mul-float/2addr v7, p2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    mul-float/2addr v8, p2

    invoke-virtual {v1, v7, v8, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;Landroid/graphics/Bitmap;)V
    .locals 28
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/GenieResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 548
    if-eqz p3, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    if-nez v23, :cond_8

    .line 554
    const-wide/16 v20, 0x5dc

    .line 560
    .local v20, "resultDurationMS":J
    :goto_0
    const-wide/16 v24, 0x0

    cmp-long v23, v20, v24

    if-lez v23, :cond_2

    .line 561
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 562
    .local v18, "rawResultString":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 563
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 565
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getDisplayTitle()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    .end local v18    # "rawResultString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->copyToClipboard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->areContentsSecure()Z

    move-result v23

    if-nez v23, :cond_3

    .line 569
    const-string v23, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/ClipboardManager;

    .line 570
    .local v8, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v22

    .line 571
    .local v22, "text":Ljava/lang/CharSequence;
    if-eqz v22, :cond_3

    .line 573
    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    .end local v22    # "text":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 585
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v23, 0x80000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string v23, "SCAN_RESULT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v23, "SCAN_RESULT_FORMAT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v17

    .line 590
    .local v17, "rawBytes":[B
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_4

    .line 591
    const-string v23, "SCAN_RESULT_BYTES"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 593
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v14

    .line 594
    .local v14, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v14, :cond_9

    .line 595
    sget-object v23, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 596
    const-string v23, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v24, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    :cond_5
    sget-object v23, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 600
    .local v16, "orientation":Ljava/lang/Integer;
    if-eqz v16, :cond_6

    .line 601
    const-string v23, "SCAN_RESULT_ORIENTATION"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    :cond_6
    sget-object v23, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 604
    .local v9, "ecLevel":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 605
    const-string v23, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    :cond_7
    sget-object v23, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 608
    .local v7, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v7, :cond_9

    .line 609
    const/4 v11, 0x0

    .line 610
    .local v11, "i":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 611
    .local v6, "byteSegment":[B
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 612
    add-int/lit8 v11, v11, 0x1

    .line 613
    goto :goto_2

    .line 556
    .end local v6    # "byteSegment":[B
    .end local v7    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v9    # "ecLevel":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v16    # "orientation":Ljava/lang/Integer;
    .end local v17    # "rawBytes":[B
    .end local v20    # "resultDurationMS":J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v26, 0x5dc

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .restart local v20    # "resultDurationMS":J
    goto/16 :goto_0

    .line 574
    .restart local v8    # "clipboard":Landroid/text/ClipboardManager;
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v15

    .line 576
    .local v15, "npe":Ljava/lang/NullPointerException;
    sget-object v23, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    const-string v24, "Clipboard bug"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 616
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    .end local v15    # "npe":Ljava/lang/NullPointerException;
    .end local v22    # "text":Ljava/lang/CharSequence;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .restart local v17    # "rawBytes":[B
    :cond_9
    sget v23, Lcom/eventgenie/android/R$id;->return_scan_result:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/google/zxing/client/android/GenieCaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    .line 634
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v17    # "rawBytes":[B
    :cond_a
    :goto_3
    return-void

    .line 618
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/scan"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 623
    .local v10, "end":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "?q="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "&source=zxing"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 624
    .local v19, "replyURL":Ljava/lang/String;
    sget v23, Lcom/eventgenie/android/R$id;->launch_product_query:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/GenieCaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto :goto_3

    .line 626
    .end local v10    # "end":I
    .end local v19    # "replyURL":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->isScanFromWebPage()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->buildReplyURL(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;)Ljava/lang/String;

    move-result-object v19

    .line 630
    .restart local v19    # "replyURL":Ljava/lang/String;
    sget v23, Lcom/eventgenie/android/R$id;->launch_product_query:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/GenieCaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto/16 :goto_3
.end method

.method private handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;Landroid/graphics/Bitmap;)V
    .locals 30
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/GenieResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->resultView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 461
    sget v26, Lcom/eventgenie/android/R$id;->barcode_image_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 462
    .local v4, "barcodeImageView":Landroid/widget/ImageView;
    if-nez p3, :cond_1

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-static/range {v26 .. v27}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 468
    :goto_0
    sget v26, Lcom/eventgenie/android/R$id;->format_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 469
    .local v12, "formatTextView":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    sget v26, Lcom/eventgenie/android/R$id;->type_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 472
    .local v24, "typeTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const/16 v26, 0x3

    const/16 v27, 0x3

    invoke-static/range {v26 .. v27}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v14

    .line 475
    .local v14, "formatter":Ljava/text/DateFormat;
    new-instance v26, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 476
    .local v13, "formattedTime":Ljava/lang/String;
    sget v26, Lcom/eventgenie/android/R$id;->time_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 477
    .local v23, "timeTextView":Landroid/widget/TextView;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    sget v26, Lcom/eventgenie/android/R$id;->meta_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 481
    .local v16, "metaTextView":Landroid/widget/TextView;
    sget v26, Lcom/eventgenie/android/R$id;->meta_text_view_label:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 482
    .local v17, "metaTextViewLabel":Landroid/view/View;
    const/16 v26, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    .line 485
    .local v18, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    if-eqz v18, :cond_3

    .line 486
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v26, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 487
    .local v19, "metadataText":Ljava/lang/StringBuilder;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 488
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    sget-object v26, Lcom/google/zxing/client/android/GenieCaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 489
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v12    # "formatTextView":Landroid/widget/TextView;
    .end local v13    # "formattedTime":Ljava/lang/String;
    .end local v14    # "formatter":Ljava/text/DateFormat;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "metaTextView":Landroid/widget/TextView;
    .end local v17    # "metaTextViewLabel":Landroid/view/View;
    .end local v18    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v19    # "metadataText":Ljava/lang/StringBuilder;
    .end local v23    # "timeTextView":Landroid/widget/TextView;
    .end local v24    # "typeTextView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 492
    .restart local v12    # "formatTextView":Landroid/widget/TextView;
    .restart local v13    # "formattedTime":Ljava/lang/String;
    .restart local v14    # "formatter":Ljava/text/DateFormat;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "metaTextView":Landroid/widget/TextView;
    .restart local v17    # "metaTextViewLabel":Landroid/view/View;
    .restart local v18    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .restart local v19    # "metadataText":Ljava/lang/StringBuilder;
    .restart local v23    # "timeTextView":Landroid/widget/TextView;
    .restart local v24    # "typeTextView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_3

    .line 493
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 494
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "metadataText":Ljava/lang/StringBuilder;
    :cond_3
    sget v26, Lcom/eventgenie/android/R$id;->contents_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 501
    .local v9, "contentsTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v10

    .line 502
    .local v10, "displayContents":Ljava/lang/CharSequence;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const/16 v26, 0x16

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v27

    div-int/lit8 v27, v27, 0x4

    rsub-int/lit8 v27, v27, 0x20

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 505
    .local v21, "scaledSize":I
    const/16 v26, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 507
    sget v26, Lcom/eventgenie/android/R$id;->contents_supplement_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 508
    .local v22, "supplementTextView":Landroid/widget/TextView;
    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getButtonCount()I

    move-result v6

    .line 519
    .local v6, "buttonCount":I
    sget v26, Lcom/eventgenie/android/R$id;->result_button_view:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 520
    .local v7, "buttonView":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 521
    const/16 v25, 0x0

    .local v25, "x":I
    :goto_2
    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 522
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 523
    .local v5, "button":Landroid/widget/TextView;
    move/from16 v0, v25

    if-ge v0, v6, :cond_4

    .line 524
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->getButtonText(I)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 526
    new-instance v26, Lcom/google/zxing/client/android/result/GenieResultButtonListener;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/result/GenieResultButtonListener;-><init>(Lcom/google/zxing/client/android/result/GenieResultHandler;I)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 528
    :cond_4
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 532
    .end local v5    # "button":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->copyToClipboard:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->areContentsSecure()Z

    move-result v26

    if-nez v26, :cond_6

    .line 533
    const-string v26, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/ClipboardManager;

    .line 534
    .local v8, "clipboard":Landroid/text/ClipboardManager;
    if-eqz v10, :cond_6

    .line 536
    :try_start_0
    invoke-virtual {v8, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    :cond_6
    :goto_4
    return-void

    .line 537
    .restart local v8    # "clipboard":Landroid/text/ClipboardManager;
    :catch_0
    move-exception v20

    .line 539
    .local v20, "npe":Ljava/lang/NullPointerException;
    sget-object v26, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    const-string v27, "Clipboard bug"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 654
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 656
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    if-nez v0, :cond_2

    .line 657
    new-instance v0, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeHints:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/GenieCaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    .line 659
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 660
    :catch_0
    move-exception v7

    .line 661
    .local v7, "ioe":Ljava/io/IOException;
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    invoke-direct {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 663
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 666
    .local v6, "e":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    invoke-direct {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private static isZXingURL(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 267
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v4

    .line 270
    :cond_1
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 271
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    const/4 v4, 0x1

    goto :goto_0

    .line 270
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetStatusView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->resultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->statusView:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->msg_default_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 690
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v2}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 693
    return-void
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "delayMS"    # J

    .prologue
    .line 637
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 697
    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 8
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;
    .param p3, "scaleFactor"    # F

    .prologue
    const/4 v4, 0x0

    .line 375
    iget-object v5, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 376
    iput-object p1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 377
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/result/GenieResultHandlerFactory;->makeResultHandler(Lcom/google/zxing/client/android/GenieCaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/GenieResultHandler;

    move-result-object v3

    .line 379
    .local v3, "resultHandler":Lcom/google/zxing/client/android/result/GenieResultHandler;
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 380
    .local v0, "fromLiveScan":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 383
    iget-object v5, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 384
    invoke-direct {p0, p2, p3, p1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;FLcom/google/zxing/Result;)V

    .line 387
    :cond_0
    sget-object v5, Lcom/google/zxing/client/android/GenieCaptureActivity$2;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    iget-object v6, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 412
    :goto_1
    return-void

    .end local v0    # "fromLiveScan":Z
    :cond_1
    move v0, v4

    .line 379
    goto :goto_0

    .line 390
    .restart local v0    # "fromLiveScan":Z
    :pswitch_0
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 393
    :pswitch_1
    iget-object v4, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->isScanFromWebPage()Z

    move-result v4

    if-nez v4, :cond_3

    .line 394
    :cond_2
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 396
    :cond_3
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 400
    :pswitch_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 401
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_4

    const-string v5, "preferences_bulk_mode"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->msg_bulk_mode_scanned:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 406
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/client/android/GenieCaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_1

    .line 408
    .end local v1    # "message":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/GenieResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 134
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 135
    sget v3, Lcom/eventgenie/android/R$layout;->activity_barcode_capture:I

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/GenieCaptureActivity;->setContentView(I)V

    .line 137
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 139
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getQRReader()Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->isDisableVisitorQRCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    sget v3, Lcom/eventgenie/android/R$id;->fab_shooter:I

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 142
    .local v1, "fab":Landroid/widget/ImageButton;
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 144
    new-instance v3, Lcom/google/zxing/client/android/GenieCaptureActivity$1;

    invoke-direct {v3, p0}, Lcom/google/zxing/client/android/GenieCaptureActivity$1;-><init>(Lcom/google/zxing/client/android/GenieCaptureActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :goto_0
    iput-boolean v4, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->hasSurface:Z

    .line 158
    new-instance v3, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {v3, p0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 159
    new-instance v3, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {v3, p0}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 160
    new-instance v3, Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-direct {v3, p0}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 162
    sget v3, Lcom/eventgenie/android/R$xml;->preferences:I

    invoke-static {p0, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 163
    return-void

    .line 153
    .end local v1    # "fab":Landroid/widget/ImageButton;
    :cond_0
    sget v3, Lcom/eventgenie/android/R$id;->fab_shooter:I

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 154
    .restart local v1    # "fab":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->shutdown()V

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 299
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 303
    sparse-switch p1, :sswitch_data_0

    .line 327
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 305
    :sswitch_1
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_1

    .line 306
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/GenieCaptureActivity;->setResult(I)V

    .line 307
    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->finish()V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_0

    .line 311
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/GenieCaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 321
    :sswitch_2
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 324
    :sswitch_3
    iget-object v1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 280
    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->quitSynchronously()V

    .line 282
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onPause()V

    .line 285
    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    .line 286
    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 287
    iget-boolean v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 288
    sget v2, Lcom/eventgenie/android/R$id;->preview_view:I

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 289
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 290
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 292
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 293
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    new-instance v10, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 175
    sget v10, Lcom/eventgenie/android/R$id;->viewfinder_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 176
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v13, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v13}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 178
    sget v10, Lcom/eventgenie/android/R$id;->result_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->resultView:Landroid/view/View;

    .line 179
    sget v10, Lcom/eventgenie/android/R$id;->status_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->statusView:Landroid/widget/TextView;

    .line 181
    iput-object v14, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    .line 182
    iput-object v14, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 184
    invoke-direct {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->resetStatusView()V

    .line 186
    sget v10, Lcom/eventgenie/android/R$id;->preview_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/GenieCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    .line 187
    .local v8, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 188
    .local v7, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->hasSurface:Z

    if-eqz v10, :cond_4

    .line 191
    invoke-direct {p0, v7}, Lcom/google/zxing/client/android/GenieCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 198
    :goto_0
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/BeepManager;->updatePrefs()V

    .line 199
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v13, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v13}, Lcom/google/zxing/client/android/AmbientLightManager;->start(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 201
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/InactivityTimer;->onResume()V

    .line 203
    invoke-virtual {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 205
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 206
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "preferences_copy_to_clipboard"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_0

    const-string v10, "SAVE_HISTORY"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_0
    move v10, v11

    :goto_1
    iput-boolean v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->copyToClipboard:Z

    .line 209
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 210
    iput-object v14, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 211
    iput-object v14, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->characterSet:Ljava/lang/String;

    .line 213
    if-eqz v5, :cond_3

    .line 215
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "dataString":Ljava/lang/String;
    const-string v10, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 221
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 222
    invoke-static {v5}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 223
    invoke-static {v5}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeHints:Ljava/util/Map;

    .line 225
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 226
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 227
    .local v9, "width":I
    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 228
    .local v3, "height":I
    if-lez v9, :cond_1

    if-lez v3, :cond_1

    .line 229
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v9, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 233
    .end local v3    # "height":I
    .end local v9    # "width":I
    :cond_1
    const-string v10, "PROMPT_MESSAGE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "customPromptMessage":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 235
    iget-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v10, "CHARACTER_SET"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->characterSet:Ljava/lang/String;

    .line 264
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    :cond_3
    return-void

    .line 194
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-interface {v7, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 195
    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    goto/16 :goto_0

    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    move v10, v12

    .line 206
    goto :goto_1

    .line 238
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "dataString":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    const-string v10, "http://www.google"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "/m/products/scan"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 243
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 244
    iput-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 245
    sget-object v10, Lcom/google/zxing/client/android/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Collection;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2

    .line 247
    :cond_7
    invoke-static {v2}, Lcom/google/zxing/client/android/GenieCaptureActivity;->isZXingURL(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 251
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 252
    iput-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 253
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 254
    .local v4, "inputUri":Landroid/net/Uri;
    new-instance v10, Lcom/google/zxing/client/android/ScanFromWebPageManager;

    invoke-direct {v10, v4}, Lcom/google/zxing/client/android/ScanFromWebPageManager;-><init>(Landroid/net/Uri;)V

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    .line 255
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 257
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->decodeHints:Ljava/util/Map;

    goto :goto_2
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->handler:Lcom/google/zxing/client/android/GenieCaptureActivityHandler;

    sget v1, Lcom/eventgenie/android/R$id;->restart_preview:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/GenieCaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->resetStatusView()V

    .line 685
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 365
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    sget-object v0, Lcom/google/zxing/client/android/GenieCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->hasSurface:Z

    .line 353
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/GenieCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 355
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity;->hasSurface:Z

    .line 360
    return-void
.end method
