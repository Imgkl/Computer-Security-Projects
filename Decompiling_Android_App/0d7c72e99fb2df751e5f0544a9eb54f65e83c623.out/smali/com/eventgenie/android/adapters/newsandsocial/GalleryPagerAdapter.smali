.class public Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GalleryPagerAdapter.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final darkGreenColor:I

.field private final entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final images:[Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "images"    # [Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->title:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/eventgenie/android/R$color;->DarkGreen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->darkGreenColor:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 178
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "ret":I
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    array-length v0, v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_1
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 9
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ ACTIVITYSTREAM GalleryPagerAdapter instantiate start for pos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 75
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    array-length v3, v6

    .line 81
    .local v3, "offset1":I
    :goto_0
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 82
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 88
    .local v4, "offset2":I
    :goto_1
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    array-length v6, v6

    if-ge p2, v6, :cond_3

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ ACTIVITYSTREAM GalleryPagerAdapter instantiate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as ImageView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 92
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "imageView":Landroid/widget/ImageView;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    new-instance v6, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;

    invoke-direct {v6, p0, p2}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;

    aget-object v7, v7, p2

    invoke-virtual {v6, v7, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 111
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v1, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 145
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_2
    return-object v1

    .line 78
    .end local v3    # "offset1":I
    .end local v4    # "offset2":I
    .restart local p1    # "collection":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "offset1":I
    goto :goto_0

    .line 85
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "offset2":I
    goto :goto_1

    .line 114
    :cond_3
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    if-ge p2, v6, :cond_0

    .line 115
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    sub-int v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/container/EntityWrapper;

    .line 116
    .local v0, "entity":Lcom/eventgenie/android/container/EntityWrapper;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ ACTIVITYSTREAM GalleryPagerAdapter instantiate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as ImageView from entity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/eventgenie/android/container/EntityWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 120
    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;

    sub-int v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual {v6}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 121
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    new-instance v6, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;

    invoke-direct {v6, p0, p2, v3}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;II)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    invoke-interface {v0}, Lcom/eventgenie/android/container/EntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 133
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v1, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 137
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .restart local p1    # "collection":Landroid/view/View;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 138
    .local v2, "li":Landroid/view/LayoutInflater;
    sget v6, Lcom/eventgenie/android/R$layout;->card_session_entity_large:I

    invoke-virtual {v2, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 139
    .local v5, "view":Landroid/view/View;
    invoke-static {v5, v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->setContent(Landroid/view/View;Lcom/eventgenie/android/container/EntityWrapper;)V

    .line 140
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v5, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v1, v5

    .line 142
    goto/16 :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 182
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 191
    return-void
.end method
