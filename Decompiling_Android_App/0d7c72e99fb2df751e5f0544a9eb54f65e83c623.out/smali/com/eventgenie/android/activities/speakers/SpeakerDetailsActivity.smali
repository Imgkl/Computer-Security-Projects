.class public Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "SpeakerDetailsActivity.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/base/FragmentDataProvider;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "speakers"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mIvPhoto:Landroid/widget/ImageView;

.field private mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

.field private mSpeakerConfig:Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

.field private mTvCompany:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

.field private mViewConfig:Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 72
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 73
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 74
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 75
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    return-void
.end method

.method private populateUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Speaker;->mugShotUrl:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getSpeakerFeatures()Lcom/genie_connect/android/db/config/features/SpeakerFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/features/SpeakerFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->pickFirstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "logoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/Speaker;->getFullNameWithTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v1, v1, Lcom/genie_connect/common/db/model/Speaker;->shareUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    .line 214
    sget v1, Lcom/eventgenie/android/R$id;->header_speaker:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 215
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->speaker_name:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 218
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->speaker_company:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mTvCompany:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIvPhoto:Landroid/widget/ImageView;

    .line 221
    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mTvCompany:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Speaker;->companyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeakerConfig:Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->showMugshot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIvPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeakerConfig:Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->showMugshot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIvPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeakerConfig:Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->enableSharing()Z

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    invoke-virtual {p0, v1, v2, v3}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLcom/genie_connect/common/db/entityfactory/EGEntity;)V

    .line 234
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setupTabs()V

    .line 235
    return-void
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
    .line 259
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/genie_connect/common/db/model/Speaker;

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    .line 283
    :goto_0
    return-object v0

    .line 261
    :cond_0
    const-class v0, Landroid/support/v4/content/Loader;

    if-ne p1, v0, :cond_2

    .line 262
    const/16 v0, 0x66

    if-ne p2, v0, :cond_1

    .line 263
    new-instance v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 271
    :cond_1
    const/16 v0, 0x67

    if-ne p2, v0, :cond_2

    .line 272
    new-instance v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$2;-><init>(Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 283
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "speakers"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget v3, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "entity_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->setEntityId(J)V

    .line 119
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 122
    const-class v3, Lcom/genie_connect/android/repository/SpeakerRepository;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/SpeakerRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/SpeakerRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/Speaker;

    iput-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    .line 124
    iget-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    if-nez v3, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->finish()V

    .line 141
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeakerConfig:Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    .line 128
    const-class v3, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    iget-object v4, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->createSpeakerDetailViewConfiguration(Lcom/genie_connect/common/db/model/Speaker;)Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;

    .line 129
    new-instance v3, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, p0, v4, v5}, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    .line 130
    invoke-direct {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->populateUI()V

    .line 132
    iget-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mSpeakerConfig:Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->showActivityStream()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 134
    .local v2, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v3, v4, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onDestroy()V

    .line 160
    return-void
.end method

.method public onFeedbackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mTvCompany:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->showFullScreenImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onResume()V

    .line 150
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_noun_format_2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 192
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 198
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onStart()V

    .line 203
    return-void
.end method

.method protected setupTabs()V
    .locals 4

    .prologue
    .line 239
    new-instance v0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;

    iget-object v3, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;Lcom/eventgenie/android/fragments/factory/FragmentFactory;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 245
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 247
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 248
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 249
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 254
    :cond_0
    return-void
.end method
