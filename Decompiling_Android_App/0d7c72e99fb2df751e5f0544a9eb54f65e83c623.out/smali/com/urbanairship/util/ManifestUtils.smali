.class public Lcom/urbanairship/util/ManifestUtils;
.super Ljava/lang/Object;
.source "ManifestUtils.java"


# static fields
.field private static final BASE_INTENT_RECEIVER_ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.urbanairship.push.RECEIVED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.urbanairship.push.OPENED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.urbanairship.push.CHANNEL_UPDATED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.urbanairship.push.DISMISSED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/util/ManifestUtils;->BASE_INTENT_RECEIVER_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRequiredPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, -0x1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidManifest.xml missing required permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p0, "activity"    # Ljava/lang/Class;

    .prologue
    .line 125
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ComponentInfo;
    .locals 2
    .param p0, "authorityString"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;
    .locals 4
    .param p0, "receiver"    # Ljava/lang/Class;

    .prologue
    .line 144
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;
    .locals 4
    .param p0, "service"    # Ljava/lang/Class;

    .prologue
    .line 106
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 113
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getUrbanAirshipComponentInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroid/content/pm/ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lcom/urbanairship/util/ManifestUtils$1;

    invoke-direct {v0}, Lcom/urbanairship/util/ManifestUtils$1;-><init>()V

    return-object v0
.end method

.method public static isPermissionGranted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPermissionKnown(Ljava/lang/String;)Z
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v1, 0x1

    .line 178
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static validateBaseIntentReceiver(Landroid/content/pm/ActivityInfo;)V
    .locals 12
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 361
    iget-boolean v10, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v10, :cond_0

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is exported. This might "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "allow outside applications to message the receiver. Make sure the intent is protected by a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "permission or prevent the receiver from being exported."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 367
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v6, "missingActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/urbanairship/util/ManifestUtils;->BASE_INTENT_RECEIVER_ACTIONS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 370
    .local v0, "action":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 373
    .local v4, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 374
    .local v8, "resolved":Z
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 375
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 376
    const/4 v8, 0x1

    .line 381
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v8, :cond_3

    .line 382
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 386
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "resolved":Z
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 408
    .end local v3    # "i$":I
    :goto_1
    return-void

    .line 390
    .restart local v3    # "i$":I
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " unable to receive intents for actions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 392
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v10, "Update the manifest entry for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n<receiver android:name=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" exported=\"false\">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\t<intent-filter> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    sget-object v1, Lcom/urbanairship/util/ManifestUtils;->BASE_INTENT_RECEIVER_ACTIONS:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_6

    aget-object v0, v1, v2

    .line 399
    .restart local v0    # "action":Ljava/lang/String;
    const-string v10, "\n\t\t<action android:name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 402
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    const-string v10, "\n\t\t<!-- Replace ${applicationId} with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " if not using Android Gradle plugin -->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\t\t<category android:name=\"${applicationId}\" />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\t</intent-filter>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n</receiver>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static validateManifest(Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 18
    .param p0, "airshipConfigOptions"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    .line 187
    const-string v15, "android.permission.INTERNET"

    invoke-static {v15}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 188
    const-string v15, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v15}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/util/ManifestUtils;->isPermissionKnown(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 191
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/util/ManifestUtils;->checkRequiredPermission(Ljava/lang/String;)V

    .line 196
    :goto_0
    invoke-static {}, Lcom/urbanairship/util/ManifestUtils;->getUrbanAirshipComponentInfoMap()Ljava/util/Map;

    move-result-object v3

    .line 199
    .local v3, "componentInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Landroid/content/pm/ComponentInfo;>;"
    const-class v15, Lcom/urbanairship/CoreReceiver;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 200
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml missing required receiver: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/CoreReceiver;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 230
    .local v14, "receivers":[Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v14, v15, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_2
    if-eqz v14, :cond_7

    .line 236
    move-object v1, v14

    .local v1, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_7

    aget-object v9, v1, v8

    .line 238
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v15, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 239
    .local v13, "receiverClass":Ljava/lang/Class;
    const-class v15, Lcom/urbanairship/push/BaseIntentReceiver;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 240
    invoke-static {v9}, Lcom/urbanairship/util/ManifestUtils;->validateBaseIntentReceiver(Landroid/content/pm/ActivityInfo;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v13    # "receiverClass":Ljava/lang/Class;
    :cond_1
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 193
    .end local v1    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "componentInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Landroid/content/pm/ComponentInfo;>;"
    .end local v8    # "i$":I
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "len$":I
    .end local v14    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml does not define and require permission: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .restart local v3    # "componentInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Landroid/content/pm/ComponentInfo;>;"
    :cond_3
    const-class v15, Lcom/urbanairship/CoreReceiver;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ComponentInfo;

    .line 205
    .local v4, "coreInfo":Landroid/content/pm/ComponentInfo;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.urbanairship.push.OPENED"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 208
    .local v11, "openIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 209
    .local v5, "coreResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 210
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_4

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v15, :cond_4

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 211
    move-object v5, v9

    goto :goto_5

    .line 215
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v5, :cond_6

    .line 216
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml\'s "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/CoreReceiver;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " declaration missing required intent-filter: <intent-filter android:priority=\"-999\">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "<action android:name=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "com.urbanairship.push.OPENED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"/>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "<category android:name=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"/></intent-filter>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :cond_6
    iget v15, v5, Landroid/content/pm/ResolveInfo;->priority:I

    const/16 v16, -0x3e7

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 221
    const-string v15, "CoreReceiver\'s intent filter priority should be set to -999 in order to let the application launch any activities before Urban Airship performs any actions or falls back to launching the application launch intent."

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 231
    .end local v4    # "coreInfo":Landroid/content/pm/ComponentInfo;
    .end local v5    # "coreResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "openIntent":Landroid/content/Intent;
    .restart local v14    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v6

    .line 232
    .local v6, "e":Ljava/lang/Exception;
    const-string v15, "Unable to query the application\'s receivers."

    invoke-static {v15, v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 242
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Landroid/content/pm/ActivityInfo;
    .local v8, "i$":I
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "len$":I
    :catch_1
    move-exception v6

    .line 243
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ManifestUtils - Unable to find class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 249
    .end local v1    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "i$":I
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "len$":I
    :cond_7
    const-class v15, Lcom/urbanairship/CoreActivity;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_8

    .line 250
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml missing required activity: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/CoreActivity;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 254
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v15, :cond_9

    const-class v15, Lcom/urbanairship/analytics/EventService;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_9

    .line 255
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml missing required service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/analytics/EventService;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 259
    :cond_9
    const-class v15, Lcom/urbanairship/push/PushService;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_a

    .line 260
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml missing required service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/push/PushService;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 264
    :cond_a
    const-class v15, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_b

    .line 265
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml missing required service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 269
    :cond_b
    const-class v15, Lcom/urbanairship/actions/ActionService;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_c

    .line 270
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AndroidManifest.xml missing required service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/urbanairship/actions/ActionService;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 274
    :cond_c
    const-class v15, Lcom/urbanairship/actions/ActionActivity;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_d

    .line 275
    const-string v15, "AndroidManifest.xml missing ActionActivity.  Action.startActivityForResult will not work."

    invoke-static {v15}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 280
    :cond_d
    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    const-string v17, "http://"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const/high16 v16, 0x10000000

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "android.intent.category.DEFAULT"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 285
    .local v7, "i":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    if-nez v15, :cond_e

    .line 286
    const-string v15, "AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme http.  Landing page action may not function properly."

    invoke-static {v15}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 293
    :cond_e
    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    const-string v17, "https://"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const/high16 v16, 0x10000000

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "android.intent.category.DEFAULT"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 298
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    if-nez v15, :cond_f

    .line 299
    const-string v15, "AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme https Landing page action may not function properly."

    invoke-static {v15}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 306
    :cond_f
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    if-nez v15, :cond_11

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, "processName":Ljava/lang/String;
    :goto_6
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 311
    .local v2, "component":Ljava/lang/Class;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ComponentInfo;

    .line 312
    .local v9, "info":Landroid/content/pm/ComponentInfo;
    if-eqz v9, :cond_10

    iget-object v15, v9, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 313
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "A separate process is detected for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". In the "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "AndroidManifest.xml, remove the android:process attribute."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_7

    .line 306
    .end local v2    # "component":Ljava/lang/Class;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Landroid/content/pm/ComponentInfo;
    .end local v12    # "processName":Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v12, v15, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_6

    .line 320
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "processName":Ljava/lang/String;
    :cond_12
    const-class v15, Lcom/urbanairship/UrbanAirshipProvider;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_13

    .line 321
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Unable to resolve UrbanAirshipProvider. Please check that the provider is defined in your AndroidManifest.xml, and that the authority string is set to  \"YOUR_PACKAGENAME.urbanairship.provider\""

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 326
    :cond_13
    return-void
.end method
