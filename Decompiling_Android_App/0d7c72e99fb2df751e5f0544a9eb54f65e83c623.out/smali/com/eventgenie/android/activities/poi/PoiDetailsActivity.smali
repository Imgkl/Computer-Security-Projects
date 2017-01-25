.class public Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "PoiDetailsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/eventgenie/android/fragments/base/FragmentDataProvider;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "poi"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field private static final INDOOR_MAPS_DISABLE:I = 0x1389

.field private static final INDOOR_MAPS_ENABLE:I = 0x1388


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAddressLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

.field private mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

.field private mImageViewLogo:Landroid/widget/ImageView;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mPoi:Lcom/genie_connect/common/db/model/Poi;

.field private mShowShareUrl:Z

.field private mTextViewName:Landroid/widget/TextView;

.field private mViewConfig:Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->POIS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 83
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 84
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 85
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 86
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddressLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddressLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;)Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    return-object v0
.end method

.method private areWeFullScreen()Z
    .locals 2

    .prologue
    .line 105
    sget v0, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:switcher:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->pager:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 122
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    .line 125
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateUI()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 309
    sget v2, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 310
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->logo:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mImageViewLogo:Landroid/widget/ImageView;

    .line 313
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mTextViewName:Landroid/widget/TextView;

    .line 315
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    iget-object v3, v3, Lcom/genie_connect/common/db/model/Poi;->thumbUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getPoiFeatures()Lcom/genie_connect/android/db/config/features/PoiFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/PoiFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->pickFirstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "logoUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Poi;->shareUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Poi;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v0

    .line 325
    .local v0, "cfg":Lcom/genie_connect/android/db/config/widgets/PoiConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->enableSharing()Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mShowShareUrl:Z

    .line 327
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mImageViewLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 335
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->btn_title_layers:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 338
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->enableSharing()Z

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    invoke-virtual {p0, v2, v3, v4}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLcom/genie_connect/common/db/entityfactory/EGEntity;)V

    .line 339
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setupTabs()V

    .line 340
    return-void

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mImageViewLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mImageViewLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupMapIfNeeded()Z
    .locals 2

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    .line 345
    .local v0, "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 346
    :cond_0
    const-string v1, "^ POI: Map not ready!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    .line 352
    :goto_0
    return v1

    .line 350
    :cond_1
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->setup()V

    .line 352
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private toggleActionBarButtons()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 379
    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v4}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->getCount()I

    move-result v4

    if-ge v4, v6, :cond_0

    .line 416
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->areWeFullScreen()Z

    move-result v2

    .line 383
    .local v2, "isFullScreen":Z
    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 385
    .local v1, "currentItem":I
    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v4, v1}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->getItemConfig(I)Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    move-result-object v0

    .line 387
    .local v0, "config":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getType()Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Map:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    if-ne v4, v5, :cond_3

    .line 388
    const/4 v3, 0x1

    .line 389
    .local v3, "isMap":Z
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setupMapIfNeeded()Z

    .line 390
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->onPlaceMarkerClick(Landroid/view/View;)V

    .line 395
    :goto_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    check-cast v4, Lcom/eventgenie/android/ui/other/CustomViewPager;

    if-nez v3, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/other/CustomViewPager;->setPagingEnabled(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->ROUTE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v4, v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 399
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->LAYERS:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v4, v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 400
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->PLACEMARKER:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v4, v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 401
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->MY_LOCATION:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v4, v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 402
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionFullScreen(ZZ)V

    .line 405
    if-eqz v2, :cond_1

    .line 406
    invoke-direct {p0, v7}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->toggleFullScreen(Z)V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mShowShareUrl:Z

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget-object v8, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    if-nez v3, :cond_5

    move v4, v6

    :goto_3
    invoke-virtual {v5, v8, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 414
    :cond_2
    if-nez v3, :cond_6

    move v4, v6

    :goto_4
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->displayFavButtonIfApplicable(Z)V

    .line 415
    if-nez v3, :cond_7

    :goto_5
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->displayNoteButtonIfApplicable(Z)V

    goto/16 :goto_0

    .line 392
    .end local v3    # "isMap":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isMap":Z
    goto :goto_1

    :cond_4
    move v5, v7

    .line 395
    goto :goto_2

    :cond_5
    move v4, v7

    .line 410
    goto :goto_3

    :cond_6
    move v4, v7

    .line 414
    goto :goto_4

    :cond_7
    move v6, v7

    .line 415
    goto :goto_5
.end method

.method private toggleFullScreen(Z)V
    .locals 2
    .param p1, "goFullScreen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 419
    if-eqz p1, :cond_0

    .line 420
    sget v0, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->toggleFullscreen(Z)V

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    sget v0, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->toggleFullscreen(Z)V

    goto :goto_0
.end method


# virtual methods
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
    .line 431
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/genie_connect/common/db/model/Poi;

    if-ne p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "poi"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0x1388

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    .line 133
    .local v0, "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 134
    :cond_0
    const-string v1, "^ POI: Map not ready!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v1, v2

    .line 147
    :cond_1
    :goto_0
    return v1

    .line 138
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->setMapType(I)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 142
    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->setIndoorEnabled(Z)V

    goto :goto_0

    .line 143
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x1389

    if-ne v3, v4, :cond_1

    .line 144
    invoke-virtual {v0, v2}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->setIndoorEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 152
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    sget v3, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "entity_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->setEntityId(J)V

    .line 158
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->details_title_format:I

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    const-class v3, Lcom/genie_connect/android/repository/PoiRepository;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/PoiRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/PoiRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/Poi;

    iput-object v3, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    .line 163
    const-class v3, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    iget-object v4, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->createPoiDetailViewConfiguration(Lcom/genie_connect/common/db/model/Poi;)Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;

    .line 164
    new-instance v3, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, p0, v4, v5}, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    .line 166
    iget-object v3, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    if-nez v3, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->finish()V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->showActivityStream()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 174
    .local v2, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v3, v4, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1

    .line 169
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->populateUI()V

    goto :goto_0

    .line 181
    :cond_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->btn_title_layers:I

    if-ne v3, v4, :cond_1

    .line 186
    const-string v3, "Map Layer"

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    const-string v3, "Normal"

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 188
    const/4 v3, 0x2

    const-string v4, "Satellite"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 189
    const/4 v3, 0x3

    const-string v4, "Terrain"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 190
    const/4 v3, 0x4

    const-string v4, "Hybrid"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    .line 194
    .local v0, "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->isIndoorEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    const/16 v3, 0x1389

    const-string v4, "Disable Indoor Maps"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 202
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 205
    .end local v0    # "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->showActivityStream()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 207
    .local v2, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v3, v4, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1

    .line 198
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    .restart local v0    # "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    :cond_3
    const/16 v3, 0x1388

    const-string v4, "Enable Indoor Maps"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 213
    .end local v0    # "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    :cond_4
    return-void
.end method

.method public onFullScreenToggle(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_title_full_screen:I

    if-ne v0, v1, :cond_1

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->toggleFullScreen(Z)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_title_full_screen_return:I

    if-ne v0, v1, :cond_0

    .line 220
    sget v0, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->toggleFullScreen(Z)V

    goto :goto_0
.end method

.method public onLayersClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->openContextMenu(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method public onMyLocationClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    .line 232
    .local v0, "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 233
    :cond_0
    const-string v1, "^ POI: Map not ready!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->focusOnMyLocationAndCentreMarker()V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 244
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 241
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->toggleActionBarButtons()V

    .line 249
    return-void
.end method

.method public onPlaceMarkerClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    .line 254
    .local v0, "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    const-string v1, "^ POI: Map not ready!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddressLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->focusOnMarker()V

    goto :goto_0

    .line 262
    :cond_2
    new-instance v1, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;

    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddress:Ljava/lang/String;

    invoke-direct {v1, p0, p0, v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onRouteClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getMapDirectionsIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 287
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_exhibitor_format:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 295
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 301
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onStart()V

    .line 306
    return-void
.end method

.method protected setupTabs()V
    .locals 4

    .prologue
    .line 358
    new-instance v0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;

    iget-object v3, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;Lcom/eventgenie/android/fragments/factory/FragmentFactory;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    .line 359
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 360
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 364
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->buildAddressStringForDecoding(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddress:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 367
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 368
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 370
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 375
    invoke-direct {p0}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->toggleActionBarButtons()V

    .line 376
    return-void
.end method
