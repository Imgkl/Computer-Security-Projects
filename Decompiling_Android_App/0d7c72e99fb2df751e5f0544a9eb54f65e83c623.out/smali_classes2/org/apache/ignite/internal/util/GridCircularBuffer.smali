.class public Lorg/apache/ignite/internal/util/GridCircularBuffer;
.super Ljava/lang/Object;
.source "GridCircularBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final idxGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sizeMask:J


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->idxGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    if-lez p1, :cond_0

    move v1, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size should be greater than 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 49
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size should be power of two: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 51
    add-int/lit8 v1, p1, -0x1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->sizeMask:J

    .line 53
    new-array v1, p1, [Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    check-cast v1, [Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 57
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    new-instance v2, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;-><init>()V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 48
    goto :goto_0

    :cond_1
    move v2, v3

    .line 49
    goto :goto_1

    .line 58
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->idxGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 112
    .local v1, "idx":J
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->sizeMask:J

    and-long/2addr v4, v1

    long-to-int v6, v4

    .line 114
    .local v6, "idx0":I
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    aget-object v0, v0, v6

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    array-length v3, v3

    int-to-long v4, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->update(JLjava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)Ljava/lang/Object;
    .locals 8
    .param p2    # Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "c":Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->idxGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 127
    .local v1, "idx":J
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->sizeMask:J

    and-long/2addr v4, v1

    long-to-int v7, v4

    .line 129
    .local v7, "idx0":I
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    aget-object v0, v0, v7

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    array-length v3, v3

    int-to-long v4, v3

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->update(JLjava/lang/Object;JLorg/apache/ignite/internal/util/lang/IgniteInClosureX;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    .local p1, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 85
    .local v4, "t":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TT;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item()Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    .line 92
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v4    # "t":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TT;>;"
    :cond_0
    return-void

    .line 90
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    .restart local v4    # "t":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TT;>;"
    :cond_1
    invoke-interface {p1, v2}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public get(J)Lorg/apache/ignite/internal/util/typedef/T2;
    .locals 5
    .param p1, "idx"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->sizeMask:J

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 101
    .local v0, "idx0":I
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->get()Lorg/apache/ignite/internal/util/typedef/T2;

    move-result-object v1

    return-object v1
.end method

.method public items()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    array-length v6, v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v4, "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer;->arr:[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 67
    .local v5, "t":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TT;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item()Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    .line 75
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v5    # "t":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TT;>;"
    :cond_0
    return-object v4

    .line 72
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    .restart local v5    # "t":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TT;>;"
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer;, "Lorg/apache/ignite/internal/util/GridCircularBuffer<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridCircularBuffer;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
