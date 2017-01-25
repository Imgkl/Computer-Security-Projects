.class public Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
.super Ljava/lang/Object;
.source "GridClientNodeImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$1;,
        Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    }
.end annotation


# instance fields
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
.end field

.field private caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/client/GridClientCacheMode;",
            ">;"
        }
    .end annotation
.end field

.field private connectable:Z

.field private consistentId:Ljava/lang/Object;

.field private metrics:Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

.field private nodeId:Ljava/util/UUID;

.field private tcpAddrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tcpHostNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tcpPort:I

.field private final tcpSockAddrs:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpAddrs:Ljava/util/List;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpHostNames:Ljava/util/List;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attrs:Ljava/util/Map;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->caches:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpSockAddrs:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    return-void
.end method

.method static synthetic access$102(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/UUID;)Ljava/util/UUID;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic access$202(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->consistentId:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$302(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpAddrs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpHostNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpPort:I

    return p1
.end method

.method static synthetic access$602(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attrs:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$702(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Lorg/apache/ignite/internal/client/GridClientNodeMetrics;)Lorg/apache/ignite/internal/client/GridClientNodeMetrics;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->metrics:Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    return-object p1
.end method

.method static synthetic access$802(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->caches:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$902(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->connectable:Z

    return p1
.end method

.method public static builder()Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    invoke-direct {v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$1;)V

    return-object v0
.end method

.method public static builder(Lorg/apache/ignite/internal/client/GridClientNode;ZZ)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 4
    .param p0, "from"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .param p1, "skipAttrs"    # Z
    .param p2, "skipMetrics"    # Z

    .prologue
    .line 89
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    new-instance v2, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    invoke-direct {v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$1;)V

    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->nodeId(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->consistentId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->consistentId(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->tcpAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->tcpAddresses(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->tcpPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->tcpPort(I)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->caches()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->caches(Ljava/util/Map;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->connectable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->connectable(Z)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v0

    .line 97
    .local v0, "b":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    if-nez p1, :cond_0

    .line 98
    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->attributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->attributes(Ljava/util/Map;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    invoke-interface {p0}, Lorg/apache/ignite/internal/client/GridClientNode;->metrics()Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->metrics(Lorg/apache/ignite/internal/client/GridClientNodeMetrics;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    .line 103
    :cond_1
    return-object v0
.end method

.method private filterIfNecessary(Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 4
    .param p2, "filter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-nez p2, :cond_0

    .line 199
    .end local p1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :goto_0
    return-object p1

    .line 193
    .restart local p1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 196
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_2
    move-object p1, v2

    .line 199
    goto :goto_0
.end method


# virtual methods
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public attributes()Ljava/util/Map;
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
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attrs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public availableAddresses(Lorg/apache/ignite/internal/client/GridClientProtocol;Z)Ljava/util/Collection;
    .locals 8
    .param p1, "proto"    # Lorg/apache/ignite/internal/client/GridClientProtocol;
    .param p2, "filterResolved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientProtocol;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v5, Lorg/apache/ignite/internal/client/GridClientProtocol;->TCP:Lorg/apache/ignite/internal/client/GridClientProtocol;

    if-ne p1, v5, :cond_0

    .line 161
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpSockAddrs:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    .local v2, "addrsCache":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/Collection<Ljava/net/InetSocketAddress;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpAddrs:Ljava/util/List;

    .line 163
    .local v0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpHostNames:Ljava/util/List;

    .line 164
    .local v3, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpPort:I

    .line 169
    .local v4, "port":I
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 171
    .local v1, "addrs0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0, v1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->filterIfNecessary(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v5

    .line 179
    :goto_0
    return-object v5

    .line 167
    .end local v0    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v1    # "addrs0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v2    # "addrsCache":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/Collection<Ljava/net/InetSocketAddress;>;>;"
    .end local v3    # "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v4    # "port":I
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown protocol: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 174
    .restart local v0    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v1    # "addrs0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .restart local v2    # "addrsCache":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/Collection<Ljava/net/InetSocketAddress;>;>;"
    .restart local v3    # "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v4    # "port":I
    :cond_1
    invoke-static {v0, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toSocketAddresses(Ljava/util/Collection;Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v1

    .line 176
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {p0, v5, p2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->filterIfNecessary(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v5

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->filterIfNecessary(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v5

    goto :goto_0
.end method

.method public caches()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/client/GridClientCacheMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->caches:Ljava/util/Map;

    return-object v0
.end method

.method public connectable()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->connectable:Z

    return v0
.end method

.method public consistentId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->consistentId:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 209
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    .line 211
    :cond_0
    instance-of v1, p1, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 213
    check-cast v0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 215
    .local v0, "that":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;

    iget-object v2, v0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public metrics()Lorg/apache/ignite/internal/client/GridClientNodeMetrics;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->metrics:Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public tcpAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpAddrs:Ljava/util/List;

    return-object v0
.end method

.method public tcpHostNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpHostNames:Ljava/util/List;

    return-object v0
.end method

.method public tcpPort()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpPort:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientNodeImpl [nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consistentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->consistentId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tcpAddrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpAddrs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tcpHostNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpHostNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binaryPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
