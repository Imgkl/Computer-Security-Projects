.class public Lorg/apache/ignite/internal/util/GridKeyLock;
.super Ljava/lang/Object;
.source "GridKeyLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridKeyLock$1;,
        Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final locks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/GridKeyLock$Sync;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/GridKeyLock;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridKeyLock;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridKeyLock;->locks:Ljava/util/concurrent/ConcurrentMap;

    .line 128
    return-void
.end method


# virtual methods
.method public lock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "key":Ljava/lang/Object;, "TT;"
    sget-boolean v4, Lorg/apache/ignite/internal/util/GridKeyLock;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, "interrupted":Z
    new-instance v3, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridKeyLock$1;)V

    .line 69
    .local v3, "t":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridKeyLock;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v2, "old":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    if-eqz v2, :cond_1

    .line 74
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 80
    goto :goto_1

    .line 88
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    if-eqz v1, :cond_2

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-object v3

    .line 88
    .end local v2    # "old":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    throw v4
.end method

.method public lockInterruptibly(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "key":Ljava/lang/Object;, "TT;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridKeyLock;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 44
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridKeyLock$1;)V

    .line 47
    .local v1, "t":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridKeyLock;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;

    .line 49
    .local v0, "old":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;->await()V

    goto :goto_0

    .line 52
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    const-class v0, Lorg/apache/ignite/internal/util/GridKeyLock;

    const-string v1, "locksSize"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridKeyLock;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryLock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 99
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridKeyLock;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 101
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridKeyLock$1;)V

    .line 103
    .local v1, "t":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridKeyLock;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;

    .line 105
    .local v0, "old":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    if-eqz v0, :cond_1

    move-object v1, v2

    .end local v1    # "t":Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
    :cond_1
    return-object v1
.end method

.method public unlock(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p2, "sync"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridKeyLock;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock has not been acquired for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    check-cast p2, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;

    .end local p2    # "sync":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;->finish()V

    .line 117
    return-void
.end method
