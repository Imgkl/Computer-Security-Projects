.class public Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;
.super Ljava/lang/Object;
.source "QueryCursorImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private fieldsMeta:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private iterTaken:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iter:Ljava/util/Iterator;

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iter:Ljava/util/Iterator;

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    if-eqz v1, :cond_0

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iter:Ljava/util/Iterator;

    .line 92
    instance-of v2, v1, Ljava/lang/AutoCloseable;

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    check-cast v1, Ljava/lang/AutoCloseable;

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public fieldsMeta()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->fieldsMeta:Ljava/util/Collection;

    return-object v0
.end method

.method public fieldsMeta(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    .local p1, "fieldsMeta":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->fieldsMeta:Ljava/util/Collection;

    .line 108
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->close()V

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->close()V

    .line 71
    return-object v0
.end method

.method public getAll(Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    .local p1, "clo":Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer;, "Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer;->consume(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->close()V

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->close()V

    .line 83
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;, "Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iter:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Cursor is closed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iterTaken:Z

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Iterator is already taken from this cursor."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iterTaken:Z

    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->iter:Ljava/util/Iterator;

    return-object v0
.end method
