.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;
.super Ljava/lang/Object;
.source "GridCacheCommandHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlaggedCacheOperationCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cacheName:Ljava/lang/String;

.field private clientId:Ljava/util/UUID;

.field private final flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field private g:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private final key:Ljava/lang/Object;

.field private final op:Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;Ljava/lang/Object;)V
    .locals 0
    .param p1, "clientId"    # Ljava/util/UUID;
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .param p4, "op"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;
    .param p5, "key"    # Ljava/lang/Object;

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->clientId:Ljava/util/UUID;

    .line 652
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->cacheName:Ljava/lang/String;

    .line 653
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 654
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->op:Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;

    .line 655
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->key:Ljava/lang/Object;

    .line 656
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;

    .prologue
    .line 616
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;-><init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->call()Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 660
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->g:Lorg/apache/ignite/Ignite;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->cacheName:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->access$400(Lorg/apache/ignite/Ignite;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->clientId:Ljava/util/UUID;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->flags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    .line 665
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<**>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->op:Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->g:Lorg/apache/ignite/Ignite;

    check-cast v1, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;->key:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->access$500(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    return-object v1
.end method
