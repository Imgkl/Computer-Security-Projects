.class public Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;
.super Ljava/lang/Object;
.source "GridStripedReadWriteLock.java"


# instance fields
.field private final locks:[Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "concurrencyLevel"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v1, p1, [Ljava/util/concurrent/locks/ReadWriteLock;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public concurrencyLevel()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    array-length v0, v0

    return v0
.end method

.method public getAllLocks()[Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method public getLock(I)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->safeAbs(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLock(J)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    array-length v1, v1

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->safeAbs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->getLock(I)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-class v0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;

    const-string v1, "concurrency"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridStripedReadWriteLock;->locks:[Ljava/util/concurrent/locks/ReadWriteLock;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
