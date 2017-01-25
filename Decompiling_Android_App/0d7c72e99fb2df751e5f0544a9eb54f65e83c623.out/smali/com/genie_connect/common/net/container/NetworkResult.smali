.class public Lcom/genie_connect/common/net/container/NetworkResult;
.super Ljava/lang/Object;
.source "NetworkResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    }
.end annotation


# static fields
.field public static final NO_RESPONCE_CODE:I = -0x1


# instance fields
.field private final mAction:Lcom/genie_connect/common/net/utils/HttpAction;

.field protected mCompletedSuccesfully:Z

.field protected mInternalError:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field private mIsDeferred:Z

.field protected mResponseCode:I

.field private mTimeElapsed:J


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 3
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mIsDeferred:Z

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mTimeElapsed:J

    .line 46
    sget-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    iput-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mInternalError:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 47
    iput-boolean v2, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mCompletedSuccesfully:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mResponseCode:I

    .line 51
    iput-object p1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mAction:Lcom/genie_connect/common/net/utils/HttpAction;

    .line 52
    return-void
.end method

.method public static isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z
    .locals 2
    .param p0, "result"    # Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValid(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)Z
    .locals 2
    .param p0, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v0, 0x0

    .line 164
    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAction()Lcom/genie_connect/common/net/utils/HttpAction;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mAction:Lcom/genie_connect/common/net/utils/HttpAction;

    return-object v0
.end method

.method public getInternalErrorCode()Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mInternalError:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mResponseCode:I

    return v0
.end method

.method public getTimeElapsed()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mTimeElapsed:J

    return-wide v0
.end method

.method public isDeferred()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mIsDeferred:Z

    return v0
.end method

.method public isSuccesful()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mCompletedSuccesfully:Z

    return v0
.end method

.method public setIsDeferred(Z)V
    .locals 0
    .param p1, "isDeferred"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mIsDeferred:Z

    .line 108
    return-void
.end method

.method public setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    .locals 0
    .param p1, "completedSuccesfully"    # Z
    .param p2, "httpResponseCode"    # I
    .param p3, "internalError"    # Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mCompletedSuccesfully:Z

    .line 122
    iput-object p3, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mInternalError:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 123
    iput p2, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mResponseCode:I

    .line 124
    return-void
.end method

.method public setTimeElapsed(J)V
    .locals 1
    .param p1, "timeElapsed"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mTimeElapsed:J

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkResult [mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mAction:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDeferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mIsDeferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mTimeElapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInternalError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mInternalError:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompletedSuccesfully="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mCompletedSuccesfully:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/common/net/container/NetworkResult;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
