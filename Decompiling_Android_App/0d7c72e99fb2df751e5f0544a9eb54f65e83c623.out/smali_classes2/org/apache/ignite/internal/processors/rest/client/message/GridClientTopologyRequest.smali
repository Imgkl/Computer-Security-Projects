.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientTopologyRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private includeAttrs:Z

.field private includeMetrics:Z

.field private nodeId:Ljava/util/UUID;

.field private nodeIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 106
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 108
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;

    .line 110
    .local v0, "other":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public includeAttributes(Z)V
    .locals 0
    .param p1, "includeAttrs"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    .line 70
    return-void
.end method

.method public includeAttributes()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    return v0
.end method

.method public includeMetrics(Z)V
    .locals 0
    .param p1, "includeMetrics"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    .line 56
    return-void
.end method

.method public includeMetrics()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId:Ljava/util/UUID;

    .line 84
    return-void
.end method

.method public nodeIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp:Ljava/lang/String;

    return-object v0
.end method

.method public nodeIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeIp"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 136
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId:Ljava/util/UUID;

    .line 138
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp:Ljava/lang/String;

    .line 140
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [includeMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 129
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttrs:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 130
    return-void
.end method
