.class public Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;
.super Ljava/lang/Object;
.source "FifoEvictionPolicy.java"

# interfaces
.implements Lorg/apache/ignite/cache/eviction/EvictionPolicy;
.implements Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicyMBean;
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
        "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicyMBean;",
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
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

    .line 43
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

    .line 43
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 59
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 61
    iput p1, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

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
    .line 159
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    iget v2, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

    .line 161
    .local v2, "max":I
    iget-object v4, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v3

    .line 163
    .local v3, "startSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 164
    iget-object v4, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/eviction/EvictableEntry;

    .line 166
    .local v0, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .line 175
    .end local v0    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    :cond_0
    return-void

    .line 169
    .restart local v0    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->evict()Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-interface {v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta()Ljava/lang/Object;

    .line 172
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z

    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    .local p1, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 121
    invoke-interface {p1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->meta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 124
    .local v0, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;>;"
    if-nez v0, :cond_1

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    .line 128
    invoke-interface {p1, v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->putMetaIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 152
    :cond_1
    :goto_0
    return v1

    .line 135
    :cond_2
    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 136
    invoke-interface {p1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    goto :goto_0

    .line 143
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_4
    invoke-interface {p1, v0}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->size()I

    move-result v0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

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
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    .local p2, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    if-nez p1, :cond_2

    .line 101
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0}, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->shrink()V

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 111
    .local v0, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

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
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

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
    .line 184
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

    .line 185
    return-void
.end method

.method public setMaxSize(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 81
    iput p1, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 179
    .local p0, "this":Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicy;->max:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 180
    return-void
.end method
