.class public Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;
.super Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;
.source "ConfigFlagsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity$1;
    }
.end annotation


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;-><init>()V

    .line 57
    return-void
.end method

.method private addActionableList(Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)V
    .locals 8
    .param p1, "action"    # Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .prologue
    .line 46
    sget-object v6, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity$1;->$SwitchMap$com$genie_connect$android$db$config$features$ActionsAllowed$Action:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 56
    const/4 v6, 0x0

    new-array v1, v6, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 60
    .local v1, "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :goto_0
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    move-object v0, v1

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 63
    .local v3, "e":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v6

    invoke-virtual {v6, v3, p1}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v2

    .line 65
    .local v2, "available":Z
    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 62
    .end local v2    # "available":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v1    # "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v3    # "e":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :pswitch_0
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouritableEntities()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromArray([Ljava/lang/String;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    .line 51
    .restart local v1    # "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_0

    .line 53
    .end local v1    # "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_1
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getNotableEntities()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromArray([Ljava/lang/String;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    .line 54
    .restart local v1    # "array":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_0

    .line 68
    .restart local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    return-void

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populate()V
    .locals 8

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    .line 85
    .local v2, "config":Lcom/genie_connect/android/db/config/AppConfig;
    const-string v5, "App Details"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 87
    const-string v5, "Namespace"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;J)V

    .line 88
    const-string v5, "EventName"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "Locale"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 92
    const-string v5, "Generic Config"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 94
    const-string v5, "Continue as Guest"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->isContinueAsGuestEnabled()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 95
    const-string v5, "Login Enabled"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->isLoginEnabled()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 96
    const-string v5, "New Sponsorship"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->isNewSponsorship()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 99
    const-string v5, "Sharing"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 101
    const-string v5, "Exhibitors"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->enableSharing()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 102
    const-string v5, "Poi"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->enableSharing()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 103
    const-string v5, "Products"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->enableSharing()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 104
    const-string v5, "Schedule"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->enableSharing()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 105
    const-string v5, "Speakers"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->enableSharing()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 108
    const-string v5, "Actions"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 111
    invoke-static {}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->values()[Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    move-result-object v1

    .local v1, "arr$":[Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 112
    .local v0, "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->addActionableList(Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 117
    const-string v5, "Gamification"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 119
    const-string v5, "Enable Leaderboards"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->isEnableLeaderboard()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 120
    const-string v5, "Show Game Thumb"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getGameFeatures()Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;->showThumbnail()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 121
    const-string v5, "Show Trophy Thumb"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getTrophyFeatures()Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;->showThumbnail()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 124
    const-string v5, "Networking"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 126
    const-string v5, "Enable My Profile"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfile()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 127
    const-string v5, "Allow AdHocMeetings"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isAllowAdHocMeetings()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 128
    const-string v5, "Enable Meetings"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMeetings()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 129
    const-string v5, "Enable Messages"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMessages()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 130
    const-string v5, "Exhibitor Networking"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->enableNetworking()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 131
    const-string v5, "Readonly Meeting Location"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isReadOnlyMeetingLocation()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 134
    const-string v5, "Show Address"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowAddress()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 135
    const-string v5, "Show Blog Url"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowBlogUrl()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 136
    const-string v5, "Show Company Name"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowCompanyName()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 137
    const-string v5, "Show Department"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowDepartment()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 138
    const-string v5, "Show Email"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowEmail()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 139
    const-string v5, "Show Facebook"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowFacebook()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 140
    const-string v5, "Show Fax"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowFax()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 141
    const-string v5, "Show Full Description"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowFullDescription()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 142
    const-string v5, "Show Interests"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowInterests()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 143
    const-string v5, "Show Job Title"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowJobTitle()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 144
    const-string v5, "Show LinkedIn"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowLinkedIn()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 145
    const-string v5, "Show Mugshot"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowMugShot()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 146
    const-string v5, "Show Reason For Attending"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowReasonForAttening()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 147
    const-string v5, "Show Telephone"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowTelephone()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 148
    const-string v5, "Show Telephone2"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowTelephone2()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 149
    const-string v5, "Show Twitter"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowTwitter()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 150
    const-string v5, "Show Visitor Group"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowVisitorGroup()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 151
    const-string v5, "Show WWW"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowWww()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 152
    const-string v5, "Show YouTubeUrl"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowYouTubeUrl()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 155
    const-string v5, "Files"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 157
    const-string v5, "Navigation fileId"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getAndroidMappingNavFileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "Navigation md5"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getAndroidMappingNavFileMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "Feedback fileId"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getFeedbackZipFileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v5, "Feedback md5"

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getFeedbackZipFileMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 163
    const-string v5, "Device Details"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendBold(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendSectionLine()V

    .line 165
    const-string v5, "SDK Version"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getSdkVersion()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;J)V

    .line 166
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 168
    const-string v5, "Amazon HW"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isThisAmazonHardware()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 169
    const-string v5, "BB HW"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isThisBlackberryHardware()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 170
    const-string v5, "Bluestacks HW"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isThisBluestacksHardware()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 171
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 173
    const-string v5, "BT LE Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isBluetoothLowEnergyPresent()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 174
    const-string v5, "Back Camera Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isBackCameraPresent()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 175
    const-string v5, "GPS Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isGpsPresent()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 176
    const-string v5, "Google Play Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isGooglePlayInstalled()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 177
    const-string v5, "NFC Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isNfcPresent()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->appendNewLine()V

    .line 180
    const-string v5, "Hard Menu Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isHardMenuButtonPresent()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 181
    const-string v5, "Long Screen Present"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isScreenLong()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;Z)V

    .line 182
    const-string v5, "Display Width"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayWidth()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;J)V

    .line 183
    const-string v5, "Display Height"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayHeight()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;J)V

    .line 184
    const-string v5, "Smallest Width"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplaySmallestWidth()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;J)V

    .line 185
    const-string v5, "Smallest Width in DP"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplaySmallestWidthInDp()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;J)V

    .line 186
    const-string v5, "Display Density"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayDensity()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->append(Ljava/lang/String;F)V

    .line 188
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->writeToTextView()V

    .line 189
    return-void
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected getMinimumLabelCharCount()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x14

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "Config Flags"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;->populate()V

    .line 80
    return-void
.end method
