.class public Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "TrophyGsonModel.java"


# instance fields
.field private game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runningTime"
    .end annotation
.end field

.field private thresholds:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thresholds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame()Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    return-object v0
.end method

.method public getThresholds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->thresholds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrophyGsonModel [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->game:Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->thresholds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", runningTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
