.class public Lcom/eventgenie/android/utils/help/emsp/EmspController;
.super Ljava/lang/Object;
.source "EmspController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;
    }
.end annotation


# instance fields
.field private final mApiDomain:Ljava/lang/String;

.field private final mAuthToken:Ljava/lang/String;

.field private final mBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

.field private final mValid:Z

.field private final mWifiPresent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiDomain"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    .line 28
    invoke-static {p2}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->extractAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mApiDomain:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->isWifiPresent(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mWifiPresent:Z

    .line 30
    iput-object p3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mAuthToken:Ljava/lang/String;

    .line 32
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mWifiPresent:Z

    if-nez v0, :cond_0

    .line 33
    const-string v0, "^ EMSP: No WiFi present. Future calls will be ignored"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 34
    iput-boolean v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mValid:Z

    .line 44
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mApiDomain:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    const-string v0, "^ EMSP: Domain invalid. Future calls will be ignored"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 37
    iput-boolean v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mValid:Z

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mAuthToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    const-string v0, "^ EMSP: Auth Token invalid. Future calls will be ignored"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 40
    iput-boolean v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mValid:Z

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mValid:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/eventgenie/android/utils/help/emsp/EmspController;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspController;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->executeGetLocationTask(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/utils/help/emsp/EmspController;)Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    return-object v0
.end method

.method private executeGetLocationTask(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    .prologue
    .line 47
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    iget-object v4, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mAuthToken:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;-><init>(Lcom/eventgenie/android/utils/help/emsp/EmspController;Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    .line 57
    .local v0, "task2":Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method private register(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 11
    .param p1, "callback"    # Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "ssid":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getCurrentLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v8

    .line 107
    .local v8, "location":Landroid/location/Location;
    invoke-static {v9}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v8, :cond_4

    .line 108
    :cond_1
    const-string v1, "https://%s/v1/emsp/locations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mApiDomain:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "baseUrl":Ljava/lang/String;
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "url":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    :cond_2
    :goto_1
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    iget-object v5, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mAuthToken:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;-><init>(Lcom/eventgenie/android/utils/help/emsp/EmspController;Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;Ljava/lang/String;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    .line 136
    .local v0, "task":Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 119
    .end local v0    # "task":Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 138
    .end local v4    # "url":Ljava/lang/String;
    .end local v7    # "baseUrl":Ljava/lang/String;
    :cond_4
    const-string v1, "^ EMSP: MAC Address/SSID is null."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v8    # "location":Landroid/location/Location;
    .end local v9    # "macAddress":Ljava/lang/String;
    .end local v10    # "ssid":Ljava/lang/String;
    :cond_5
    const-string v1, "^ EMSP: Device not online. Cannot Register."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentLocation(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->register(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->executeGetLocationTask(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "^ EMSP: Device not online. Cannot get current Location."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController;->mValid:Z

    return v0
.end method
