.class final Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
.super Ljava/lang/Object;
.source "RoundRobinGlobalLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GridNodeList"
.end annotation


# instance fields
.field private final curIdx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "curIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->curIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 281
    iput-object p2, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->nodes:Ljava/util/List;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getNodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getCurrentIdx()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentIdx()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->curIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->nodes:Ljava/util/List;

    return-object v0
.end method
