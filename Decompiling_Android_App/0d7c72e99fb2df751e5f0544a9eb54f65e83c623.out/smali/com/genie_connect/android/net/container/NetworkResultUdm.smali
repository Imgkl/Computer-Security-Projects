.class public Lcom/genie_connect/android/net/container/NetworkResultUdm;
.super Lcom/genie_connect/common/net/container/NetworkResult;
.source "NetworkResultUdm.java"


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 0
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResult;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/genie_connect/android/net/container/NetworkResultUdm;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/genie_connect/android/net/container/NetworkResultUdm;->mFilePath:Ljava/lang/String;

    .line 50
    return-void
.end method
