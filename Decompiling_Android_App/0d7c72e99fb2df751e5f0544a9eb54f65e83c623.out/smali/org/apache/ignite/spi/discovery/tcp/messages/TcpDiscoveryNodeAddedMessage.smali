.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryNodeAddedMessage.java"


# annotations
.annotation runtime Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryEnsureDelivery;
.end annotation

.annotation runtime Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryRedirectToClient;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private discardMsgId:Lorg/apache/ignite/lang/IgniteUuid;

.field private gridStartTime:J

.field private msgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation
.end field

.field private newNodeDiscoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

.field private oldNodesDiscoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private top:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private topHist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/Map;J)V
    .locals 2
    .param p1, "creatorNodeId"    # Ljava/util/UUID;
    .param p2, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .param p4, "gridStartTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "newNodeDiscoData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 87
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 91
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoData:Ljava/util/Map;

    .line 92
    iput-wide p4, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->gridStartTime:J

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    .line 95
    return-void
.end method


# virtual methods
.method public addDiscoveryData(Ljava/util/UUID;Ljava/util/Map;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "discoData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    return-void
.end method

.method public clearDiscoveryData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoData:Ljava/util/Map;

    .line 200
    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    .line 201
    return-void
.end method

.method public discardedMessageId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->discardMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public gridStartTime()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->gridStartTime:J

    return-wide v0
.end method

.method public messages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->msgs:Ljava/util/Collection;

    return-object v0
.end method

.method public messages(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "discardMsgId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->msgs:Ljava/util/Collection;

    .line 132
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->discardMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 133
    return-void
.end method

.method public newNodeDiscoveryData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoData:Ljava/util/Map;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    return-object v0
.end method

.method public oldNodesDiscoveryData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 237
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 238
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->msgs:Ljava/util/Collection;

    .line 239
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->discardMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 240
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->top:Ljava/util/Collection;

    .line 241
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readTreeMap(Ljava/io/ObjectInput;)Ljava/util/TreeMap;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topHist:Ljava/util/Map;

    .line 242
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->gridStartTime:J

    .line 243
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoData:Ljava/util/Map;

    .line 245
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 247
    .local v2, "oldNodesDiscoDataSize":I
    if-ltz v2, :cond_0

    .line 248
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 251
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v1

    .line 253
    .local v1, "nodeId":Ljava/util/UUID;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    .end local v1    # "nodeId":Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 260
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topology()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->top:Ljava/util/Collection;

    return-object v0
.end method

.method public topology(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->top:Ljava/util/Collection;

    .line 151
    return-void
.end method

.method public topologyHistory()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topHist:Ljava/util/Map;

    return-object v0
.end method

.method public topologyHistory(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "topHist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topHist:Ljava/util/Map;

    .line 169
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 214
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->msgs:Ljava/util/Collection;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 216
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->discardMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 217
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->top:Ljava/util/Collection;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 218
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topHist:Ljava/util/Map;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 219
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->gridStartTime:J

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 220
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoData:Ljava/util/Map;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 222
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    :goto_0
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 224
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    goto :goto_1

    .line 222
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 231
    :cond_1
    return-void
.end method
