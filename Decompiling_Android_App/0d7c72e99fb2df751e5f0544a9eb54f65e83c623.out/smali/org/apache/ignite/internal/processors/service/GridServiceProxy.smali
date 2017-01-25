.class Lorg/apache/ignite/internal/processors/service/GridServiceProxy;
.super Ljava/lang/Object;
.source "GridServiceProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/service/GridServiceProxy$1;,
        Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;,
        Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private hasLocNode:Z

.field private final log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final prj:Lorg/apache/ignite/cluster/ClusterGroup;

.field private final proxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final rmtNode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Ljava/lang/Class;ZLorg/apache/ignite/internal/GridKernalContext;)V
    .locals 4
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "sticky"    # Z
    .param p5, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<-TT;>;Z",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>;"
    .local p3, "svc":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->rmtNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    .line 75
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->hasLocalNode(Lorg/apache/ignite/cluster/ClusterGroup;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->hasLocNode:Z

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p5, v0}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->log:Lorg/apache/ignite/IgniteLogger;

    .line 80
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    new-instance v2, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p4, v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/service/GridServiceProxy$1;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->proxy:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->rmtNode:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->hasLocNode:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    return-object v0
.end method

.method private hasLocalNode(Lorg/apache/ignite/cluster/ClusterGroup;)Z
    .locals 3
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>;"
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 93
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 97
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method proxy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->proxy:Ljava/lang/Object;

    return-object v0
.end method
