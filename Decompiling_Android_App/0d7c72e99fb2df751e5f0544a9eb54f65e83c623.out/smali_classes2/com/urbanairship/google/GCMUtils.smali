.class public Lcom/urbanairship/google/GCMUtils;
.super Ljava/lang/Object;
.source "GCMUtils.java"


# static fields
.field public static final PERMISSION_RECEIVE:Ljava/lang/String; = "com.google.android.c2dm.permission.RECEIVE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateManifest(Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 9
    .param p0, "options"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    const/16 v8, 0x10

    .line 56
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 57
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "packageName":Ljava/lang/String;
    const-string v7, "android.permission.WAKE_LOCK"

    invoke-static {v7}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 60
    const-string v7, "android.permission.GET_ACCOUNTS"

    invoke-static {v7}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 62
    const-string v7, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v7}, Lcom/urbanairship/util/ManifestUtils;->isPermissionKnown(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 63
    const-string v7, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v7}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v7, p0, Lcom/urbanairship/AirshipConfigOptions;->minSdkVersion:I

    if-lt v7, v8, :cond_1

    if-eqz v0, :cond_0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v7, v8, :cond_1

    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v8, :cond_2

    .line 74
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".permission.C2D_MESSAGE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v4}, Lcom/urbanairship/util/ManifestUtils;->isPermissionKnown(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 77
    invoke-static {v4}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 84
    .end local v4    # "permission":Ljava/lang/String;
    :cond_2
    :goto_1
    const-class v7, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-static {v7}, Lcom/urbanairship/util/ManifestUtils;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    .line 86
    .local v2, "gcmReceiver":Landroid/content/pm/ComponentInfo;
    if-eqz v2, :cond_6

    .line 88
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "receiveIntent":Landroid/content/Intent;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AndroidManifest.xml\'s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " declaration missing required "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " filter with category = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 100
    .end local v6    # "receiveIntent":Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 104
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_3
    return-void

    .line 65
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "gcmReceiver":Landroid/content/pm/ComponentInfo;
    :cond_4
    const-string v7, "Required permission com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is unknown to PackageManager."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    .end local v4    # "permission":Ljava/lang/String;
    .restart local v2    # "gcmReceiver":Landroid/content/pm/ComponentInfo;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AndroidManifest.xml missing required receiver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Google Play services developer error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 109
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    const-string v7, "Google Play services required for GCM."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_3
.end method
