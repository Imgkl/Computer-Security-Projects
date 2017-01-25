.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;
.super Ljava/lang/Object;
.source "GridCacheQueryCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->broadcast(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 153
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
