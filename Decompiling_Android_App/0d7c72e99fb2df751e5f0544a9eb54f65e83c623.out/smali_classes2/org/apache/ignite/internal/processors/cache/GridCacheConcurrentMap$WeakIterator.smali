.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;
.super Ljava/lang/ref/WeakReference;
.source "GridCacheConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1500
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0",
            "<TK;TV;>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1509
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator<TK;TV;>;"
    .local p1, "ref":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1511
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1512
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1513
    :cond_1
    return-void
.end method
