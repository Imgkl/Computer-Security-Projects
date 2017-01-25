.class public Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
.super Ljava/lang/Object;
.source "TcpDiscoveryHeartbeatMessage.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricsSet"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private clientMetrics:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation
.end field

.field private metrics:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterMetrics;)V
    .locals 1
    .param p1, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->access$100(Lorg/apache/ignite/cluster/ClusterMetrics;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics:[B

    .line 252
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->addClientMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V

    return-void
.end method

.method private addClientMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 279
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 280
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 282
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    .line 285
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    invoke-static {p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->access$200(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method


# virtual methods
.method public clientMetrics()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterMetrics;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->deserialize([BI)Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    return-object v0
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
    .line 302
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics:[B

    .line 304
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 306
    .local v0, "clientMetricsSize":I
    if-ltz v0, :cond_0

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 310
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_0
    return-void
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
    .line 290
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics:[B

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 292
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 294
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 296
    .local v0, "arr":[B
    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    goto :goto_1

    .line 292
    .end local v0    # "arr":[B
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 298
    :cond_1
    return-void
.end method
