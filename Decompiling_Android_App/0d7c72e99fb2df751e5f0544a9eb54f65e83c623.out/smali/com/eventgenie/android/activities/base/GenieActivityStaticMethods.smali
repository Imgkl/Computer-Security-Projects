.class public Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;
.super Ljava/lang/Object;
.source "GenieActivityStaticMethods.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doLoginActivityResult(Landroid/app/Activity;II)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .prologue
    const/16 v3, 0x1771

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    const/16 v2, 0x1389

    if-ne p1, v2, :cond_2

    .line 57
    if-ne p2, v3, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    const/16 v2, 0x138a

    if-ne p1, v2, :cond_3

    .line 66
    if-eq p2, v3, :cond_0

    move v0, v1

    .line 71
    goto :goto_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public static doSecureCheck(Landroid/app/Activity;ZZ)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "isSecure"    # Z
    .param p2, "isHomeActivity"    # Z

    .prologue
    const/16 v4, 0x1389

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureApp()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 83
    invoke-static {p0, v2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setActivitySecurityFlag(Landroid/app/Activity;Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureApp()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity;

    if-nez v1, :cond_3

    .line 88
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    const-string v1, "is_home"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p0, v2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setActivitySecurityFlag(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 96
    :cond_3
    if-eqz p1, :cond_5

    .line 97
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    const-string v1, "is_home"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-static {p0, v2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setActivitySecurityFlag(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 105
    :cond_5
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->isContinueAsGuestEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isGuestModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    const-string v1, "is_home"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    :cond_6
    invoke-static {p0, v2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setActivitySecurityFlag(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public static getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    return-object v0
.end method

.method public static isInsideTab(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "parentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setActivitySecurityFlag(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "isSecure"    # Z

    .prologue
    .line 137
    instance-of v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Lcom/eventgenie/android/activities/base/GenieListActivity;

    .end local p0    # "a":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->setIsAuthenticated(Z)V

    .line 149
    :goto_0
    return-void

    .line 139
    .restart local p0    # "a":Landroid/app/Activity;
    :cond_0
    instance-of v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    if-eqz v0, :cond_1

    .line 140
    check-cast p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .end local p0    # "a":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->setIsAuthenticated(Z)V

    goto :goto_0

    .line 141
    .restart local p0    # "a":Landroid/app/Activity;
    :cond_1
    instance-of v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;

    if-eqz v0, :cond_2

    .line 142
    check-cast p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;

    .end local p0    # "a":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->setIsAuthenticated(Z)V

    goto :goto_0

    .line 143
    .restart local p0    # "a":Landroid/app/Activity;
    :cond_2
    instance-of v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    if-eqz v0, :cond_3

    .line 144
    check-cast p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    .end local p0    # "a":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->setIsAuthenticated(Z)V

    goto :goto_0

    .line 147
    .restart local p0    # "a":Landroid/app/Activity;
    :cond_3
    check-cast p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    .end local p0    # "a":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->setIsAuthenticated(Z)V

    goto :goto_0
.end method

.method protected static setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    .locals 8
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "appConfig"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "widgetConfig"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p3, "campaignOverride"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .prologue
    const-wide/16 v6, 0x0

    .line 152
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    .line 155
    .local v4, "namespace":J
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->isNewSponsorship()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 157
    new-instance v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;-><init>(Landroid/app/Activity;JJ)V

    .line 172
    .local v0, "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :goto_0
    invoke-virtual {v0, p4}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->setCallback(Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 173
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->setup()V

    .line 174
    return-object v0

    .line 158
    .end local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorCampaignId()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 159
    new-instance v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorCampaignId()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;-><init>(Landroid/app/Activity;JJ)V

    .restart local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    goto :goto_0

    .line 161
    .end local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :cond_1
    new-instance v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getSponsorCampaignId()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;-><init>(Landroid/app/Activity;JJ)V

    .restart local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    goto :goto_0

    .line 165
    .end local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/BaseConfig;->getSponsorBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    new-instance v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;

    invoke-direct {v0, p0, p2, v4, v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;-><init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/BaseConfig;J)V

    .restart local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    goto :goto_0

    .line 168
    .end local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    :cond_3
    new-instance v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingSponsorship;-><init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/BaseConfig;J)V

    .restart local v0    # "ad":Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
    goto :goto_0
.end method
