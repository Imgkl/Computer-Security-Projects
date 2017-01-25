.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$2;
.super Ljava/lang/Object;
.source "GridCacheEvictionManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$2;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->processEvictionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V

    .line 200
    return-void
.end method
