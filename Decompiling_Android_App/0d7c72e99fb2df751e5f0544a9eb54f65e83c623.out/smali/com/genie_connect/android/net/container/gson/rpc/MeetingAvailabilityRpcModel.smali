.class public Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
.super Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;
.source "MeetingAvailabilityRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;,
        Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;
    }
.end annotation


# instance fields
.field private data:Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;
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

    .line 89
    return-void
.end method


# virtual methods
.method public getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;->getAvailability()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;->getDaysToDisplay()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeetingAvailabilityResponseGsonModel [message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
