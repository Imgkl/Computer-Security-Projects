.class public Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
.super Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;
.source "TcpDiscoveryNode.java"

# interfaces
.implements Lorg/apache/ignite/cluster/ClusterNode;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private addrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private transient aliveCheck:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private clientRouterNodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private consistentId:Ljava/lang/Object;

.field private discPort:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private hostNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/util/UUID;

.field private volatile intOrder:J

.field private volatile lastUpdateTime:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private loc:Z

.field private volatile metrics:Lorg/apache/ignite/cluster/ClusterMetrics;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile order:J

.field private sockAddrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ver:Lorg/apache/ignite/lang/IgniteProductVersion;

.field private visible:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;-><init>()V

    .line 83
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime:J

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;Lorg/apache/ignite/lang/IgniteProductVersion;)V
    .locals 2
    .param p1, "id"    # Ljava/util/UUID;
    .param p4, "discPort"    # I
    .param p5, "metricsProvider"    # Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;
    .param p6, "ver"    # Lorg/apache/ignite/lang/IgniteProductVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;-><init>()V

    .line 83
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime:J

    .line 127
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p6, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id:Ljava/util/UUID;

    .line 133
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->addrs:Ljava/util/Collection;

    .line 134
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->hostNames:Ljava/util/Collection;

    .line 135
    iput p4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discPort:I

    .line 136
    iput-object p5, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    .line 137
    iput-object p6, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->ver:Lorg/apache/ignite/lang/IgniteProductVersion;

    .line 139
    invoke-static {p2, p4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->consistentId(Ljava/util/Collection;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->consistentId:Ljava/lang/Object;

    .line 141
    invoke-interface {p5}, Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    .line 142
    invoke-static {p0, p4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toSocketAddresses(Lorg/apache/ignite/cluster/ClusterNode;I)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->sockAddrs:Ljava/util/Collection;

    .line 143
    return-void
.end method


# virtual methods
.method public addresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->addrs:Ljava/util/Collection;

    return-object v0
.end method

.method public aliveCheck(I)V
    .locals 1
    .param p1, "aliveCheck"    # I

    .prologue
    .line 357
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_0
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->aliveCheck:I

    .line 360
    return-void
.end method

.method public attribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "org.apache.ignite.security.cred"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public attributes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attrs:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Map;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clientRouterNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public clientRouterNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "clientRouterNodeId"    # Ljava/util/UUID;

    .prologue
    .line 373
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId:Ljava/util/UUID;

    .line 374
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->compareTo(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)I
    .locals 6
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 378
    if-nez p1, :cond_1

    .line 379
    const/4 v0, 0x1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 383
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 384
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate order [this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", other="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 386
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_0
.end method

.method public consistentId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->consistentId:Ljava/lang/Object;

    return-object v0
.end method

.method public decrementAliveCheck()I
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 350
    :cond_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->aliveCheck:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->aliveCheck:I

    return v0
.end method

.method public discoveryPort()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discPort:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 447
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eqNodes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public hostNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->hostNames:Ljava/util/Collection;

    return-object v0
.end method

.method public id()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public internalOrder()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->intOrder:J

    return-wide v0
.end method

.method public internalOrder(J)V
    .locals 3
    .param p1, "intOrder"    # J

    .prologue
    .line 223
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->intOrder:J

    .line 226
    return-void
.end method

.method public isClient()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaemon()Z
    .locals 2

    .prologue
    .line 277
    const-string/jumbo v1, "true"

    const-string v0, "org.apache.ignite.daemon"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->loc:Z

    return v0
.end method

.method public lastUpdateTime()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime:J

    return-wide v0
.end method

.method public lastUpdateTime(J)V
    .locals 3
    .param p1, "lastUpdateTime"    # J

    .prologue
    .line 314
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 316
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime:J

    .line 317
    return-void
.end method

.method public local(Z)V
    .locals 0
    .param p1, "loc"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->loc:Z

    .line 273
    return-void
.end method

.method public metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    return-object v0
.end method

.method public order()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order:J

    return-wide v0
.end method

.method public order(J)V
    .locals 3
    .param p1, "order"    # J

    .prologue
    .line 239
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Order is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 241
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order:J

    .line 242
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id:Ljava/util/UUID;

    .line 420
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attrs:Ljava/util/Map;

    .line 421
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->addrs:Ljava/util/Collection;

    .line 422
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->hostNames:Ljava/util/Collection;

    .line 423
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discPort:I

    .line 425
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discPort:I

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toSocketAddresses(Lorg/apache/ignite/cluster/ClusterNode;I)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->sockAddrs:Ljava/util/Collection;

    .line 427
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->addrs:Ljava/util/Collection;

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discPort:I

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->consistentId(Ljava/util/Collection;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->consistentId:Ljava/lang/Object;

    .line 429
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    .line 431
    .local v0, "mtr":[B
    if-eqz v0, :cond_0

    .line 432
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->deserialize([BI)Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    .line 434
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order:J

    .line 435
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->intOrder:J

    .line 436
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteProductVersion;

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->ver:Lorg/apache/ignite/lang/IgniteProductVersion;

    .line 437
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId:Ljava/util/UUID;

    .line 438
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attrs:Ljava/util/Map;

    .line 182
    return-void
.end method

.method public setMetrics(Lorg/apache/ignite/cluster/ClusterMetrics;)V
    .locals 1
    .param p1, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 207
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    .line 210
    return-void
.end method

.method public socketAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->sockAddrs:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-string v1, "isClient"

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Lorg/apache/ignite/lang/IgniteProductVersion;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->ver:Lorg/apache/ignite/lang/IgniteProductVersion;

    return-object v0
.end method

.method public version(Lorg/apache/ignite/lang/IgniteProductVersion;)V
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/lang/IgniteProductVersion;

    .prologue
    .line 253
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->ver:Lorg/apache/ignite/lang/IgniteProductVersion;

    .line 256
    return-void
.end method

.method public visible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible:Z

    .line 335
    return-void
.end method

.method public visible()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible:Z

    return v0
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
    .line 394
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id:Ljava/util/UUID;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 395
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attrs:Ljava/util/Map;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 396
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->addrs:Ljava/util/Collection;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 397
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->hostNames:Ljava/util/Collection;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 398
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discPort:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "mtr":[B
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    if-eqz v1, :cond_0

    .line 403
    const/16 v1, 0x140

    new-array v0, v1, [B

    .line 405
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->serialize([BILorg/apache/ignite/cluster/ClusterMetrics;)I

    .line 408
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 410
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order:J

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 411
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->intOrder:J

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 412
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->ver:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 413
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId:Ljava/util/UUID;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 414
    return-void
.end method
