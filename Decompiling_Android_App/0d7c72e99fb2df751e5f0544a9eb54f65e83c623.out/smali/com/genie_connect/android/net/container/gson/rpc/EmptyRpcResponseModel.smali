.class public Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;
.super Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;
.source "EmptyRpcResponseModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;->getStatus()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmptyRpcResponseModel [getMessage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getStatus()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
