.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
        ">;",
        "Ljava/util/Map",
        "<TK;",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2677
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 0

    .prologue
    .line 2677
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.33;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2677
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.33;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2680
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.33;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 2682
    .local v0, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2684
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method
