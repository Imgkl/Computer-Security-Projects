.class public Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "ExhibitorDetailsActivity.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/base/FragmentDataProvider;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "exhibitors"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

.field private mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

.field private mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

.field private mGallery:Landroid/widget/Gallery;

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

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mLogo:Landroid/widget/ImageView;

.field private mTvName:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

.field private mViewConfig:Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mVisitorId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 90
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 91
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 92
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 93
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method private getImages()Ljava/util/ArrayList;
    .locals 6
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
    .line 396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsImagesUrl(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 398
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v2, v3, Lcom/genie_connect/common/db/model/Exhibitor;->logoUrl:Ljava/lang/String;

    .line 400
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    if-eqz v0, :cond_3

    .line 405
    :goto_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 417
    :cond_3
    return-object v1
.end method

.method private getPhotos(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/base/ImageAdapter;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    sget v2, Lcom/eventgenie/android/R$layout;->product_thumbnail:I

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/eventgenie/android/adapters/base/ImageAdapter;-><init>(Ljava/util/List;Landroid/widget/ImageView$ScaleType;ILandroid/content/Context;)V

    .line 298
    .local v0, "adapter":Lcom/eventgenie/android/adapters/base/ImageAdapter;
    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 299
    return-void
.end method

.method private populateUI()V
    .locals 6

    .prologue
    .line 241
    sget v2, Lcom/eventgenie/android/R$id;->header_product_gallery:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 242
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->product_name:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->productGallery:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    iput-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mGallery:Landroid/widget/Gallery;

    .line 246
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Exhibitor;->shareUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Exhibitor;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getPhotos(Ljava/util/ArrayList;)V

    .line 251
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mGallery:Landroid/widget/Gallery;

    new-instance v3, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorVisitors(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 269
    .local v1, "visitors":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "visitors"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    .line 270
    :cond_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 272
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->enableNetworking()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-wide v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    .line 275
    .local v0, "cfg":Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->MEETING:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMeetings()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->MESSAGE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMessages()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 282
    .end local v0    # "cfg":Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->enableSharing()Z

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-virtual {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLcom/genie_connect/common/db/entityfactory/EGEntity;)V

    .line 284
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setupTabs()V

    .line 285
    return-void

    .line 264
    .end local v1    # "visitors":Luk/co/alt236/easycursor/EasyCursor;
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mGallery:Landroid/widget/Gallery;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getData(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 4
    .param p2, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/genie_connect/common/db/model/Exhibitor;

    if-ne p1, v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    .line 388
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const-class v0, Lcom/eventgenie/android/fragments/factory/FragmentFactory;

    if-ne p1, v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    goto :goto_0

    .line 373
    :cond_1
    const-class v0, Landroid/support/v4/content/Loader;

    if-ne p1, v0, :cond_3

    .line 374
    const/16 v0, 0x65

    if-ne p2, v0, :cond_2

    .line 375
    new-instance v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$2;-><init>(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 383
    :cond_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 384
    new-instance v0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;

    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v1, v1, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    goto :goto_0

    .line 388
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "exhibitors"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 140
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    sget v3, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "entity_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->setEntityId(J)V

    .line 146
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->details_title_format:I

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    .line 152
    iget-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->showActivityStream()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->hasWidget(Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 162
    const-class v3, Lcom/genie_connect/android/repository/ExhibitorRepository;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/ExhibitorRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/ExhibitorRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/Exhibitor;

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    .line 163
    const-class v3, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    iget-object v4, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->createExhibitorDetailViewConfiguration(Lcom/genie_connect/common/db/model/Exhibitor;)Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;

    .line 164
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    .line 165
    new-instance v3, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, p0, v4, v5}, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    .line 167
    iget-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    if-nez v3, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->finish()V

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 176
    .local v2, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v3, v4, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1

    .line 171
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getImages()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    .line 172
    invoke-direct {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->populateUI()V

    goto :goto_0

    .line 181
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onMeetingClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-wide v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->enableNetworking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 192
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-wide v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    const/4 v1, 0x0

    invoke-static {p0, v2, v3, v6, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMeetingComposeIntent(Landroid/content/Context;JILandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {p0, v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onMessageClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-wide v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mExhibitorConfig:Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->enableNetworking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 209
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-wide v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mVisitorId:J

    const/4 v1, 0x0

    invoke-static {p0, v2, v3, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMessageComposeIntent(Landroid/content/Context;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_exhibitor_format:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 224
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 230
    return-void
.end method

.method protected setupTabs()V
    .locals 4

    .prologue
    .line 302
    new-instance v0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;

    iget-object v3, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;Lcom/eventgenie/android/fragments/factory/FragmentFactory;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    .line 307
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 308
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 309
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 310
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 311
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 360
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 363
    :cond_0
    return-void
.end method
