.class Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;
.super Landroid/os/AsyncTask;
.source "AdvertisingCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdBannerClickTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/eventgenie/android/utils/intents/NavigationIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;-><init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 245
    const/4 v5, 0x0

    .line 247
    .local v5, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v8

    if-nez v8, :cond_0

    .line 295
    :goto_0
    return-object v7

    .line 249
    :cond_0
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v9}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getId()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyAdvertisementClicked(Landroid/content/Context;J)Z

    .line 252
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getLinkType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_1
    move-object v7, v5

    .line 295
    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v10, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v10}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getExhibitorId()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11, v7}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    .line 259
    goto :goto_1

    .line 261
    :pswitch_1
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 262
    .local v0, "appCfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v9}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getInfoPageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfoPage(J)Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    move-result-object v3

    .line 264
    .local v3, "info":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    new-instance v6, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    .line 265
    .local v6, "intentFactory":Lcom/eventgenie/android/utils/intents/IntentFactory;
    if-nez v3, :cond_4

    .line 266
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    .line 267
    .local v2, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v9}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getInfoPageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 269
    .local v4, "infopages":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 270
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v10, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    invoke-static {v10}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getInfoPageId()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11, v7}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    .line 272
    :cond_2
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 284
    .end local v2    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v4    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    :cond_3
    :goto_2
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v1, "b":Landroid/os/Bundle;
    const-string v7, "hide_advert"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    invoke-virtual {v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 274
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_4
    const-string v8, "list"

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 275
    iget-object v7, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfopageList(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    goto :goto_2

    .line 276
    :cond_5
    const-string v8, "page"

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 277
    iget-object v8, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11, v7}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    goto :goto_2

    .line 279
    :cond_6
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 280
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    goto :goto_2

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V
    .locals 2
    .param p1, "result"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAllowOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$400(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->onPostExecute(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAllowOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$400(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 310
    return-void
.end method
