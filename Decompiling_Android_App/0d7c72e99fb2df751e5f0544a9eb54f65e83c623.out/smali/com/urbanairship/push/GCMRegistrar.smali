.class Lcom/urbanairship/push/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGCMAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    const-string v3, "Google Play services for GCM is unavailable."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 132
    .local v1, "playServicesStatus":I
    :goto_0
    return v2

    .line 102
    .end local v1    # "playServicesStatus":I
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 103
    .restart local v1    # "playServicesStatus":I
    if-eqz v1, :cond_1

    .line 104
    const-string v3, "Google Play services is currently unavailable."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register with GCM:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const-string v3, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v3}, Lcom/urbanairship/util/ManifestUtils;->isPermissionKnown(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    const-string v3, "com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager. Note that an AVD emulator may not support GCM."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 119
    const-string v3, "If you\'re running in an emulator, you need to install the appropriate image through the Android SDK and AVM manager. See http://developer.android.com/guide/google/gcm/ for further details."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 128
    const-string v3, "The GCM sender ID is not set. Unable to register."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static register()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v5, "Registering with GCM."

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->isGCMAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    const/4 v5, 0x0

    .line 86
    .local v0, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "registeredGcmSenderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "registrationId":Ljava/lang/String;
    .local v4, "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return v5

    .line 61
    .end local v0    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "registeredGcmSenderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "registrationId":Ljava/lang/String;
    .end local v4    # "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 64
    .restart local v0    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/AirshipConfigOptions;->getGCMSenderIds()Ljava/util/Set;

    move-result-object v4

    .line 65
    .restart local v4    # "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushPreferences;->getRegisteredGcmSenderIds()Ljava/util/Set;

    move-result-object v2

    .line 68
    .restart local v2    # "registeredGcmSenderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCMRegistrar - Unregistering GCM Sender IDs:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    .line 74
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCMRegistrar - Registering GCM Sender IDs:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 75
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .restart local v3    # "registrationId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCM registration successful. Registration ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/urbanairship/push/PushManager;->setGcmId(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/urbanairship/push/PushPreferences;->setRegisteredGcmSenderIds(Ljava/util/Set;)V

    .line 83
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.urbanairship.push.ACTION_PUSH_REGISTRATION_FINISHED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/urbanairship/push/PushService;->startServiceWithWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
