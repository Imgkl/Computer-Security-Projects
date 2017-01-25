.class public Lcom/genie_connect/common/net/container/NetworkResultGm;
.super Lcom/genie_connect/common/net/container/NetworkResult;
.source "NetworkResultGm.java"


# instance fields
.field private mNextRangeStart:I

.field private mRangeMax:J


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 2
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResult;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mRangeMax:J

    .line 40
    return-void
.end method


# virtual methods
.method public getNextRangeStart()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mNextRangeStart:I

    return v0
.end method

.method public getRangeMax()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mRangeMax:J

    return-wide v0
.end method

.method public setNextRangeStart(I)V
    .locals 0
    .param p1, "nextRangeStart"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mNextRangeStart:I

    .line 71
    return-void
.end method

.method public setRangeMax(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mRangeMax:J

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkResultGm [mNextRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mNextRangeStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/common/net/container/NetworkResultGm;->mRangeMax:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/genie_connect/common/net/container/NetworkResult;->toString()Ljava/lang/String;

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
