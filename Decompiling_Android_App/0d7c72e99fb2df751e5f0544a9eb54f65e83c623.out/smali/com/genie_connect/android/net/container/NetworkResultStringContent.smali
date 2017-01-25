.class public Lcom/genie_connect/android/net/container/NetworkResultStringContent;
.super Lcom/genie_connect/common/net/container/NetworkResultGm;
.source "NetworkResultStringContent.java"


# instance fields
.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 0
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResultGm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->mContent:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkResultStringContent [mContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->mContent:Ljava/lang/String;

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
