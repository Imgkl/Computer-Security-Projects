.class public Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
.super Ljava/lang/Object;
.source "TcpDiscoveryNodesRing.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CLIENT_NODES:Lorg/apache/ignite/internal/util/typedef/PN;

.field private static final VISIBLE_NODES:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

.field private nodeOrder:J

.field private nodes:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private nodesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final rwLock:Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private topVer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    .line 35
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$1;

    invoke-direct {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->VISIBLE_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 42
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$2;

    invoke-direct {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->CLIENT_NODES:Lorg/apache/ignite/internal/util/typedef/PN;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method private varargs nodes([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 606
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v0

    .line 608
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 611
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private serverNodes(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
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
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    .line 624
    .local v0, "excludedEmpty":Z
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;

    invoke-direct {v4, p0, v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;ZLjava/util/Collection;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 156
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    :goto_0
    return v0

    .line 165
    :cond_2
    :try_start_1
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->maxInternalOrder()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding node to the middle of the ring [ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 168
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    .line 172
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime(J)V

    .line 174
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allNodes()Ljava/util/Collection;
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

    .prologue
    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 347
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    .line 349
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    .line 354
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J

    .line 359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topVer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    return-void

    .line 362
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clientNodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->CLIENT_NODES:Lorg/apache/ignite/internal/util/typedef/PN;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public coordinator()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 375
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->coordinator(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public coordinator(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 3
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
            ">;)",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 394
    .local p1, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 397
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->serverNodes(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 399
    .local v0, "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x0

    .line 405
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v1

    .line 402
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public hasRemoteNodes()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 138
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-le v1, v0, :cond_0

    .line 144
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public incrementTopologyVersion()J
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 567
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topVer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topVer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public localNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    .locals 2
    .param p1, "locNode"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 75
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 82
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public maxInternalOrder()J
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 194
    .local v0, "last":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 197
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2

    .line 194
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 197
    .end local v0    # "last":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public nextNode()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 418
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 424
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nextNode(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 424
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public nextNode(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 5
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
            ">;)",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 439
    .local p1, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 441
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 444
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->serverNodes(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 446
    .local v0, "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 447
    const/4 v3, 0x0

    .line 461
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v3

    .line 449
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 454
    .local v2, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    .end local v2    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 458
    :cond_4
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 461
    .end local v0    # "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public nextNodeOrder()J
    .locals 6

    .prologue
    .line 580
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 583
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 584
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 586
    .local v0, "last":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    .end local v0    # "last":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 588
    .restart local v0    # "last":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J

    .line 591
    .end local v0    # "last":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 256
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public previousNode()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 474
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 480
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 477
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->previousNode(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 480
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public previousNode(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 5
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
            ">;)",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 493
    .local p1, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 495
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 498
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->serverNodes(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 500
    .local v0, "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 501
    const/4 v3, 0x0

    .line 515
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v3

    .line 503
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 505
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 508
    .local v2, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    .end local v2    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 512
    :cond_4
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 515
    .end local v0    # "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public remoteNodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeNode(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 275
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 276
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 278
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 281
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 283
    .local v0, "rmv":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_2

    .line 284
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    .line 286
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v1, v0}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .end local v0    # "rmv":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public removeNodes(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    sget-boolean v6, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 305
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 308
    const/4 v0, 0x1

    .line 310
    .local v0, "firstRmv":Z
    const/4 v3, 0x0

    .line 312
    .local v3, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v4, v3

    .end local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .local v4, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 313
    .local v2, "id":Ljava/util/UUID;
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 315
    .local v5, "rmv":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v5, :cond_4

    .line 316
    if-eqz v0, :cond_3

    .line 317
    new-instance v6, Ljava/util/TreeSet;

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    const/4 v0, 0x0

    .line 324
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v6, v5}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v4, v3

    .line 328
    .end local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    goto :goto_0

    .line 330
    .end local v2    # "id":Ljava/util/UUID;
    .end local v5    # "rmv":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_1
    if-nez v4, :cond_2

    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 333
    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v6

    :goto_3
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .end local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    goto :goto_3

    .end local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v2    # "id":Ljava/util/UUID;
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v5    # "rmv":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    move-object v3, v4

    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    goto :goto_1

    .end local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    goto :goto_2
.end method

.method public restoreTopology(Ljava/lang/Iterable;J)V
    .locals 6
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 214
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 216
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 219
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v3, p2, p3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder(J)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->clear()V

    .line 223
    const/4 v0, 0x1

    .line 225
    .local v0, "firstAdd":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 226
    .local v2, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz v0, :cond_3

    .line 232
    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    .line 234
    const/4 v0, 0x0

    .line 237
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime(J)V

    .line 239
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes:Ljava/util/NavigableSet;

    invoke-interface {v3, v2}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    .end local v0    # "firstAdd":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 242
    .restart local v0    # "firstAdd":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    iput-wide p2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodeOrder:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 636
    :try_start_0
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 639
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public topologyVersion()J
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 528
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topVer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public topologyVersion(J)Z
    .locals 3
    .param p1, "topVer"    # J

    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 545
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topVer:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 546
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topVer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    const/4 v0, 0x1

    .line 554
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 551
    :cond_0
    const/4 v0, 0x0

    .line 554
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public visibleNodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->VISIBLE_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public visibleRemoteNodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->VISIBLE_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nodes([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
