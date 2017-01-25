.class public Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "FullScreenCarouselActivity.java"


# static fields
.field public static final EXTRA_HIDE_VIEW_ORIGINAL:Ljava/lang/String; = "extra_hide_view_original"

.field public static final EXTRA_PHOTO:Ljava/lang/String; = "photo"

.field public static final EXTRA_PHOTOSET_DESCRIPTION_1:Ljava/lang/String; = "photoset_desc_1"

.field public static final EXTRA_PHOTOSET_DESCRIPTION_2:Ljava/lang/String; = "photoset_desc_2"

.field public static final EXTRA_PHOTO_POSITION:Ljava/lang/String; = "photo_number"

.field private static final FADE_OUT_DELAY:I = 0x7d0

.field public static final PHOTOSET_ID_EXTRA:Ljava/lang/String; = "photoset_id"


# instance fields
.field private final Timer_Tick:Ljava/lang/Runnable;

.field private final galleryItemSelectedHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/FullScreenCarouselAdapter;

.field private mDescription1:Ljava/lang/String;

.field private mDescription2:Ljava/lang/String;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFadeTimer:Ljava/util/Timer;

.field private mGallery:Landroid/widget/Gallery;

.field private mHideViewOriginalButton:Z

.field private mImageUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoPosition:I

.field private mSelectedItem:Ljava/lang/Integer;

.field private mTvPhotoDesc1:Landroid/widget/TextView;

.field private mTvPhotoDesc2:Landroid/widget/TextView;

.field private mTvPhotoPosition:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 86
    new-instance v0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;-><init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->galleryItemSelectedHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$2;-><init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->Timer_Tick:Ljava/lang/Runnable;

    return-void
.end method

.method private TimerMethod()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->Timer_Tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoDesc1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mSelectedItem:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->galleryItemSelectedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mDescription1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoDesc2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mDescription2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoPosition:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->changeVisibility(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->TimerMethod()V

    return-void
.end method

.method private changeVisibility(Z)V
    .locals 5
    .param p1, "beVisible"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 115
    sget v2, Lcom/eventgenie/android/R$id;->gallery_top_info_linearlayout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "upper":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->gallery_bottom_info_linearlayout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "lower":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private populateGallery()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/FullScreenCarouselAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mImageUrls:Ljava/util/ArrayList;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {v0, v1, v2, p0}, Lcom/eventgenie/android/adapters/newsandsocial/FullScreenCarouselAdapter;-><init>(Ljava/util/List;Landroid/widget/ImageView$ScaleType;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/FullScreenCarouselAdapter;

    .line 254
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/FullScreenCarouselAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;

    iget v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mPhotoPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 256
    return-void
.end method

.method private static setTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getUrls()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 137
    const-string v2, "photo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mImageUrls:Ljava/util/ArrayList;

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mImageUrls:Ljava/util/ArrayList;

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    sget v1, Lcom/eventgenie/android/R$layout;->activity_photo_carousel:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->setContentView(I)V

    .line 147
    sget v1, Lcom/eventgenie/android/R$id;->flicker_gallery_view:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;

    .line 148
    sget v1, Lcom/eventgenie/android/R$id;->caption_title:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoDesc1:Landroid/widget/TextView;

    .line 149
    sget v1, Lcom/eventgenie/android/R$id;->caption_date:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoDesc2:Landroid/widget/TextView;

    .line 150
    sget v1, Lcom/eventgenie/android/R$id;->caption_position:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoPosition:Landroid/widget/TextView;

    .line 151
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeOut:Landroid/view/animation/Animation;

    .line 153
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "extra_hide_view_original"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mHideViewOriginalButton:Z

    .line 156
    const-string v1, "photo_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mPhotoPosition:I

    .line 157
    const-string v1, "photoset_desc_1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mDescription1:Ljava/lang/String;

    .line 158
    const-string v1, "photoset_desc_2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mDescription2:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeTimer:Ljava/util/Timer;

    .line 167
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->getUrls()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mImageUrls:Ljava/util/ArrayList;

    .line 169
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;-><init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$4;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$4;-><init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    invoke-direct {p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->populateGallery()V

    .line 216
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->onBackPressed()V

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mImageUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    const-string v2, "Share"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mImageUrls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mSelectedItem:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "subject":Ljava/lang/String;
    return-void
.end method
