.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteReducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->objectsReducer()Lorg/apache/ignite/lang/IgniteReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteReducer",
        "<TT;",
        "Ljava/util/Collection",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final ret:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;->ret:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 944
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 945
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;->ret:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;->reduce()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;->ret:Ljava/util/Collection;

    return-object v0
.end method
