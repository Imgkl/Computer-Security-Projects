.class public Lcom/eventgenie/android/push/UrbanAirshipControl;
.super Ljava/lang/Object;
.source "UrbanAirshipControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrbanAirshipAlias(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "res":Ljava/lang/String;
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v2

    .line 108
    .local v2, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "userId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PUSH-SETUP: UA alias is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 121
    return-object v0

    .line 114
    .restart local v1    # "userId":Ljava/lang/String;
    :cond_0
    const-string v3, "^ PUSH-SETUP: UserID is empty!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v1    # "userId":Ljava/lang/String;
    :cond_1
    const-string v3, "^ PUSH-SETUP: Credentials are null!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getUrbanAirshipTag(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 128
    .local v0, "namespace":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PUSH-SETUP: UA TAGs are \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 129
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    return-object v2
.end method

.method public static startUrbanAirship(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v1, "^ PUSH-SETUP: Starting UrbanAirship Push."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    .line 54
    .local v0, "pManager":Lcom/urbanairship/push/PushManager;
    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipTag(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/PushManager;->setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 59
    .end local v0    # "pManager":Lcom/urbanairship/push/PushManager;
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v1, "^ PUSH-SETUP: UrbanAirship is not flying. Aborting..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopUrbanAirship(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v1, "^ PUSH-SETUP: Stopping UrbanAirship Push."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    .line 67
    .local v0, "pManager":Lcom/urbanairship/push/PushManager;
    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipTag(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/PushManager;->setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 75
    .end local v0    # "pManager":Lcom/urbanairship/push/PushManager;
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, "^ PUSH-SETUP: UrbanAirship is not flying. Aborting..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateUrbanAirshipAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PUSH-SETUP: Updating UrbanAirship alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "appPrefs":Landroid/content/SharedPreferences;
    const-string v3, "allow_push"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 85
    .local v2, "pushEnabled":Z
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    .line 87
    .local v1, "pManager":Lcom/urbanairship/push/PushManager;
    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipTag(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/push/PushManager;->setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 92
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1, v5}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 94
    invoke-virtual {v1, v6}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 101
    .end local v0    # "appPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "pManager":Lcom/urbanairship/push/PushManager;
    .end local v2    # "pushEnabled":Z
    :goto_0
    return-void

    .line 96
    .restart local v0    # "appPrefs":Landroid/content/SharedPreferences;
    .restart local v1    # "pManager":Lcom/urbanairship/push/PushManager;
    .restart local v2    # "pushEnabled":Z
    :cond_0
    invoke-virtual {v1, v5}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    goto :goto_0

    .line 99
    .end local v0    # "appPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "pManager":Lcom/urbanairship/push/PushManager;
    .end local v2    # "pushEnabled":Z
    :cond_1
    const-string v3, "^ PUSH-SETUP: UrbanAirship is not flying. Aborting..."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
