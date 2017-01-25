.class public Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "PlayerTrophyGsonModel.java"


# instance fields
.field private totalTrophyPoints:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalTrophyPoints"
    .end annotation
.end field

.field private trophy:Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trophy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalTrophyPoints()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->totalTrophyPoints:I

    return v0
.end method

.method public getTrophyId()J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->trophy:Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;

    if-nez v0, :cond_0

    .line 50
    const-wide/16 v0, 0x0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->trophy:Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/TrophyGsonModel;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerTrophyGsonModel [totalTrophyPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->totalTrophyPoints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
