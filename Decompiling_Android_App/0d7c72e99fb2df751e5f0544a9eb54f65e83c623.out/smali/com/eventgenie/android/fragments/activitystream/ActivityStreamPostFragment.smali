.class public Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "ActivityStreamPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$4;,
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;,
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;
    }
.end annotation


# static fields
.field public static final ABUSE_STATUS_FIELD:Ljava/lang/String; = "abuseStatus"

.field public static final ASSOCIATED_DOWNLOADABLE_FIELD:Ljava/lang/String; = "associatedDownloadables"

.field public static final ASSOCIATED_EXHIBITOR_FIELD:Ljava/lang/String; = "associatedExhibitors"

.field public static final ASSOCIATED_POI_FIELD:Ljava/lang/String; = "associatedPOIs"

.field public static final ASSOCIATED_PRODUCT_FIELD:Ljava/lang/String; = "associatedProducts"

.field public static final ASSOCIATED_SESSION_FIELD:Ljava/lang/String; = "associatedSessions"

.field public static final ASSOCIATED_SPEAKER_FIELD:Ljava/lang/String; = "associatedSpeakers"

.field public static final ASSOCIATED_SUBSESSION_FIELD:Ljava/lang/String; = "associatedSubSessions"

.field public static final ASSOCIATED_VISITOR_FIELD:Ljava/lang/String; = "associatedVisitors"

.field public static final AUTHOR_FIELD:Ljava/lang/String; = "author"

.field public static final COMMENTS_FIELD:Ljava/lang/String; = "comments"

.field public static final IMAGES_FIELD:Ljava/lang/String; = "images"

.field public static final IMAGES_URL_FIELD:Ljava/lang/String; = "imagesURL"

.field public static final MESSAGE_FIELD:Ljava/lang/String; = "message"

.field public static final NO_COMMENTS_FIELD:Ljava/lang/String; = "noComments"

.field public static final POSTING_VISITOR_FIELD:Ljava/lang/String; = "postingVisitor"

.field public static final SELECT_ENTITY:I = 0x66

.field public static final SELECT_IMAGE:I = 0x67

.field public static final TAKE_IMAGE:I = 0x65

.field public static final TIMESTAMP_FIELD:Ljava/lang/String; = "timestamp"

.field public static final VISIBILITY_FIELD:Ljava/lang/String; = "visibility"


# instance fields
.field public entityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private etPost:Landroid/widget/EditText;

.field private llHorizontalGallery:Landroid/widget/LinearLayout;

.field public output:Ljava/io/File;

.field public photoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private postUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    .line 481
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->postUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->postUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->delete(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->etPost:Landroid/widget/EditText;

    return-object v0
.end method

.method private addBitmapToGallery(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 202
    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->photoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 206
    .local v3, "inflater":Landroid/view/LayoutInflater;
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$dimen;->post_image_gallery_preview_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 208
    .local v5, "maxSize":F
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    float-to-int v8, v5

    float-to-int v9, v5

    invoke-static {v7, p1, v8, v9}, Lcom/eventgenie/android/utils/help/BitmapUtils;->decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v7, Lcom/eventgenie/android/R$layout;->generic_image_view_gallery:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewFlipper;

    .line 213
    .local v6, "vfl":Landroid/widget/ViewFlipper;
    sget v7, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual {v6, v7}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 214
    .local v4, "iv":Landroid/widget/ImageView;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 217
    sget v7, Lcom/eventgenie/android/R$id;->deleteBtn:I

    invoke-virtual {v6, v7}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 218
    .local v1, "deleteBtn":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 219
    new-instance v7, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$1;

    invoke-direct {v7, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$1;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->photoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "deleteBtn":Landroid/widget/ImageView;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "iv":Landroid/widget/ImageView;
    .end local v5    # "maxSize":F
    .end local v6    # "vfl":Landroid/widget/ViewFlipper;
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private delete(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 447
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 449
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 450
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 451
    move-object v0, v3

    check-cast v0, Landroid/net/Uri;

    move-object v5, v0

    .line 452
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->photoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 455
    .local v4, "parent":Landroid/view/View;
    iget-object v6, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 472
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v6, v3, Lcom/eventgenie/android/container/CursorEntityWrapper;

    if-eqz v6, :cond_0

    .line 459
    move-object v0, v3

    check-cast v0, Lcom/eventgenie/android/container/EntityWrapper;

    move-object v2, v0

    .line 460
    .local v2, "entity":Lcom/eventgenie/android/container/EntityWrapper;
    iget-object v6, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->entityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 462
    .restart local v4    # "parent":Landroid/view/View;
    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 463
    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v2    # "entity":Lcom/eventgenie/android/container/EntityWrapper;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "parent":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ ActivityStreamPostFragment onClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addEntityToGallery(Lcom/eventgenie/android/container/CursorEntityWrapper;)V
    .locals 14
    .param p1, "entity"    # Lcom/eventgenie/android/container/CursorEntityWrapper;

    .prologue
    .line 234
    const/4 v5, 0x0

    .line 235
    .local v5, "isInEntityList":Z
    iget-object v9, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->entityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/container/EntityWrapper;

    .line 236
    .local v2, "existingEntity":Lcom/eventgenie/android/container/EntityWrapper;
    invoke-interface {v2}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 237
    const/4 v5, 0x1

    .line 241
    .end local v2    # "existingEntity":Lcom/eventgenie/android/container/EntityWrapper;
    :cond_1
    if-nez v5, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 244
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/eventgenie/android/R$layout;->generic_image_view_gallery:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ViewFlipper;

    .line 247
    .local v8, "vfl":Landroid/widget/ViewFlipper;
    sget v9, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 248
    .local v6, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 249
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {p1}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 261
    :goto_0
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 263
    sget v9, Lcom/eventgenie/android/R$id;->deleteBtn:I

    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 264
    .local v0, "deleteBtn":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 266
    iget-object v9, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    iget-object v9, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->entityList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v0    # "deleteBtn":Landroid/widget/ImageView;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "iv":Landroid/widget/ImageView;
    .end local v8    # "vfl":Landroid/widget/ViewFlipper;
    :cond_2
    return-void

    .line 252
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v6    # "iv":Landroid/widget/ImageView;
    .restart local v8    # "vfl":Landroid/widget/ViewFlipper;
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 253
    .local v7, "res":Landroid/content/res/Resources;
    sget v9, Lcom/eventgenie/android/R$id;->tvWhen:I

    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 255
    sget v9, Lcom/eventgenie/android/R$id;->deleteSessionBtn:I

    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 257
    .local v1, "deleteSessionBtn":Landroid/widget/ImageView;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 259
    invoke-static {v8, p1}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->flipContent(Landroid/widget/ViewFlipper;Lcom/eventgenie/android/container/EntityWrapper;)V

    goto :goto_0
.end method

.method public addToPhotoGallery(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "uri":Landroid/net/Uri;
    instance-of v2, p1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 274
    check-cast v1, Landroid/net/Uri;

    .line 283
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 284
    invoke-direct {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addBitmapToGallery(Landroid/net/Uri;)V

    .line 286
    :cond_1
    return-void

    .line 276
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Landroid/content/ClipData$Item;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 277
    check-cast v0, Landroid/content/ClipData$Item;

    .line 278
    .local v0, "clip":Landroid/content/ClipData$Item;
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 279
    goto :goto_0

    .line 280
    .end local v0    # "clip":Landroid/content/ClipData$Item;
    :cond_3
    instance-of v2, p1, Ljava/io/File;

    if-eqz v2, :cond_0

    .line 281
    check-cast p1, Ljava/io/File;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 290
    const-string v0, "^ ACTIVITYSTREAMDETAILSFRAGMENT onActivityCreated "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 291
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 296
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->photoList:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->entityList:Ljava/util/ArrayList;

    .line 299
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->setHasOptionsMenu(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 301
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 302
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 344
    sget v2, Lcom/eventgenie/android/R$layout;->fragment_stream_post:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 345
    .local v1, "rootView":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->etPost:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->etPost:Landroid/widget/EditText;

    .line 346
    sget v2, Lcom/eventgenie/android/R$id;->horizontalGallery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;

    .line 347
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$color;->Blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 368
    .local v0, "blueColor":I
    return-object v1
.end method

.method public onDeleteSession(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->delete(Landroid/view/View;)V

    .line 444
    return-void
.end method

.method public onEntityClick()V
    .locals 4

    .prologue
    .line 387
    const-string v2, "^ ActivityStreamPost on post entity"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 390
    .local v0, "entitySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getIntentForPicking(Landroid/content/Context;Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v1

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 374
    .local v0, "itemId":I
    sget v1, Lcom/eventgenie/android/R$id;->action_stream_post_picture:I

    if-ne v0, v1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->onTakePictureClick()V

    .line 383
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 377
    :cond_1
    sget v1, Lcom/eventgenie/android/R$id;->action_stream_post_entity:I

    if-ne v0, v1, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->onEntityClick()V

    goto :goto_0

    .line 380
    :cond_2
    sget v1, Lcom/eventgenie/android/R$id;->action_stream_post:I

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->post()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onStart()V

    .line 307
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 308
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "ENTITY_EXTRA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const-string v2, "ENTITY_EXTRA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/container/CursorEntityWrapper;

    .line 311
    .local v1, "entity":Lcom/eventgenie/android/container/CursorEntityWrapper;
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addEntityToGallery(Lcom/eventgenie/android/container/CursorEntityWrapper;)V

    .line 313
    .end local v1    # "entity":Lcom/eventgenie/android/container/CursorEntityWrapper;
    :cond_0
    return-void
.end method

.method public onTakePictureClick()V
    .locals 3

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentCheck;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->startGetPicture()V

    .line 440
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/eventgenie/android/R$string;->get_picture:I

    new-instance v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$2;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    sget v1, Lcom/eventgenie/android/R$string;->take_picture:I

    new-instance v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public post()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 475
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    iput-boolean v1, v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->doingPost:Z

    .line 476
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 478
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 479
    return-void
.end method

.method public startGetPicture()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 328
    const-string v1, "^ ActivityStreamPost on post picture"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->select:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 339
    return-void
.end method

.method public startTakePicture()V
    .locals 5

    .prologue
    .line 316
    const-string v2, "^ ActivityStreamPost on post take picture"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "i":Landroid/content/Intent;
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 320
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityStreamPost"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->output:Ljava/io/File;

    .line 322
    const-string v2, "output"

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->output:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 324
    return-void
.end method
