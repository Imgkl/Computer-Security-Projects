.class public final Lcom/genie_connect/android/db/config/features/GamificationFeatures;
.super Ljava/lang/Object;
.source "GamificationFeatures.java"


# instance fields
.field private final mEnableLeaderboard:Z

.field private final mGameFeatures:Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

.field private final mPlayerFeatures:Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

.field private final mTrophyFeatures:Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "netFeatures"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "enableLeaderBoard"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mEnableLeaderboard:Z

    .line 44
    new-instance v0, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mGameFeatures:Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    .line 45
    new-instance v0, Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mTrophyFeatures:Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;

    .line 46
    new-instance v0, Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

    invoke-direct {v0, p1, p2}, Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mPlayerFeatures:Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

    .line 47
    return-void
.end method


# virtual methods
.method public getGameFeatures()Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mGameFeatures:Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    return-object v0
.end method

.method public getPlayerFeatures()Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mPlayerFeatures:Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;

    return-object v0
.end method

.method public getTrophyFeatures()Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mTrophyFeatures:Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;

    return-object v0
.end method

.method public isEnableLeaderboard()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->mEnableLeaderboard:Z

    return v0
.end method
