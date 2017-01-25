.class public Lcom/eventgenie/android/utils/help/ProoferUtils;
.super Ljava/lang/Object;
.source "ProoferUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appCfg"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "doNavbar"    # Z
    .param p3, "doBackground"    # Z
    .param p4, "splitBackground"    # Z

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v7, "scale":F
    invoke-static {p0}, Lcom/eventgenie/android/ui/help/UIUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v12

    .line 69
    .local v12, "isLongScreen":Z
    invoke-static {p0}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateSmallestWidth(Landroid/app/Activity;)I

    move-result v13

    .line 71
    .local v13, "smallestWidth":I
    const-string v2, "^ ARTWORK: ------------------------------"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: isLongScreen    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: smallestWidth   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: scale           "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 75
    const-string v2, "^ ARTWORK:"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: doNavBar        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: doBackground    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: splitBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: hasBg           "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundArtwork()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: hasUpper        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundUpperArtwork()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: hasLower        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundLowerArtwork()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 83
    if-eqz p4, :cond_3

    .line 84
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundUpperArtwork()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 85
    const-string v2, "^ ARTWORK: splig backround drawing it "

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    int-to-long v4, v13

    invoke-virtual {v2, v7, v12, v4, v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getDashboardUpperBackgroundUrl(FZJ)Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, "imgUrlUpper":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ARTWORK: upperURL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/eventgenie/android/utils/help/ProoferUtils$1;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v3, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/eventgenie/android/utils/help/ProoferUtils$1;-><init>(Landroid/content/Context;JZFLandroid/app/Activity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    .end local v11    # "imgUrlUpper":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundLowerArtwork()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    int-to-long v4, v13

    invoke-virtual {v2, v7, v12, v4, v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getDashboardLowerBackgroundUrl(FZJ)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "imgUrlLower":Ljava/lang/String;
    new-instance v2, Lcom/eventgenie/android/utils/help/ProoferUtils$2;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v3, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/eventgenie/android/utils/help/ProoferUtils$2;-><init>(Landroid/content/Context;JZFLandroid/app/Activity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    .end local v10    # "imgUrlLower":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    if-eqz p4, :cond_4

    .line 164
    :cond_2
    :goto_1
    return-void

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundArtwork()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    int-to-long v4, v13

    invoke-virtual {v2, v7, v12, v4, v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getDashboardBackgroundUrl(FZJ)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "imgUrl":Ljava/lang/String;
    new-instance v2, Lcom/eventgenie/android/utils/help/ProoferUtils$3;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v3, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/eventgenie/android/utils/help/ProoferUtils$3;-><init>(Landroid/content/Context;JZFLandroid/app/Activity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/help/ProoferUtils$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 148
    .end local v9    # "imgUrl":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    int-to-long v4, v13

    invoke-virtual {v2, v7, v12, v4, v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarLogoUrl(FZJ)Ljava/lang/String;

    move-result-object v9

    .line 149
    .restart local v9    # "imgUrl":Ljava/lang/String;
    new-instance v2, Lcom/eventgenie/android/utils/help/ProoferUtils$4;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v3, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/eventgenie/android/utils/help/ProoferUtils$4;-><init>(Landroid/content/Context;JZFLandroid/app/Activity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private static getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public static initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isMultiEventSelect"    # Z

    .prologue
    .line 167
    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v2, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "com.eventgenie.android.IS_MULTI_EVENT_SELECT"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 179
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static initialiseData(Landroid/content/Context;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entities"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 182
    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "b":Landroid/os/Bundle;
    array-length v3, p1

    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->getEntitiesToInitialiseArray()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 191
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v1

    .line 192
    .local v1, "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setProoferLiveModeEnabled(Z)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 193
    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 200
    .end local v1    # "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    :cond_0
    const-string v3, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v3, "com.eventgenie.android.EXTRA_ENTITIES_TO_INITIALISE"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 202
    const-string v3, "com.eventgenie.android.EXTRA_VERSION"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "com.eventgenie.android.IS_MULTI_EVENT_SELECT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 209
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static launchAppMarketIntent(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J

    .prologue
    .line 214
    const-wide/16 v2, 0x5623

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 215
    const-string v0, "com.eventgenie.onehundredpercentdesign"

    .line 222
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getMarketIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 225
    return-void

    .line 216
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-wide/32 v2, 0x18aa9

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 217
    const-string v0, "com.eventgenie.android.ipexpo2011"

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.geniemobile.app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static resetEventSpecificAppSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 229
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->clearTemporaryData()V

    .line 230
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->setGuestModeEnabled(Z)V

    .line 231
    return-void
.end method

.method public static setBitmapDensity(Landroid/graphics/Bitmap;F)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "density"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v4, 0xf0

    .line 235
    if-nez p0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 237
    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 238
    const/16 v0, 0x280

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 239
    :cond_1
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 240
    const/16 v0, 0x1e0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 241
    :cond_2
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_3

    .line 243
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 247
    :cond_4
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 248
    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 250
    :cond_5
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method
