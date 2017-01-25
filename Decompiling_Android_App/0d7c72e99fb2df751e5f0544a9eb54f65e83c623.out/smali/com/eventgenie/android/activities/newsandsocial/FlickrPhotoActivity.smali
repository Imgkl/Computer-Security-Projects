.class public Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "FlickrPhotoActivity.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieBaseActivity;",
        "Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_PHOTO:Ljava/lang/String; = "photo"

.field public static final EXTRA_PHOTO_POSITION:Ljava/lang/String; = "photo_number"

.field private static final FADE_OUT_DELAY:I = 0x7d0

.field public static final PHOTOSET_ID_EXTRA:Ljava/lang/String; = "photoset_id"

.field private static final PHOTO_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "^ FlickrPhotoActivity"

.field private static final TAG_TASK_FRAGMENT:Ljava/lang/String; = "task_fragment"


# instance fields
.field private Timer_Tick:Ljava/lang/Runnable;

.field private adapter:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

.field private data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

.field private fadeTimer:Ljava/util/Timer;

.field private flickerPhotoUrlDesktop:Ljava/lang/String;

.field private flickerPhotoUrlMobile:Ljava/lang/String;

.field private gallery:Landroid/widget/Gallery;

.field private final galleryItemSelectedHandler:Landroid/os/Handler;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mTaskFragment:Lcom/eventgenie/android/fragments/TaskFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eventgenie/android/fragments/TaskFragment",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;",
            ">;"
        }
    .end annotation
.end field

.field private photoPosition:I

.field private photosetId:Ljava/lang/String;

.field private tvPhotoDate:Landroid/widget/TextView;

.field private tvPhotoPosition:Landroid/widget/TextView;

.field private tvPhotoTitle:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 104
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->galleryItemSelectedHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$2;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->Timer_Tick:Ljava/lang/Runnable;

    return-void
.end method

.method private TimerMethod()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->Timer_Tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoPosition:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlMobile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlDesktop:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->changeVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->fadeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->fadeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->TimerMethod()V

    return-void
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->galleryItemSelectedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeVisibility(Z)V
    .locals 6
    .param p1, "beVisible"    # Z

    .prologue
    const v5, 0x10a0001

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 137
    sget v2, Lcom/eventgenie/android/R$id;->gallery_top_info_linearlayout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "upper":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->gallery_bottom_info_linearlayout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "lower":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-interface {v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundToTransparent()V

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setVisibility(ILandroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getPhotos()V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 175
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v2, "task_fragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/fragments/TaskFragment;

    iput-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mTaskFragment:Lcom/eventgenie/android/fragments/TaskFragment;

    .line 177
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mTaskFragment:Lcom/eventgenie/android/fragments/TaskFragment;

    if-nez v2, :cond_1

    .line 178
    const-string v2, "^ FlickrPhotoActivity starting new TaskFragment"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    new-instance v2, Lcom/eventgenie/android/fragments/TaskFragment;

    invoke-direct {v2}, Lcom/eventgenie/android/fragments/TaskFragment;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mTaskFragment:Lcom/eventgenie/android/fragments/TaskFragment;

    .line 180
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mTaskFragment:Lcom/eventgenie/android/fragments/TaskFragment;

    const-string/jumbo v4, "task_fragment"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v2, "^ FlickrPhotoActivity reusing old TaskFragment"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mTaskFragment:Lcom/eventgenie/android/fragments/TaskFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/TaskFragment;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .line 185
    .local v1, "result":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->populateGallery(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    goto :goto_0
.end method

.method private populateGallery(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 3
    .param p1, "photos"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 288
    const-string v0, "^ FlickrPhotoActivity Populating the Photos ..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .line 291
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    sget-object v2, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->PICTURES_GALLERY_FULL:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-direct {v0, v1, p0, v2}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Landroid/content/Context;Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->adapter:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

    .line 292
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->adapter:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 294
    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/util/List;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x64

    const/4 v5, 0x1

    .line 320
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 322
    .local v6, "integerObj":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->photosetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->photosetId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Ljava/lang/String;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    .line 325
    :cond_0
    new-instance v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->userId:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "user":Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->doInBackground(Ljava/util/List;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParams()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getParams()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 165
    .local v2, "photo":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    if-eqz v0, :cond_0

    .line 166
    const-string v3, "photo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "photo":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    check-cast v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    .line 169
    .restart local v2    # "photo":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    :cond_0
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    sget v1, Lcom/eventgenie/android/R$layout;->activity_photo_carousel:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->setContentView(I)V

    .line 198
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->VIEW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 200
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundToTransparent()V

    .line 201
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->bringToFront()V

    .line 202
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    sget v1, Lcom/eventgenie/android/R$id;->flicker_gallery_view:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;

    .line 205
    sget v1, Lcom/eventgenie/android/R$id;->caption_title:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoTitle:Landroid/widget/TextView;

    .line 206
    sget v1, Lcom/eventgenie/android/R$id;->caption_date:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoDate:Landroid/widget/TextView;

    .line 207
    sget v1, Lcom/eventgenie/android/R$id;->caption_position:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoPosition:Landroid/widget/TextView;

    .line 208
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->mFadeOut:Landroid/view/animation/Animation;

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "photoset_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->photosetId:Ljava/lang/String;

    .line 211
    const-string v1, "photo_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->photoPosition:I

    .line 213
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFlickr()Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;->getUser()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->userId:Ljava/lang/String;

    .line 215
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->fadeTimer:Ljava/util/Timer;

    .line 219
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$3;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 257
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getPhotos()V

    .line 258
    return-void
.end method

.method public onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->hasPhotos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->populateGallery(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;

    iget v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->photoPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 315
    return-void

    .line 311
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 312
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    return-object v0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    sget v3, Lcom/eventgenie/android/R$string;->flickr_share:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlDesktop:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "subject":Ljava/lang/String;
    new-instance v0, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v0, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 270
    .local v0, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {v0, p1, v2, v1}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlMobile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlMobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    sget v0, Lcom/eventgenie/android/R$string;->toast_gallery_please_wait:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
