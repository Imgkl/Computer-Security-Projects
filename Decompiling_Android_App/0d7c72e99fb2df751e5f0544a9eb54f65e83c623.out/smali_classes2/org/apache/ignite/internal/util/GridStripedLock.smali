.class public Lorg/apache/ignite/internal/util/GridStripedLock;
.super Ljava/lang/Object;
.source "GridStripedLock.java"


# instance fields
.field private final locks:[Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "concurrencyLevel"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v1, p1, [Ljava/util/concurrent/locks/Lock;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public concurrencyLevel()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    array-length v0, v0

    return v0
.end method

.method public getLock(I)Ljava/util/concurrent/locks/Lock;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->safeAbs(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLock(J)Ljava/util/concurrent/locks/Lock;
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    array-length v1, v1

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->safeAbs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(I)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0
.end method

.method public lock(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(I)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 92
    return-void
.end method

.method public lock(J)V
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(J)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    return-void
.end method

.method public lock(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    const-class v0, Lorg/apache/ignite/internal/util/GridStripedLock;

    const-string v1, "concurrency"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridStripedLock;->locks:[Ljava/util/concurrent/locks/Lock;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlock(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(I)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    return-void
.end method

.method public unlock(J)V
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(J)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    return-void
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridStripedLock;->getLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    return-void
.end method
