.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;
.super Ljava/lang/Object;
.source "OptimizedObjectStreamRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$1;,
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final holders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static pool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->$assertionsDisabled:Z

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static closeIn(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V
    .locals 3
    .param p0, "in"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    .prologue
    .line 112
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 114
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    .line 116
    .local v1, "holder":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->releaseIn()V

    .line 118
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 121
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, "b":Z
    sget-boolean v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 125
    .end local v0    # "b":Z
    :cond_0
    return-void
.end method

.method static closeOut(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V
    .locals 3
    .param p0, "out"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    .prologue
    .line 90
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 92
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    .line 94
    .local v1, "holder":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->releaseOut()V

    .line 96
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_0

    .line 97
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 99
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    .local v0, "b":Z
    sget-boolean v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 103
    .end local v0    # "b":Z
    :cond_0
    return-void
.end method

.method private static holder()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    .line 136
    .local v1, "holder":Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;
    if-nez v1, :cond_0

    .line 138
    :try_start_0
    sget-object v3, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holders:Ljava/lang/ThreadLocal;

    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-object v1

    .line 138
    :cond_1
    new-instance v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$1;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    const-string v3, "Failed to take object stream from pool (thread interrupted)."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    throw v2
.end method

.method static in()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holder()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->acquireIn()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method static out()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->holder()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->acquireOut()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method static poolSize(I)V
    .locals 5
    .param p0, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 51
    if-lez p0, :cond_1

    .line 52
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 55
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;

    invoke-direct {v3, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    .local v0, "b":Z
    sget-boolean v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "b":Z
    .end local v1    # "i":I
    :cond_1
    sput-object v4, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;->pool:Ljava/util/concurrent/BlockingQueue;

    .line 62
    :cond_2
    return-void
.end method
