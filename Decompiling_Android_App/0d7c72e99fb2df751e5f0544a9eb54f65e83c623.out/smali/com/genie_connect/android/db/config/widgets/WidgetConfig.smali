.class public Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "WidgetConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;,
        Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    }
.end annotation


# instance fields
.field private final mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/android/db/config/GenieWidget;",
            "Lcom/genie_connect/android/db/config/BaseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoPageIntentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/eventgenie/android/utils/intents/NavigationIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAppSecure:Z

.field private final mModuleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespace:J

.field private final mUseEventSelectorAsDash:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 10
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 125
    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v4, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 128
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mNamespace:J

    .line 129
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->isUseEventSelectorAsHomescreen()Z

    move-result v4

    iput-boolean v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mUseEventSelectorAsDash:Z

    .line 130
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureApp()Z

    move-result v4

    iput-boolean v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mIsAppSecure:Z

    .line 131
    const-string/jumbo v4, "widgets"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 133
    .local v2, "parentObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 134
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPages:Ljava/util/Map;

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPageIntentCache:Ljava/util/Map;

    .line 136
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    .line 137
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    .line 139
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    iget-wide v8, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mNamespace:J

    invoke-direct {v6, v7, v8, v9}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;-><init>(Lorg/json/JSONObject;J)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/NewsConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/NewsConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/SurveysConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/SurveysConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    new-instance v6, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 164
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 165
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 166
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 167
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 168
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 169
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 170
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_QRCODES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 171
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SETTINGS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 172
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 173
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v4, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 176
    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 177
    .local v3, "widgetKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/android/db/config/GenieWidget;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/GenieWidget;

    .line 178
    .local v1, "key":Lcom/genie_connect/android/db/config/GenieWidget;
    iget-object v5, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPages:Ljava/util/Map;

    iget-object v4, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/BaseConfig;->getWidgetInfoPages()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 181
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Lcom/genie_connect/android/db/config/GenieWidget;
    .end local v3    # "widgetKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/android/db/config/GenieWidget;>;"
    :cond_0
    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPages:Ljava/util/Map;

    .line 182
    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPageIntentCache:Ljava/util/Map;

    .line 183
    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    .line 184
    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    .line 186
    :cond_1
    return-void
.end method

.method private static final addBaseConfig(Ljava/util/Map;Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "parentObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/android/db/config/GenieWidget;",
            "Lcom/genie_connect/android/db/config/BaseConfig;",
            ">;",
            "Lcom/genie_connect/android/db/config/GenieWidget;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/genie_connect/android/db/config/GenieWidget;Lcom/genie_connect/android/db/config/BaseConfig;>;"
    new-instance v0, Lcom/genie_connect/android/db/config/BaseConfig;

    invoke-static {p2, p1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    return-void
.end method

.method private static addSecurity(Landroid/content/Context;Landroid/os/Bundle;Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    .line 1036
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const-string v0, "is_secure"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1039
    :cond_0
    return-void
.end method

.method private static addSecurity(Landroid/content/Context;Landroid/os/Bundle;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "cfg"    # Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    .prologue
    .line 1042
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "is_secure"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1045
    :cond_0
    return-void
.end method

.method private getInfoModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieMobileModule;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .param p3, "iconSet"    # Ljava/lang/String;
    .param p4, "titleGrid"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v13, 0x0

    .line 392
    .local v13, "b":Landroid/os/Bundle;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v3

    const-class v4, Lcom/genie_connect/android/repository/InfoPageRepository;

    invoke-virtual {v3, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/genie_connect/android/repository/InfoPageRepository;

    .line 395
    .local v16, "repo":Lcom/genie_connect/android/repository/InfoPageRepository;
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/repository/InfoPageRepository;->hasPermissionToView(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    const/4 v2, 0x0

    .line 477
    :goto_0
    return-object v2

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPageIntentCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPageIntentCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .line 445
    .local v7, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_1
    if-nez v7, :cond_9

    .line 446
    const/4 v2, 0x0

    .local v2, "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    goto :goto_0

    .line 402
    .end local v2    # "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    const-string v3, "list"

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 403
    invoke-virtual/range {p0 .. p2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfopageList(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v7

    .line 404
    .restart local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v13, Landroid/os/Bundle;

    .end local v13    # "b":Landroid/os/Bundle;
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 405
    .restart local v13    # "b":Landroid/os/Bundle;
    const-string/jumbo v3, "widget_type"

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 408
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroupForEntity(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v15

    .line 409
    .local v15, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v3

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v3, v4, v5, v15}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v12

    .line 411
    .local v12, "allowedOpen":Z
    if-nez v12, :cond_4

    .line 412
    sget v3, Lcom/eventgenie/android/R$string;->open_widget_permissions_failure:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 414
    .local v14, "failureMessage":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {v15}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v14

    .line 417
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ CONFIG: visitor does not have permission to OPEN widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 418
    if-nez v13, :cond_3

    .line 419
    new-instance v13, Landroid/os/Bundle;

    .end local v13    # "b":Landroid/os/Bundle;
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 421
    .restart local v13    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v3, "open_widget_allowed_extra"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    const-string v3, "open_widget_allowed_permission_message_extra"

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v14    # "failureMessage":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v13}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 441
    .end local v12    # "allowedOpen":Z
    .end local v15    # "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPageIntentCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 427
    .end local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_5
    const-string v3, "page"

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 428
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;Z)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v7

    .restart local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_2

    .line 430
    .end local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_6
    const-string/jumbo v3, "xmlpayload"

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 431
    invoke-static/range {p1 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->getXmlPayloadIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v7

    .restart local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_2

    .line 434
    .end local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->isCanOpenNatively()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getNativeAppSchemaUri()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfopageRemoteURLIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v7

    .restart local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_2

    .line 437
    .end local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_2

    .line 448
    :cond_9
    invoke-virtual {v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 449
    if-nez v13, :cond_a

    .line 450
    new-instance v13, Landroid/os/Bundle;

    .end local v13    # "b":Landroid/os/Bundle;
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 452
    .restart local v13    # "b":Landroid/os/Bundle;
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addSecurity(Landroid/content/Context;Landroid/os/Bundle;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)V

    .line 453
    invoke-virtual {v7, v13}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 454
    if-nez p4, :cond_b

    .line 455
    new-instance v2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mNamespace:J

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getIcon()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    move-object/from16 v3, p1

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/genie_connect/android/db/config/GenieMobileModule;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/GenieWidget;)V

    .restart local v2    # "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    goto/16 :goto_0

    .line 466
    .end local v2    # "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_b
    new-instance v2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mNamespace:J

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getIcon()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    move-object/from16 v3, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/genie_connect/android/db/config/GenieMobileModule;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/GenieWidget;)V

    .restart local v2    # "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    goto/16 :goto_0
.end method

.method private static getInfopageRemoteURLIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infopageId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "canOpenNatively"    # Z
    .param p6, "appCustomSchemaUri"    # Ljava/lang/String;

    .prologue
    .line 1048
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v2, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1049
    .local v1, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1050
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "entity_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1051
    const-string/jumbo v2, "window_title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v2, "remote_html"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v2, "infopage_type"

    const-string/jumbo v3, "web"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v2, "infopage_can_open_natively"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1055
    const-string v2, "infopage_mobile_app_custom_schema_uri"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 1058
    return-object v1
.end method

.method private getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/WidgetLink;Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieMobileModule;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/genie_connect/android/db/config/WidgetLink;
    .param p3, "iconSet"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v15, "b":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v13

    .line 539
    .local v13, "widgetType":Lcom/genie_connect/android/db/config/GenieWidget;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->isWidgetAvailable(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getJSON()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getJSON()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-object v4, v5

    .line 801
    :goto_0
    return-object v4

    .line 543
    :cond_0
    const-string/jumbo v5, "window_title"

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v5, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    invoke-virtual {v13}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ CONFIG: Unknown Widget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 744
    const/4 v9, 0x0

    .line 745
    .local v9, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/16 v18, 0x0

    .line 746
    .local v18, "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    const/4 v14, 0x0

    .line 757
    .local v14, "associatedEntities":[Ljava/lang/String;
    :goto_1
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/BaseConfig;->isVisitorAbleToSeeWidget()Z

    move-result v5

    if-nez v5, :cond_5

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ CONFIG: visitor does not have permission to see widget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 760
    const/4 v4, 0x0

    .line 761
    .local v4, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getJSON()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 547
    .end local v4    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_0
    const/4 v14, 0x0

    .line 548
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppLaunch()Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v9

    .line 549
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppLaunch()Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    move-result-object v18

    .line 550
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto :goto_1

    .line 552
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "exhibitors"

    aput-object v6, v14, v5

    .line 554
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v18

    .line 555
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto :goto_1

    .line 557
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_2
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "poi"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "favouritepoi"

    aput-object v6, v14, v5

    .line 558
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 562
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto :goto_1

    .line 564
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_3
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "exhibitors"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "favouriteExhibitors"

    aput-object v6, v14, v5

    .line 566
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 567
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 569
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 571
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_4
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "products"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "favouriteproducts"

    aput-object v6, v14, v5

    .line 572
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 576
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 578
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_5
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "speakers"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "favouritespeakers"

    aput-object v6, v14, v5

    .line 580
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 583
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 585
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_6
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "visitors"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "favouritevisitors"

    aput-object v6, v14, v5

    .line 586
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 590
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 592
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_7
    const/4 v14, 0x0

    .line 593
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v18

    .line 595
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 597
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_8
    const/4 v14, 0x0

    .line 598
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFlickr()Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    move-result-object v18

    .line 600
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 602
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_9
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "games"

    aput-object v6, v14, v5

    .line 603
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isGamificationEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 604
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v18

    .line 609
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 606
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_2

    .line 611
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getInfoPage()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfoPage(J)Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    move-result-object v16

    .line 612
    .local v16, "cfg":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    if-eqz v16, :cond_2

    .line 613
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfoModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v4

    goto/16 :goto_0

    .line 615
    :cond_2
    const/4 v9, 0x0

    .line 616
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/16 v18, 0x0

    .line 617
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    const/4 v14, 0x0

    .line 619
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    goto/16 :goto_1

    .line 621
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v16    # "cfg":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_b
    const/4 v14, 0x0

    .line 622
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v18

    .line 624
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 626
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_c
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "apprefs"

    aput-object v6, v14, v5

    .line 627
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v18

    .line 629
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 631
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_d
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v14, 0x0

    .line 633
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyAgenda()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 636
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 638
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_e
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "favouritesession"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "favouritesubsession"

    aput-object v6, v14, v5

    .line 640
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    const-string v5, "is_favorite"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSessions()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 644
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 646
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_f
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "favouritedownloadables"

    aput-object v6, v14, v5

    .line 647
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 649
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 651
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_10
    const/4 v14, 0x0

    .line 652
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getWidgets()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v9

    .line 653
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string/jumbo v5, "widget_type"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v18

    .line 655
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 657
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_11
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "messages"

    aput-object v6, v14, v5

    .line 658
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/networking/MyInboxActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyInbox()Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;

    move-result-object v18

    .line 660
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 662
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_12
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "notes"

    aput-object v6, v14, v5

    .line 663
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/notes/NotesActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyNotes()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 665
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 667
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_13
    const/4 v14, 0x0

    .line 668
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string v5, "associated_non_my_event_widget"

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyQRCodes()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 671
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 673
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_14
    const/4 v14, 0x0

    .line 674
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/PreferencesActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSettings()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v18

    .line 676
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 678
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_15
    const/4 v14, 0x0

    .line 679
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string v5, "extra_rssfeed_widget"

    const/4 v6, 0x0

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNews()Lcom/genie_connect/android/db/config/widgets/NewsConfig;

    move-result-object v18

    .line 682
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 684
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_16
    const/4 v14, 0x0

    .line 685
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    move-result-object v18

    .line 687
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 689
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_17
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "poi"

    aput-object v6, v14, v5

    .line 690
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v18

    .line 692
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 694
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_18
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "products"

    aput-object v6, v14, v5

    .line 695
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v18

    .line 697
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 699
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_19
    const/4 v14, 0x0

    .line 700
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getQRReader()Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    move-result-object v18

    .line 702
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 704
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1a
    const/4 v14, 0x0

    .line 705
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const-string v5, "extra_rssfeed_widget"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getRssFeed()Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;

    move-result-object v18

    .line 708
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 710
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1b
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v14, 0x0

    .line 712
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->defaultToList()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 713
    const-string v5, "display_mode"

    const/4 v6, 0x2

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v18

    .line 716
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 718
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1c
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/GenericEntityWidgetActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 719
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "speakers"

    aput-object v6, v14, v5

    .line 720
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v18

    .line 721
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 723
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1d
    const/4 v14, 0x0

    .line 724
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getTwitter()Lcom/genie_connect/android/db/config/widgets/TwitterConfig;

    move-result-object v18

    .line 726
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 728
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1e
    const/4 v14, 0x0

    .line 729
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getYouTube()Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;

    move-result-object v18

    .line 731
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 733
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_1f
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "activitystreamposts"

    aput-object v6, v14, v5

    .line 734
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v18

    .line 736
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 738
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :pswitch_20
    const/4 v14, 0x0

    .line 739
    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    new-instance v9, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/SurveysListActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/db/config/BaseConfig;

    .line 741
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    goto/16 :goto_1

    .line 751
    .end local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "associatedEntities":[Ljava/lang/String;
    .end local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ CONFIG: Widget unavailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 752
    const/4 v9, 0x0

    .line 753
    .restart local v9    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    const/16 v18, 0x0

    .line 754
    .restart local v18    # "widgetConfig":Lcom/genie_connect/android/db/config/BaseConfig;
    const/4 v14, 0x0

    .restart local v14    # "associatedEntities":[Ljava/lang/String;
    goto/16 :goto_1

    .line 765
    :cond_5
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/BaseConfig;->isVisitorAbleToOpenWidget()Z

    move-result v5

    if-nez v5, :cond_7

    .line 767
    sget v5, Lcom/eventgenie/android/R$string;->open_widget_permissions_failure:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 769
    .local v17, "failureMessage":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/BaseConfig;->getPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/BaseConfig;->getPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 770
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/BaseConfig;->getPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v17

    .line 772
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ CONFIG: visitor does not have permission to OPEN widget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 773
    const-string v5, "open_widget_allowed_extra"

    const/4 v6, 0x0

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 774
    const-string v5, "open_widget_allowed_permission_message_extra"

    move-object/from16 v0, v17

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .end local v17    # "failureMessage":Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 778
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->addSecurity(Landroid/content/Context;Landroid/os/Bundle;Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 779
    const-string v5, "associated_entity_name"

    invoke-virtual {v15, v5, v14}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 780
    const-string/jumbo v5, "widget_type"

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 782
    :try_start_0
    const-string/jumbo v5, "window_title"

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_3
    invoke-virtual {v9, v15}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 787
    new-instance v4, Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mNamespace:J

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getIcon()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p1

    move-object/from16 v12, p3

    invoke-direct/range {v4 .. v13}, Lcom/genie_connect/android/db/config/GenieMobileModule;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/GenieWidget;)V

    .line 800
    .restart local v4    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/config/WidgetLink;->getJSON()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 797
    .end local v4    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    goto :goto_4

    .line 784
    .end local v4    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :catch_0
    move-exception v5

    goto :goto_3

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public static getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "windowTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/eventgenie/android/utils/intents/NavigationIntent;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1063
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1065
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "config"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1066
    const-string/jumbo v2, "window_title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v2, "infopage_type"

    const-string v3, "list"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1071
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v2, v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v2
.end method

.method private static isWidgetAvailable(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    const/4 v2, 0x0

    .line 1099
    if-nez p1, :cond_0

    .line 1125
    :goto_0
    return v2

    .line 1103
    :cond_0
    sget-object v3, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1122
    const/4 v2, 0x1

    .local v2, "res":Z
    goto :goto_0

    .line 1107
    .end local v2    # "res":Z
    :sswitch_0
    const/4 v2, 0x1

    .line 1109
    .restart local v2    # "res":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ CONFIG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    .end local v2    # "res":Z
    :sswitch_1
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isBackCameraPresent()Z

    move-result v0

    .line 1116
    .local v0, "hasBackCamera":Z
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isThisBlackberryHardware()Z

    move-result v1

    .line 1118
    .local v1, "isBlackberry":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    .line 1119
    .restart local v2    # "res":Z
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ CONFIG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method private static optJSONObject(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/GenieWidget;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    .line 1129
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPageIntentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 486
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mModuleCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 487
    return-void
.end method

.method public getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    return-object v0
.end method

.method public getAppLaunch()Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    return-object v0
.end method

.method public getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 3
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v0, 0x0

    .line 261
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-object v0

    .line 264
    :cond_0
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 266
    :pswitch_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v0

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_4
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_5
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_6
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 280
    :pswitch_7
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_8
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_9
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 286
    :pswitch_a
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_b
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_c
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_d
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_e
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_f
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v0

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 3
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "isFav"    # Z

    .prologue
    const/4 v0, 0x0

    .line 189
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-object v0

    .line 192
    :cond_0
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_2
    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_3
    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_4
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_5
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_6
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_7
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_8
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_9
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_a
    if-eqz p2, :cond_3

    .line 225
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_b
    if-eqz p2, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_c
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_d
    if-eqz p2, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_e
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_f
    if-eqz p2, :cond_6

    .line 250
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    goto/16 :goto_0

    .line 253
    :cond_6
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    return-object v0
.end method

.method public getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    return-object v0
.end method

.method public getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    return-object v0
.end method

.method public getFlickr()Lcom/genie_connect/android/db/config/widgets/FlickrConfig;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    return-object v0
.end method

.method public getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    return-object v0
.end method

.method public getHomeActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getHomeActivityIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeActivityIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openMultiEventWidget"    # Z

    .prologue
    const/4 v7, 0x1

    .line 336
    invoke-static {p1}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v1

    .line 338
    .local v1, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$bool;->proofer_available:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/genie_connect/android/security/CmsLoginManager;->isCMSUserAuthenticated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 339
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "is_home"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v3, v2

    .line 383
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 346
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "intent":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mUseEventSelectorAsDash:Z

    if-eqz v5, :cond_1

    .line 347
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v5, "is_home"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v3, v2

    .line 351
    .restart local v3    # "intent":Ljava/lang/Object;
    goto :goto_0

    .line 354
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intent":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v5

    invoke-virtual {v5, p1, v7}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getLayout(Landroid/content/Context;Z)I

    move-result v4

    .line 355
    .local v4, "layout":I
    sparse-switch v4, :sswitch_data_0

    .line 371
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_2

    .line 372
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v5, "is_home"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    const-string v5, "open_multievent_selector"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v3, v2

    .line 383
    .restart local v3    # "intent":Ljava/lang/Object;
    goto :goto_0

    .line 358
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intent":Ljava/lang/Object;
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 362
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 365
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 368
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 374
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x3ef -> :sswitch_3
    .end sparse-switch
.end method

.method public getInfoPage(J)Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 481
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mInfoPages:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    return-object v0
.end method

.method public getInfopageList(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 490
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v4, "ms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getChildren()[J

    move-result-object v5

    array-length v1, v5

    .line 495
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 496
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getChildren()[J

    move-result-object v5

    aget-wide v6, v5, v2

    invoke-virtual {p0, v6, v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfoPage(J)Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    move-result-object v0

    .line 497
    .local v0, "config":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    invoke-direct {p0, p1, v0, v8, v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getInfoModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v3

    .line 498
    .local v3, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-eqz v3, :cond_0

    .line 499
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "config":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .end local v3    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_1
    return-object v4
.end method

.method public getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    return-object v0
.end method

.method public getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    const/4 v3, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 516
    .local v2, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getWidgets()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 521
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 522
    .local v1, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    if-ne p2, v4, :cond_0

    .line 527
    .end local v1    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    .local p2, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/WidgetLink;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "iconSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    .local p2, "widgetLinks":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/WidgetLink;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v2, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 811
    .local v4, "widgetLink":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-direct {p0, p1, v4, p3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/WidgetLink;Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v1

    .line 812
    .local v1, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 815
    .local v3, "navigationIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    if-eqz v3, :cond_0

    .line 816
    invoke-virtual {v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 819
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 821
    .end local v1    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v3    # "navigationIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v4    # "widgetLink":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_2
    return-object v2
.end method

.method public getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    return-object v0
.end method

.method public getMyAgenda()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    return-object v0
.end method

.method public getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyFavouriteSessions()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyInbox()Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;

    return-object v0
.end method

.method public getMyNotes()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getMyQRCodes()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_QRCODES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getNews()Lcom/genie_connect/android/db/config/widgets/NewsConfig;
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/NewsConfig;

    return-object v0
.end method

.method public getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    return-object v0
.end method

.method public getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    return-object v0
.end method

.method public getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    return-object v0
.end method

.method public getQRReader()Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    return-object v0
.end method

.method public getRssFeed()Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;

    return-object v0
.end method

.method public getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    return-object v0
.end method

.method public getSettings()Lcom/genie_connect/android/db/config/BaseConfig;
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SETTINGS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/BaseConfig;

    return-object v0
.end method

.method public getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    return-object v0
.end method

.method public getTagFilterConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    .locals 3
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 1076
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1090
    const/4 v0, 0x0

    .line 1093
    .local v0, "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    :goto_0
    return-object v0

    .line 1078
    .end local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    :sswitch_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v0

    .line 1079
    .restart local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    goto :goto_0

    .line 1081
    .end local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    :sswitch_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v0

    .line 1082
    .restart local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    goto :goto_0

    .line 1084
    .end local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    :sswitch_2
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v0

    .line 1085
    .restart local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    goto :goto_0

    .line 1087
    .end local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    :sswitch_3
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v0

    .line 1088
    .restart local v0    # "result":Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
    goto :goto_0

    .line 1076
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_3
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public getTwitter()Lcom/genie_connect/android/db/config/widgets/TwitterConfig;
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;

    return-object v0
.end method

.method public getYouTube()Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;

    return-object v0
.end method

.method public isEntitySecure(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 5
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v2, 0x0

    .line 934
    sget-object v3, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1011
    const/4 v1, 0x1

    .line 1015
    .local v1, "widgetSecurity":Z
    :goto_0
    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->mIsAppSecure:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1017
    .local v0, "isEntitySecure":Z
    :goto_1
    return v2

    .line 936
    .end local v0    # "isEntitySecure":Z
    .end local v1    # "widgetSecurity":Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->isSecure()Z

    move-result v1

    .line 937
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 939
    .end local v1    # "widgetSecurity":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->isSecure()Z

    move-result v1

    .line 940
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 942
    .end local v1    # "widgetSecurity":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->isSecure()Z

    move-result v1

    .line 943
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 945
    .end local v1    # "widgetSecurity":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 946
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 948
    .end local v1    # "widgetSecurity":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 949
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 951
    .end local v1    # "widgetSecurity":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouritePoi()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 952
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 954
    .end local v1    # "widgetSecurity":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteProducts()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 955
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 957
    .end local v1    # "widgetSecurity":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSpeakers()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 958
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 960
    .end local v1    # "widgetSecurity":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 961
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 963
    .end local v1    # "widgetSecurity":Z
    :pswitch_9
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->isSecure()Z

    move-result v1

    .line 964
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 966
    .end local v1    # "widgetSecurity":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isSecure()Z

    move-result v1

    .line 967
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 969
    .end local v1    # "widgetSecurity":Z
    :pswitch_b
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isSecure()Z

    move-result v1

    .line 970
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 972
    .end local v1    # "widgetSecurity":Z
    :pswitch_c
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->isSecure()Z

    move-result v1

    .line 973
    .restart local v1    # "widgetSecurity":Z
    goto :goto_0

    .line 975
    .end local v1    # "widgetSecurity":Z
    :pswitch_d
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyInbox()Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;->isSecure()Z

    move-result v1

    .line 976
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 978
    .end local v1    # "widgetSecurity":Z
    :pswitch_e
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyNotes()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 979
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 981
    .end local v1    # "widgetSecurity":Z
    :pswitch_f
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->isSecure()Z

    move-result v1

    .line 982
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 984
    .end local v1    # "widgetSecurity":Z
    :pswitch_10
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->isSecure()Z

    move-result v1

    .line 985
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 987
    .end local v1    # "widgetSecurity":Z
    :pswitch_11
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->isSecure()Z

    move-result v1

    .line 988
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 990
    .end local v1    # "widgetSecurity":Z
    :pswitch_12
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyQRCodes()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 991
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 993
    .end local v1    # "widgetSecurity":Z
    :pswitch_13
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->isSecure()Z

    move-result v1

    .line 994
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 996
    .end local v1    # "widgetSecurity":Z
    :pswitch_14
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->isSecure()Z

    move-result v1

    .line 997
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 999
    .end local v1    # "widgetSecurity":Z
    :pswitch_15
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->isSecure()Z

    move-result v1

    .line 1000
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 1002
    .end local v1    # "widgetSecurity":Z
    :pswitch_16
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->isSecure()Z

    move-result v1

    .line 1003
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 1005
    .end local v1    # "widgetSecurity":Z
    :pswitch_17
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSecure()Z

    move-result v1

    .line 1006
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    .line 1008
    .end local v1    # "widgetSecurity":Z
    :pswitch_18
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/BaseConfig;->isSecure()Z

    move-result v1

    .line 1009
    .restart local v1    # "widgetSecurity":Z
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1015
    goto/16 :goto_1

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_18
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public isWidgetPresent(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    .line 1021
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v0

    .line 1022
    .local v0, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1025
    const/4 v1, 0x1

    .line 1027
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
