.class Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;
.super Ljava/lang/Object;
.source "CacheDataStructuresManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->retryPutIfAbsent(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

.field final synthetic val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->val$key:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->val$val:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->val$key:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;->val$val:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
