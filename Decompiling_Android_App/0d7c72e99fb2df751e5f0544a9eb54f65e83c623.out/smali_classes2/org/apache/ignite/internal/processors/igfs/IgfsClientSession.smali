.class public Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
.super Ljava/lang/Object;
.source "IgfsClientSession.java"


# instance fields
.field private rsrcMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->rsrcMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public registerResource(JLjava/io/Closeable;)Z
    .locals 3
    .param p1, "rsrcId"    # J
    .param p3, "rsrc"    # Ljava/io/Closeable;

    .prologue
    .line 42
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->rsrcMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "old":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registeredResources()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->rsrcMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resource(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 1
    .param p1, "rsrcId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->rsrcMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unregisterResource(Ljava/lang/Long;Ljava/io/Closeable;)Z
    .locals 1
    .param p1, "rsrcId"    # Ljava/lang/Long;
    .param p2, "rsrc"    # Ljava/io/Closeable;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->rsrcMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
