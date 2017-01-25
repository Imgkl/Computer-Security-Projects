.class public Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "PlayerGameGsonModel.java"


# instance fields
.field private game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game"
    .end annotation
.end field

.field private transient hadToCreateVisitor:Z

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private playerTrophies:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playerTrophies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visitor"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getGame()Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->id:J

    return-wide v0
.end method

.method public getPlayerTrophies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->playerTrophies:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->playerTrophies:Ljava/util/ArrayList;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->playerTrophies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScoreForTrophy(J)J
    .locals 5
    .param p1, "trophyId"    # J

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getPlayerTrophies()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;

    .line 75
    .local v1, "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTrophyId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTotalTrophyPoints()I

    move-result v2

    int-to-long v2, v2

    .line 80
    .end local v1    # "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getTotalGamePoints()J
    .locals 6

    .prologue
    .line 93
    const-wide/16 v2, 0x0

    .line 95
    .local v2, "res":J
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getPlayerTrophies()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;

    .line 96
    .local v1, "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTotalTrophyPoints()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 97
    goto :goto_0

    .line 99
    .end local v1    # "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    :cond_0
    return-wide v2
.end method

.method public getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->hadToCreateVisitor:Z

    .line 105
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerGameGsonModel [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerTrophies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->playerTrophies:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasIncludedVisitorInitiallyNull()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->hadToCreateVisitor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
