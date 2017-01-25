.class public Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
.super Lcom/genie_connect/common/net/container/NetworkResultGm;
.source "NetworkResultGsonContent.java"


# instance fields
.field private mEntityType:Ljava/lang/String;

.field private mResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 0
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResultGm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getEntityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public setPayload(Ljava/lang/Object;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mResult:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public setPayload(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "entityType"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mResult:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mEntityType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkResultGsonContent [mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->mEntityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/genie_connect/common/net/container/NetworkResultGm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
