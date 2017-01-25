.class public Lcom/eventgenie/android/activities/products/ProductDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "ProductDetailsActivity.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/base/FragmentDataProvider;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "products"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final EXTRA_HIDE_EXHIBITOR_DETAILS:Ljava/lang/String; = "hide_exhibitor"


# instance fields
.field private mCfgProduct:Lcom/genie_connect/android/db/config/widgets/ProductConfig;

.field private mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

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

.field private mName:Landroid/widget/TextView;

.field private mProduct:Lcom/genie_connect/common/db/model/Product;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

.field private mViewConfig:Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 86
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 87
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 88
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 89
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/products/ProductDetailsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/products/ProductDetailsActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

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
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbProducts;->getProductImagesUrl(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 117
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v3, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    iget-object v2, v3, Lcom/genie_connect/common/db/model/Product;->mainImageUrl:Ljava/lang/String;

    .line 119
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    if-eqz v0, :cond_3

    .line 124
    :goto_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 136
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
    .line 140
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/base/ImageAdapter;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    sget v2, Lcom/eventgenie/android/R$layout;->product_thumbnail:I

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/eventgenie/android/adapters/base/ImageAdapter;-><init>(Ljava/util/List;Landroid/widget/ImageView$ScaleType;ILandroid/content/Context;)V

    .line 145
    .local v0, "adapter":Lcom/eventgenie/android/adapters/base/ImageAdapter;
    iget-object v1, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    return-void
.end method

.method private populateUI()V
    .locals 7

    .prologue
    .line 231
    sget v0, Lcom/eventgenie/android/R$id;->header_product_gallery:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 232
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->product_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mName:Landroid/widget/TextView;

    .line 234
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->productGallery:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mGallery:Landroid/widget/Gallery;

    .line 236
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Product;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Product;->shareUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    .line 247
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->isFeedbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->FEEDBACK:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getPhotos(Ljava/util/ArrayList;)V

    .line 253
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/eventgenie/android/activities/products/ProductDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/products/ProductDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mCfgProduct:Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->enableSharing()Z

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    invoke-virtual {p0, v0, v1, v2}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLcom/genie_connect/common/db/entityfactory/EGEntity;)V

    .line 270
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setupTabs()V

    .line 271
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mGallery:Landroid/widget/Gallery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected doReloadAfterSurveysSynced()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->populateUI()V

    .line 190
    return-void
.end method

.method public getData(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
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
    .line 290
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/genie_connect/common/db/model/Product;

    if-ne p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "products"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 150
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    sget v4, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setContentView(I)V

    .line 152
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "entity_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->setEntityId(J)V

    .line 156
    const-string v4, "hide_exhibitor"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 158
    .local v1, "hideExhibitorDetails":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->details_title_format:I

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v8

    sget-object v9, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v10, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v8, v9, v10}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(I[Ljava/lang/Object;)V

    .line 162
    const-class v4, Lcom/genie_connect/android/repository/ProductRepository;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/repository/ProductRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/repository/ProductRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/db/model/Product;

    iput-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    .line 163
    const-class v4, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    iget-object v5, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->createProductDetailViewConfiguration(Lcom/genie_connect/common/db/model/Product;)Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;

    .line 164
    iget-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;

    invoke-virtual {v4, v1}, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->setHideExhibitors(Z)V

    .line 165
    new-instance v4, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    iget-object v5, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    iget-object v5, v5, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v4, p0, v5, v6}, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    .line 167
    iget-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mProduct:Lcom/genie_connect/common/db/model/Product;

    if-nez v4, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->finish()V

    .line 176
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mCfgProduct:Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->showActivityStream()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 178
    .local v3, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v4, v5, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v11}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1

    .line 170
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getImages()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mImageUrls:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mCfgProduct:Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    .line 173
    invoke-direct {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->populateUI()V

    goto :goto_0

    .line 184
    :cond_2
    return-void
.end method

.method public onFeedbackClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->showFeedback()V

    .line 199
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->isOverrideSurvey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    goto :goto_0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_product_format:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 221
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 227
    return-void
.end method

.method protected setupTabs()V
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;

    iget-object v3, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;Lcom/eventgenie/android/fragments/factory/FragmentFactory;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    .line 275
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 278
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 279
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 280
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 282
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 285
    :cond_0
    return-void
.end method
