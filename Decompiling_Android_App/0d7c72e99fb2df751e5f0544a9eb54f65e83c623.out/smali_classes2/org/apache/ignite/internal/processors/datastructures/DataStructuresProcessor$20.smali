.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retryRemove(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;->val$key:Ljava/lang/Object;

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
    .line 1113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;->val$key:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
