.class public Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;
.super Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;
.source "WhoamiRpcModel.java"


# instance fields
.field private data:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;->data:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "res":Z
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ WhoamiResponseGsonModel.isValid? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhoamiResponseGsonModel [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;->data:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
