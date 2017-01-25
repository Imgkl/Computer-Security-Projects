.class public Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;
.super Ljava/util/AbstractSet;
.source "GridConcurrentHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final VAL:Ljava/lang/Object;


# instance fields
.field protected map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->VAL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;*>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->VAL:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 107
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected final map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Object;",
            ">;>()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridConcurrentHashSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
