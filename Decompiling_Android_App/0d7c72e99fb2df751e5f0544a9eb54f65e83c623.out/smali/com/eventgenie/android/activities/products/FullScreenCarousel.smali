.class public Lcom/eventgenie/android/activities/products/FullScreenCarousel;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "FullScreenCarousel.java"


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

.field private mAdapter:Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;

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
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 85
    new-instance v0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;-><init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->galleryItemSelectedHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel$2;-><init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->Timer_Tick:Ljava/lang/Runnable;

    return-void
.end method

.method private TimerMethod()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->Timer_Tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mTvPhotoDesc1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mSelectedItem:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->galleryItemSelectedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mDescription1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mTvPhotoDesc2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mDescription2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mTvPhotoPosition:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->changeVisibility(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->TimerMethod()V

    return-void
.end method

.method private changeVisibility(Z)V
    .locals 5
    .param p1, "beVisible"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 115
    sget v2, Lcom/eventgenie/android/R$id;->gallery_top_info_linearlayout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "upper":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->gallery_bottom_info_linearlayout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "lower":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-interface {v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundToTransparent()V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v2, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setVisibility(ILandroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private populateGallery()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {v0, v1, v2, p0}, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;-><init>(Ljava/util/List;Landroid/widget/ImageView$ScaleType;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mAdapter:Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;

    .line 238
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mGallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mAdapter:Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 239
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mGallery:Landroid/widget/Gallery;

    iget v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mPhotoPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 240
    return-void
.end method

.method private static setTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
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
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getIntent()Landroid/content/Intent;

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

    iput-object v2, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    sget v1, Lcom/eventgenie/android/R$layout;->activity_photo_carousel:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->setContentView(I)V

    .line 147
    sget v1, Lcom/eventgenie/android/R$id;->flicker_gallery_view:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mGallery:Landroid/widget/Gallery;

    .line 148
    sget v1, Lcom/eventgenie/android/R$id;->caption_title:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mTvPhotoDesc1:Landroid/widget/TextView;

    .line 149
    sget v1, Lcom/eventgenie/android/R$id;->caption_date:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mTvPhotoDesc2:Landroid/widget/TextView;

    .line 150
    sget v1, Lcom/eventgenie/android/R$id;->caption_position:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mTvPhotoPosition:Landroid/widget/TextView;

    .line 151
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeOut:Landroid/view/animation/Animation;

    .line 153
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "extra_hide_view_original"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mHideViewOriginalButton:Z

    .line 156
    const-string v1, "photo_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mPhotoPosition:I

    .line 157
    const-string v1, "photoset_desc_1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mDescription1:Ljava/lang/String;

    .line 158
    const-string v1, "photoset_desc_2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mDescription2:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v4, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->VIEW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mHideViewOriginalButton:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundToTransparent()V

    .line 163
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->bringToFront()V

    .line 164
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeTimer:Ljava/util/Timer;

    .line 167
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getUrls()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    .line 169
    iget-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;-><init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    iget-object v1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;-><init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    invoke-direct {p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->populateGallery()V

    .line 209
    return-void

    :cond_0
    move v1, v3

    .line 161
    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    sget v3, Lcom/eventgenie/android/R$string;->flickr_share:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mSelectedItem:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "subject":Ljava/lang/String;
    new-instance v0, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v0, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 222
    .local v0, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {v0, p1, v2, v1}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mImageUrls:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mSelectedItem:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 230
    return-void
.end method
