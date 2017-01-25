.class public Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "GenieBaseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

.field private mIsViewReady:Z

.field private mLoaderId:I

.field private final mRandom:Ljava/util/Random;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mRandom:Ljava/util/Random;

    .line 63
    iput v1, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mLoaderId:I

    .line 65
    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mIsViewReady:Z

    return-void
.end method

.method public static getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method private setupSponsorship(Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V
    .locals 14
    .param p1, "appConfig"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "widgetConfig"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p3, "campaignOverride"    # Ljava/lang/Long;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    .line 202
    .local v6, "namespace":J
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->isNewSponsorship()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    .line 206
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 213
    .local v4, "campaignId":J
    :goto_0
    new-instance v1, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct/range {v1 .. v7}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;-><init>(Landroid/app/Activity;Landroid/view/View;JJ)V

    .line 222
    .end local v4    # "campaignId":J
    .local v1, "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :goto_1
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->setup()V

    .line 224
    new-instance v0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment$1;

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment$1;-><init>(Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;)V

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iput-object v1, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 232
    return-void

    .line 207
    .end local v1    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorCampaignId()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_1

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorCampaignId()J

    move-result-wide v4

    .restart local v4    # "campaignId":J
    goto :goto_0

    .line 210
    .end local v4    # "campaignId":J
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getSponsorCampaignId()J

    move-result-wide v4

    .restart local v4    # "campaignId":J
    goto :goto_0

    .line 215
    .end local v4    # "campaignId":J
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    new-instance v1, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getView()Landroid/view/View;

    move-result-object v10

    move-object v8, v1

    move-object/from16 v11, p2

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/android/db/config/BaseConfig;J)V

    .restart local v1    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    goto :goto_1

    .line 218
    .end local v1    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :cond_3
    new-instance v1, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v11

    move-object v8, v1

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/android/db/config/BaseConfig;J)V

    .restart local v1    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    goto :goto_1
.end method


# virtual methods
.method public close(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 144
    return-void
.end method

.method public getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mLoaderId:I

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mLoaderId:I

    .line 102
    :cond_0
    iget v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mLoaderId:I

    return v0
.end method

.method public getProvider(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    return-object v0
.end method

.method protected isViewReady()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mIsViewReady:Z

    return v0
.end method

.method public markLoaderAsRunning(Z)V
    .locals 2
    .param p1, "running"    # Z

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->flipper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/fragments/base/GenericActivityFragmentMessaging;

    if-eqz v0, :cond_0

    .line 81
    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/base/GenericActivityFragmentMessaging;

    invoke-interface {v0}, Lcom/eventgenie/android/fragments/base/GenericActivityFragmentMessaging;->onLoaderStarted()V

    .line 87
    :cond_0
    :goto_2
    return-void

    .line 77
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/base/GenericActivityFragmentMessaging;

    invoke-interface {v0}, Lcom/eventgenie/android/fragments/base/GenericActivityFragmentMessaging;->onLoaderFinished()V

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mIsViewReady:Z

    .line 112
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 118
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->stopLoader()V

    .line 119
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 124
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->pause()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->resume()V

    .line 140
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    const-string v0, "fixForBug#19211"

    const-string v1, "possibleFixForBug#19211"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mIsViewReady:Z

    .line 171
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->shouldAdViewBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->ensureVisible()V

    .line 158
    :cond_0
    return-void
.end method

.method public requery(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 147
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->requery(Landroid/database/Cursor;)V

    .line 148
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 2
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->setupSponsorship(Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V

    .line 188
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V
    .locals 1
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p2, "overrideId"    # Ljava/lang/Long;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->setupSponsorship(Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V

    .line 192
    return-void
.end method

.method public startActivityCarefully(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 180
    return-void
.end method
