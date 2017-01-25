.class public Lcom/eventgenie/android/activities/others/ImageEditActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "ImageEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;,
        Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_X:Ljava/lang/String; = "ASPECT_RATIO_X"

.field private static final ASPECT_RATIO_Y:Ljava/lang/String; = "ASPECT_RATIO_Y"

.field private static final DEFAULT_ASPECT_RATIO_VALUES:I = 0xa

.field public static final FIXED_ASPECT_RATIO_KEY:Ljava/lang/String; = "FIXED_ASPECT_RATIO_KEY"

.field private static final FLIP_HORIZONTAL:I = 0x2

.field private static final FLIP_VERTICAL:I = 0x1

.field protected static final GUIDELINES_OFF:I = 0x0

.field protected static final GUIDELINES_ON:I = 0x2

.field protected static final GUIDELINES_ON_TOUCH:I = 0x1

.field public static final INPUT_FILE_PATH_KEY:Ljava/lang/String; = "INPUT_FILE_PATH_KEY"

.field public static final INPUT_FILE_URI_KEY:Ljava/lang/String; = "INPUT_FILE_URI_KEY"

.field public static final MAX_OUTPUT_SIZE_KEY:Ljava/lang/String; = "MAX_OUTPUT_SIZE_KEY"

.field public static final OUTPUT_FILE_PATH_KEY:Ljava/lang/String; = "OUTPUT_FILE_PATH_KEY"


# instance fields
.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropImageView:Lcom/edmodo/cropper/CropImageView;

.field private mImageProcessingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mInputFilePath:Ljava/lang/String;

.field private mInputFileUri:Landroid/net/Uri;

.field private mMaxOutputSize:I

.field private mOutStream:Ljava/io/FileOutputStream;

.field private mOutputFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 26
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 42
    iput v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAspectRatioX:I

    .line 43
    iput v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAspectRatioY:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mMaxOutputSize:I

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ImageEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/others/ImageEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ImageEditActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/ImageEditActivity;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ImageEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->rotateImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Lcom/edmodo/cropper/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ImageEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    return-object v0
.end method

.method private doStuff(Z)V
    .locals 12
    .param p1, "useFixedAspectRatio"    # Z

    .prologue
    const/16 v11, 0xa

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 98
    .local v5, "startIntent":Landroid/content/Intent;
    if-eqz v5, :cond_1

    const-string v7, "INPUT_FILE_PATH_KEY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "INPUT_FILE_URI_KEY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    :cond_0
    const-string v7, "INPUT_FILE_PATH_KEY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mInputFilePath:Ljava/lang/String;

    .line 100
    const-string v7, "INPUT_FILE_URI_KEY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mInputFileUri:Landroid/net/Uri;

    .line 101
    const-string v7, "OUTPUT_FILE_PATH_KEY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutputFilePath:Ljava/lang/String;

    .line 102
    const-string v7, "FIXED_ASPECT_RATIO_KEY"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 103
    const-string v7, "MAX_OUTPUT_SIZE_KEY"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mMaxOutputSize:I

    .line 105
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 109
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 110
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 112
    .local v2, "height":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ Screen Width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ Screen Height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mInputFilePath:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 118
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mInputFilePath:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    invoke-static {v4, v6, v2}, Lcom/eventgenie/android/utils/help/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    .line 122
    .local v3, "inSampleSize":I
    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mInputFilePath:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 130
    .end local v3    # "inSampleSize":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ Pic Width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ Pic Height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v7

    invoke-interface {v7, v10}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->profile_save:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 154
    sget v7, Lcom/eventgenie/android/R$id;->CropImageView:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/edmodo/cropper/CropImageView;

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    .line 155
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v7, v10}, Lcom/edmodo/cropper/CropImageView;->setDrawingCacheEnabled(Z)V

    .line 157
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 158
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    iget-object v8, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_2
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/edmodo/cropper/CropImageView;->setGuidelines(I)V

    .line 162
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Lcom/edmodo/cropper/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 164
    if-eqz p1, :cond_3

    .line 165
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v7, v10}, Lcom/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 166
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v7, v11, v11}, Lcom/edmodo/cropper/CropImageView;->setAspectRatio(II)V

    .line 168
    :cond_3
    return-void

    .line 127
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "width":I
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mInputFileUri:Landroid/net/Uri;

    invoke-static {p0, v7, v6, v2}, Lcom/eventgenie/android/utils/help/BitmapUtils;->decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->finish()V

    goto/16 :goto_1
.end method

.method private rotateImage(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 305
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 308
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 311
    .local v7, "newRef":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method protected doActionAfterGettingPermissions()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->doStuff(Z)V

    .line 378
    return-void
.end method

.method protected doActionAfterRejectingPermissions()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doActionAfterRejectingPermissions()V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": the permission was not accepted. Closing the activity."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAskForPermissionAgain:Z

    .line 385
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->finish()V

    .line 386
    return-void
.end method

.method public flipImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 324
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 326
    .local v5, "matrix":Landroid/graphics/Matrix;
    if-ne p2, v6, :cond_0

    .line 328
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 339
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    .line 331
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 333
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_storage_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_storage_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_storage_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_storage_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 390
    const/16 v0, 0x7c

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->requestWindowFeature(I)Z

    .line 86
    sget v0, Lcom/eventgenie/android/R$layout;->activity_image_edit:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->image_editor:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(I[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->doCheckPermissionsOnResume(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->checkPermissionAndDoAction()V

    .line 94
    return-void
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->onSave(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->onDiscard(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "^ ImageEdit: Destroyng resources.. clearing memory"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/edmodo/cropper/CropImageView;->destroyDrawingCache()V

    .line 216
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 218
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 219
    return-void
.end method

.method public onDiscard(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->setResult(I)V

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->finish()V

    .line 210
    return-void
.end method

.method public onFlip(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 250
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 253
    :cond_0
    new-instance v0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;-><init>(Lcom/eventgenie/android/activities/others/ImageEditActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    sget-object v3, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->FLIP:Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    .line 254
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "ASPECT_RATIO_X"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAspectRatioX:I

    .line 78
    const-string v0, "ASPECT_RATIO_Y"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAspectRatioY:I

    .line 79
    return-void
.end method

.method public onRotateLeft(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 227
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 230
    :cond_0
    new-instance v0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;-><init>(Lcom/eventgenie/android/activities/others/ImageEditActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    sget-object v3, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->ROTATE:Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, -0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    .line 232
    return-void
.end method

.method public onRotateRight(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 239
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 242
    :cond_0
    new-instance v0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;-><init>(Lcom/eventgenie/android/activities/others/ImageEditActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    sget-object v3, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->ROTATE:Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mImageProcessingTask:Landroid/os/AsyncTask;

    .line 243
    return-void
.end method

.method public onSave(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 179
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutputFilePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v3}, Lcom/edmodo/cropper/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    .local v2, "newBmp":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mMaxOutputSize:I

    if-eq v3, v4, :cond_0

    .line 183
    iget v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mMaxOutputSize:I

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/BitmapUtils;->scaleDownBitmapToMaxDimension(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 191
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutStream:Ljava/io/FileOutputStream;

    .line 192
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 194
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 195
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "newBmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 197
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "newBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "ASPECT_RATIO_X"

    iget v1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAspectRatioX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v0, "ASPECT_RATIO_Y"

    iget v1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity;->mAspectRatioY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-void
.end method
