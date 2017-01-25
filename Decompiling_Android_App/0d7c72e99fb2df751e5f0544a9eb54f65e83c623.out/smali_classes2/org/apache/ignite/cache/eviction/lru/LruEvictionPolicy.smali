.class public Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;
.super Ljava/lang/Object;
.source "LruEvictionPolicy.java"

# interfaces
.implements Lorg/apache/ignite/cache/eviction/EvictionPolicy;
.implements Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicyMBean;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
        "<TK;TV;>;",
        "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicyMBean;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private volatile max:I

.field private final queue:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    .line 43
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    .line 43
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 59
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 61
    iput p1, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shrink()V
    .locals 5

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    iget v2, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    .line 168
    .local v2, "max":I
    iget-object v4, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v3

    .line 170
    .local v3, "startSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 171
    iget-object v4, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/eviction/EvictableEntry;

    .line 173
    .local v0, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .line 182
    .end local v0    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    :cond_0
    return-void

    .line 176
    .restart local v0    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->evict()Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    invoke-interface {v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta()Ljava/lang/Object;

    .line 179
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    .local p1, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 120
    invoke-interface {p1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->meta()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 123
    .local v1, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;>;"
    if-nez v1, :cond_5

    .line 125
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .line 127
    invoke-interface {p1, v1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->putMetaIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 129
    iget-object v3, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 159
    :cond_1
    :goto_0
    return v2

    .line 134
    :cond_2
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 135
    invoke-interface {p1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v3

    if-nez v3, :cond_3

    .line 137
    iget-object v3, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    goto :goto_0

    .line 142
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 145
    :cond_4
    invoke-interface {p1, v1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 149
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    .line 153
    .local v0, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;>;"
    invoke-interface {p1, v1, v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->replaceMeta(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    iget-object v3, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->size()I

    move-result v0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    return v0
.end method

.method public onEntryAccessed(ZLorg/apache/ignite/cache/eviction/EvictableEntry;)V
    .locals 2
    .param p1, "rmv"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    .local p2, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    if-nez p1, :cond_2

    .line 101
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->shrink()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 110
    .local v0, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    goto :goto_0
.end method

.method public queue()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    .line 192
    return-void
.end method

.method public setMaxSize(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 81
    iput p1, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;

    const-string v1, "size"

    iget-object v2, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicy;->max:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 187
    return-void
.end method
