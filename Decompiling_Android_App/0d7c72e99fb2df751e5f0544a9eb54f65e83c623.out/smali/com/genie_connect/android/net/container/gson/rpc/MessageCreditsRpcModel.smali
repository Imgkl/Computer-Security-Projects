.class public Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;
.super Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;
.source "MessageCreditsRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    }
.end annotation


# instance fields
.field private data:Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getData()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "res":Z
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 59
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MessageCreditsResponseData.isValid? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 61
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeetingCreditsResponseGsonModel [message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->data:Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
