.class Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;
.super Ljava/lang/Object;
.source "AppXGCMPushRegisterMessaging.java"


# static fields
.field private static final BACKOFF_MS:Ljava/lang/String; = "backoff_ms"

.field private static final DEFAULT_BACKOFF_MS:I = 0xbb8

.field private static final GSF_PACKAGE:Ljava/lang/String; = "com.google.android.gsf"

.field private static final PORTAL_REGID_STATUS:Ljava/lang/String; = "regIdPortal"

.field private static final PREFERENCES:Ljava/lang/String; = "com.google.android.gcm"

.field private static final PROPERTY_APPX_PUSH_CLASSNAME:Ljava/lang/String; = "push"

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ON_SERVER:Ljava/lang/String; = "onServer"

.field private static final PROPERTY_REG_ID:Ljava/lang/String; = "regId"

.field private static final SAVE_PREFIX_URL:Ljava/lang/String; = "savePrefixURL"

.field private static final SAVE_SERVER_URL:Ljava/lang/String; = "saveServerURL"

.field private static final TAG:Ljava/lang/String; = "C2DMPushRegister"

.field private static sRetryReceiver:Lcom/julysystems/appx/AppXGCMBroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDevice(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .local v2, "version":I
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device must be at least API Level 8 (instead of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "For GCM )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 87
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.google.android.gsf"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Device does not have package com.google.android.gsfFor GCM"

    .line 89
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static checkManifest(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 124
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".permission.C2D_MESSAGE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "permissionName":Ljava/lang/String;
    const/16 v8, 0x1000

    :try_start_0
    invoke-virtual {v2, v4, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v8, 0x2

    .line 135
    :try_start_1
    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 140
    .local v7, "receiversInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 141
    .local v6, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-nez v8, :cond_1

    .line 142
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No receiver for package "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    .end local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    .end local v7    # "receiversInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Application does not define permission "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 138
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not get receivers for package "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    .restart local v7    # "receiversInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    const-string v8, "C2DMPushRegister"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 145
    const-string v8, "C2DMPushRegister"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "number of receivers for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "allowedReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v9, v6

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_3

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 154
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No receiver allowed to receive com.google.android.c2dm.permission.SEND"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_3
    aget-object v5, v6, v8

    .line 149
    .local v5, "receiver":Landroid/content/pm/ActivityInfo;
    const-string v10, "com.google.android.c2dm.permission.SEND"

    iget-object v11, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 150
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .end local v5    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_5
    const-string v8, "com.google.android.c2dm.intent.REGISTRATION"

    .line 156
    invoke-static {p0, v0, v8}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 159
    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    .line 158
    invoke-static {p0, v0, v8}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private static checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "allowedReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 165
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/16 v6, 0x20

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 169
    .local v5, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No receivers for action "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 172
    :cond_0
    const-string v6, "C2DMPushRegister"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    const-string v6, "C2DMPushRegister"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " receivers for action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 182
    return-void

    .line 176
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 177
    .local v4, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 178
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 179
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Receiver "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not set with permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.google.android.c2dm.permission.SEND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 362
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 363
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Coult not get package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getBackoff(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static getPushClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 422
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "push"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "pushClassName":Ljava/lang/String;
    return-object v1
.end method

.method static getRegIdPortalStatus(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 468
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "regIdPortal"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 469
    .local v1, "regIdPortalStatus":Z
    return v1
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x80000000

    .line 282
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 283
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "registrationId":Ljava/lang/String;
    const-string v4, "appVersion"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, "oldVersion":I
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 288
    .local v0, "newVersion":I
    if-eq v1, v6, :cond_0

    if-eq v1, v0, :cond_0

    .line 289
    const-string v4, "C2DMPushRegister"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "App version changed from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; resetting registration id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 291
    const-string v3, ""

    .line 293
    :cond_0
    return-object v3
.end method

.method public static getServerURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "saveServerURL"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "connecTionUrl":Ljava/lang/String;
    return-object v0
.end method

.method public static getURL_PREFIX(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "savePrefixURL"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "urlpreFString":Ljava/lang/String;
    return-object v1
.end method

.method static varargs internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 206
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 207
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No senderIds"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v4, p1, v6

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_2

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "senders":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.google.android.gsf"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v4, "app"

    .line 217
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v6, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 216
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    const-string v4, "sender"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 220
    return-void

    .line 211
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "senders":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static internalUnregister(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 250
    const-string v1, "C2DMPushRegister"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unregistering app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "app"

    .line 254
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 256
    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRegisteredOnServer(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 351
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "onServer"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 352
    .local v0, "isRegistered":Z
    const-string v2, "C2DMPushRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Is registered on server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return v0
.end method

.method public static declared-synchronized onDestroy(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const-class v1, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->sRetryReceiver:Lcom/julysystems/appx/AppXGCMBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "C2DMPushRegister"

    const-string v2, "Unregistering receiver"

    invoke-static {v0, v2}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->sRetryReceiver:Lcom/julysystems/appx/AppXGCMBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->sRetryReceiver:Lcom/julysystems/appx/AppXGCMBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    monitor-exit v1

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->resetBackoff(Landroid/content/Context;)V

    .line 202
    invoke-static {p0, p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method static resetBackoff(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const-string v0, "C2DMPushRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetting backoff for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setBackoff(Landroid/content/Context;I)V

    .line 380
    return-void
.end method

.method public static saveServerURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connecTionUrl"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 432
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "saveServerURL"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    return-void
.end method

.method static setBackoff(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backoff"    # I

    .prologue
    .line 406
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 407
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "backoff_ms"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    return-void
.end method

.method static setPushClass(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 414
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "push"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    return-void
.end method

.method static setRegIdPortalStatus(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 459
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 460
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "regIdPortal"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    return-void
.end method

.method public static setRegisteredOnServer(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 339
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "C2DMPushRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting registered on server status as: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "onServer"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    return-void
.end method

.method static setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 325
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "oldRegistrationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 327
    .local v0, "appVersion":I
    const-string v4, "C2DMPushRegister"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Saving regId on app version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 329
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "regId"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string v4, "appVersion"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-object v2
.end method

.method public static storeURL_PREFIX(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefixURL"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 446
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 447
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "savePrefixURL"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    return-void
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->resetBackoff(Landroid/content/Context;)V

    .line 231
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->internalUnregister(Landroid/content/Context;)V

    .line 232
    return-void
.end method
