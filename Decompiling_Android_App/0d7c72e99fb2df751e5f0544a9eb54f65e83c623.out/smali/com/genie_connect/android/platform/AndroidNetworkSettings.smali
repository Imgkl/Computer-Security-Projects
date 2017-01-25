.class public Lcom/genie_connect/android/platform/AndroidNetworkSettings;
.super Ljava/lang/Object;
.source "AndroidNetworkSettings.java"

# interfaces
.implements Lcom/genie_connect/common/platform/INetworkSettings;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 6
    .param p1, "uc"    # Ljava/net/URLConnection;
    .param p2, "dataVersion"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    iget-object v1, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    iget-object v4, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 31
    .local v0, "utils":Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;
    invoke-virtual {v0, p1, p2}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public getAppropriateRestOffset()I
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 47
    .local v0, "actvityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getAppropriateOffsetLimit(I)I

    move-result v1

    return v1
.end method

.method public getPlatformDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getGmPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
