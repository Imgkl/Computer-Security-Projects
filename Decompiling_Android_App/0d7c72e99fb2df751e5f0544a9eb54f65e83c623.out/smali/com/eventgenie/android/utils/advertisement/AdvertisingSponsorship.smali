.class public Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;
.super Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
.source "AdvertisingSponsorship.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

.field private mShouldAdViewBeVisible:Z

.field private mSlideUp:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/android/db/config/BaseConfig;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p4, "namespace"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 71
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/BaseConfig;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p3, "namespace"    # J

    .prologue
    .line 76
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/android/db/config/BaseConfig;J)V

    .line 77
    return-void
.end method


# virtual methods
.method public adClick()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 110
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorLinkType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorExhibitor()J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11, v12}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    .line 116
    .local v6, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v6}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 121
    .end local v6    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_1
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 122
    .local v0, "appCfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorInfoPage()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfoPage(J)Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    move-result-object v3

    .line 123
    .local v3, "info":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    const/4 v6, 0x0

    .line 125
    .restart local v6    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v5, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    .line 127
    .local v5, "intentFactory":Lcom/eventgenie/android/utils/intents/IntentFactory;
    if-nez v3, :cond_3

    .line 128
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    .line 129
    .local v2, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorInfoPage()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 131
    .local v4, "infopages":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 132
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorInfoPage()J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11, v12}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    .line 134
    :cond_1
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 148
    .end local v2    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v4    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, "b":Landroid/os/Bundle;
    const-string v7, "hide_advert"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v6}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 137
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v7, "list"

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 138
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfopageList(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    goto :goto_1

    .line 140
    :cond_4
    const-string v7, "page"

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 141
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11, v12}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ensureVisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getOrientation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advert_top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iput-boolean v3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mShouldAdViewBeVisible:Z

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getAdView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mSlideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iput-boolean v3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mShouldAdViewBeVisible:Z

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public setup()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getAdView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 83
    .local v0, "hasAdLayout":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/BaseConfig;->isSponsorDisplayed()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorBannerUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getOrientation()Ljava/lang/String;

    move-result-object v4

    const-string v5, "advert_top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getAdView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/eventgenie/android/R$anim;->slidein:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mSlideUp:Landroid/view/animation/Animation;

    .line 91
    iget-object v3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorBannerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iput-boolean v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mShouldAdViewBeVisible:Z

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->ensureVisible()V

    .line 95
    iget-object v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mBaseConfig:Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorBannerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->normaliseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 98
    iget-object v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mCallback:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mCallback:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    invoke-interface {v2}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;->onAfterAdvertisementCampaignSetup()V

    .line 103
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .end local v0    # "hasAdLayout":Z
    :cond_2
    move v0, v3

    .line 81
    goto :goto_0
.end method

.method public shouldAdViewBeVisible()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;->mShouldAdViewBeVisible:Z

    return v0
.end method
