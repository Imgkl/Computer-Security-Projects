.class public Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
.super Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;
.source "ShowMeetingQuotaDetailsRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;,
        Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;,
        Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;
    }
.end annotation


# static fields
.field private static final INVALID:I = -0x1


# instance fields
.field private data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;-><init>()V

    .line 109
    return-void
.end method


# virtual methods
.method public getMeetingQuotaType()I
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    :goto_0
    return v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingQuotaType()Ljava/lang/Integer;

    move-result-object v0

    .line 55
    .local v0, "quotaTypa":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 56
    :cond_1
    sget-object v1, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getMeetingTargetAchieved()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;-><init>(Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingTargetAchieved()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingTargetAchieved()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getMeetingTargetAchievedPerEventDay()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;-><init>(Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingTargetAchievedPerEventDay()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMeetingTargetPerEvent()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;-><init>(Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingTargetPerEvent()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingTargetPerEvent()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getMeetingTargetPerEventDay()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;-><init>(Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->getMeetingTargetPerEventDay()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;-><init>(Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;

    .line 90
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowMeetingQuotaDetailsRpcModel [getMessage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getStatus()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMeetingTargetPerEventDay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingTargetPerEventDay()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMeetingTargetAchievedPerEventDay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingTargetAchievedPerEventDay()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
