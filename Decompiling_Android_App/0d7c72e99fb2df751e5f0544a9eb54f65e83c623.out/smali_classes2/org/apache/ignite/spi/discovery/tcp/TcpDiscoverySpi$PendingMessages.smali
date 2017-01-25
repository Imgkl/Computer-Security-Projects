.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;
.super Ljava/lang/Object;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingMessages"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX:I = 0x400


# instance fields
.field private discardId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final msgs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2431
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2436
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;

    .prologue
    .line 2431
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;-><init>()V

    return-void
.end method

.method static synthetic access$2900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    .prologue
    .line 2431
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->discardId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    .prologue
    .line 2431
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method add(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 2448
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2450
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 2451
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 2453
    .local v0, "polled":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2455
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->discardId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2458
    .end local v0    # "polled":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :cond_2
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 2506
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2508
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->discardId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2509
    return-void
.end method

.method discard(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 2517
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->discardId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2518
    return-void
.end method

.method messages(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Collection;
    .locals 5
    .param p1, "lastMsgId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2469
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2471
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2473
    .local v0, "copy":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    const/4 v3, 0x1

    .line 2475
    .local v3, "skip":Z
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 2476
    .local v2, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    if-eqz v3, :cond_2

    .line 2477
    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2478
    const/4 v3, 0x0

    goto :goto_0

    .line 2481
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2484
    .end local v2    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :cond_3
    if-nez v3, :cond_4

    .end local v0    # "copy":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    :goto_1
    return-object v0

    .restart local v0    # "copy":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method reset(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "discardId"    # Lorg/apache/ignite/lang/IgniteUuid;
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
    .line 2494
    .local p1, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2496
    if-eqz p1, :cond_0

    .line 2497
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->msgs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 2499
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->discardId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2500
    return-void
.end method
