.class public Lcom/urbanairship/google/PlayServicesUtils;
.super Ljava/lang/Object;
.source "PlayServicesUtils.java"


# static fields
.field private static final CONNECTION_SUCCESS:I = 0x0

.field private static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final GOOGLE_PLAY_STORE_PACKAGE_OLD:Ljava/lang/String; = "com.google.market"

.field public static MISSING_PLAY_SERVICE_DEPENDENCY:I

.field private static isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

.field private static isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

.field private static isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/urbanairship/google/PlayServicesUtils;->MISSING_PLAY_SERVICE_DEPENDENCY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAnyPlayServicesError(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 88
    .local v1, "errorCode":I
    if-eqz v1, :cond_0

    .line 92
    invoke-static {v1}, Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;->isUserRecoverableError(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const-string v2, "Launching Play Services Activity to resolve error."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 95
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/google/PlayServicesErrorActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "errorCode":I
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Play services developer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "errorCode":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not user recoverable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isFusedLocationDepdendencyAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 178
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    .line 190
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 182
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_0
    const-string v1, "com.google.android.gms.location.LocationServices"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 183
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isGoogleCloudMessagingDependencyAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 156
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    .line 168
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 160
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_0
    const-string v1, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 161
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0}, Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/urbanairship/google/PlayServicesUtils;->MISSING_PLAY_SERVICE_DEPENDENCY:I

    goto :goto_0
.end method

.method public static isGooglePlayServicesDependencyAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 134
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    .line 146
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 138
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_0
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isGooglePlayStoreAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 202
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.vending"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.market"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    :cond_1
    const/4 v3, 0x1

    .line 209
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    return v3
.end method
