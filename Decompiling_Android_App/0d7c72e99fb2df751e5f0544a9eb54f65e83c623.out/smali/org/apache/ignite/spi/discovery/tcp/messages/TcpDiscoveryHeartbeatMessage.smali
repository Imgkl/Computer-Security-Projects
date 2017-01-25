.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
.super Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.source "TcpDiscoveryHeartbeatMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryRedirectToClient;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private clientNodeIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "creatorNodeId"    # Ljava/util/UUID;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;-><init>(Ljava/util/UUID;)V

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->clientNodeIds:Ljava/util/Collection;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/cluster/ClusterMetrics;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 44
    invoke-static {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->serializeMetrics(Lorg/apache/ignite/cluster/ClusterMetrics;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)[B
    .locals 1
    .param p0, "x0"    # Ljava/util/UUID;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->serializeMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)[B

    move-result-object v0

    return-object v0
.end method

.method private static serializeMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)[B
    .locals 4
    .param p0, "nodeId"    # Ljava/util/UUID;
    .param p1, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 213
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 214
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 216
    :cond_1
    const/16 v1, 0x150

    new-array v0, v1, [B

    .line 218
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 219
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 v1, 0x8

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 221
    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->serialize([BILorg/apache/ignite/cluster/ClusterMetrics;)I

    .line 223
    return-object v0
.end method

.method private static serializeMetrics(Lorg/apache/ignite/cluster/ClusterMetrics;)[B
    .locals 2
    .param p0, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 198
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 200
    :cond_0
    const/16 v1, 0x140

    new-array v0, v1, [B

    .line 202
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->serialize([BILorg/apache/ignite/cluster/ClusterMetrics;)I

    .line 204
    return-object v0
.end method


# virtual methods
.method public addClientNodeId(Ljava/util/UUID;)V
    .locals 1
    .param p1, "clientNodeId"    # Ljava/util/UUID;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->clientNodeIds:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public clientNodeIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->clientNodeIds:Ljava/util/Collection;

    return-object v0
.end method

.method public hasMetrics()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetrics(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 135
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public metrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 178
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 180
    .local v1, "metricsSize":I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 183
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->clientNodeIds:Ljava/util/Collection;

    .line 186
    return-void
.end method

.method public removeMetrics(Ljava/util/UUID;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 110
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public setClientMetrics(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "clientNodeId"    # Ljava/util/UUID;
    .param p3, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 96
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    invoke-static {v0, p2, p3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->access$000(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V

    .line 102
    return-void
.end method

.method public setMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 81
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    invoke-direct {v1, p2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;-><init>(Lorg/apache/ignite/cluster/ClusterMetrics;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 162
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->clientNodeIds:Ljava/util/Collection;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 172
    return-void
.end method
