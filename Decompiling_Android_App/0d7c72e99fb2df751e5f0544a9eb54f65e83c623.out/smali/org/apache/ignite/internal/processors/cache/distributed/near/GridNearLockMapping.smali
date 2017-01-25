.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
.super Ljava/lang/Object;
.source "GridNearLockMapping.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private distributedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private mappedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private node:Lorg/apache/ignite/cluster/ClusterNode;

.field private req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "firstKey"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->mappedKeys:Ljava/util/Collection;

    .line 54
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->mappedKeys:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->mappedKeys:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public distributedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->distributedKeys:Ljava/util/Collection;

    return-object v0
.end method

.method public distributedKeys(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->distributedKeys:Ljava/util/Collection;

    .line 111
    return-void
.end method

.method public mappedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->mappedKeys:Ljava/util/Collection;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public request()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    return-object v0
.end method

.method public request(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;)V
    .locals 1
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    .prologue
    .line 94
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
