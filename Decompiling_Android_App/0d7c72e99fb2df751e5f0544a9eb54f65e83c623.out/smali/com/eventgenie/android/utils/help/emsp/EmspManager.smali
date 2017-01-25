.class public Lcom/eventgenie/android/utils/help/emsp/EmspManager;
.super Ljava/lang/Object;
.source "EmspManager.java"


# static fields
.field public static final UNKNOWN_HALL_ID:J = -0x1L

.field private static mInstance:Lcom/eventgenie/android/utils/help/emsp/EmspManager;


# instance fields
.field private mContextsUsingController:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/eventgenie/android/utils/help/emsp/EmspController;

.field private mHasLastKnownPosition:Z

.field private mLastKnownHallId:J

.field private mLastKnownPositionTimestamp:J

.field private mLastKnownPositionX:D

.field private mLastKnownPositionY:D


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mContextsUsingController:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/eventgenie/android/utils/help/emsp/EmspManager;D)D
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspManager;
    .param p1, "x1"    # D

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionX:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/eventgenie/android/utils/help/emsp/EmspManager;D)D
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspManager;
    .param p1, "x1"    # D

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionY:D

    return-wide p1
.end method

.method static synthetic access$202(Lcom/eventgenie/android/utils/help/emsp/EmspManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspManager;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionTimestamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/eventgenie/android/utils/help/emsp/EmspManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspManager;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mHasLastKnownPosition:Z

    return p1
.end method

.method static synthetic access$400(Lcom/eventgenie/android/utils/help/emsp/EmspManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownHallId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/eventgenie/android/utils/help/emsp/EmspManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/emsp/EmspManager;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownHallId:J

    return-wide p1
.end method

.method private getApiDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getEmspApiDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getEmspAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mInstance:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mInstance:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mInstance:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentLocation(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 2
    .param p1, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p2, "callback"    # Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mController:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    new-instance v1, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;-><init>(Lcom/eventgenie/android/utils/help/emsp/EmspManager;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->getCurrentLocation(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    .line 203
    return-void
.end method

.method public getLastKnownHallId()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownHallId:J

    return-wide v0
.end method

.method public getLastKnownX()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionX:D

    return-wide v0
.end method

.method public getLastKnownY()D
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionY:D

    return-wide v0
.end method

.method public getTimestampForLastKnownPosition()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionTimestamp:J

    return-wide v0
.end method

.method public hasLastKnownPosition()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mHasLastKnownPosition:Z

    return v0
.end method

.method public isControllerValid()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mController:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->isValid()Z

    move-result v0

    return v0
.end method

.method public isEmspEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->isControllerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mController:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/EmspController;

    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/help/emsp/EmspController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mController:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mContextsUsingController:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mContextsUsingController:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    return-void
.end method

.method public unregisterActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mContextsUsingController:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mContextsUsingController:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mContextsUsingController:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mController:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mHasLastKnownPosition:Z

    .line 92
    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionX:D

    .line 93
    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionY:D

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionTimestamp:J

    .line 96
    :cond_1
    return-void
.end method
