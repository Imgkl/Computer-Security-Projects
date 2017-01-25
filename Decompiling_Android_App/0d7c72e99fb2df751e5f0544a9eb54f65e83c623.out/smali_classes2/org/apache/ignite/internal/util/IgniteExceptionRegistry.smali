.class public Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;
.super Ljava/lang/Object;
.source "IgniteExceptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_QUEUE_SIZE:I = 0x3e8

.field private static final instance:Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;


# instance fields
.field private errCnt:Ljava/util/concurrent/atomic/AtomicLong;

.field private maxSize:I

.field private final q:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<",
            "Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->instance:Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "IGNITE_EXCEPTION_REGISTRY_MAX_SIZE"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/ignite/IgniteSystemProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->maxSize:I

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->errCnt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 62
    return-void
.end method

.method public static get()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->instance:Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    return-object v0
.end method


# virtual methods
.method public errorCount()J
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->errCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrors(J)Ljava/util/List;
    .locals 7
    .param p1, "order"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;

    .line 98
    .local v0, "error":Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->access$000(Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v0    # "error":Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    :cond_1
    return-object v1
.end method

.method public onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v12, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v1, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->errCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v9

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;-><init>(JLjava/lang/Throwable;Ljava/lang/String;JLjava/lang/String;J)V

    invoke-virtual {v12, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->maxSize:I

    sub-int v0, v1, v2

    .line 84
    .local v0, "delta":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v0, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->maxSize:I

    if-le v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    .line 84
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public printErrors(Lorg/apache/ignite/IgniteLogger;)V
    .locals 8
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 122
    iget-object v4, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    .line 124
    .local v3, "size":I
    iget-object v4, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->q:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, "descIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;

    .line 129
    .local v1, "error":Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->time()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    Thread ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->threadId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    Thread name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->error()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 139
    .end local v1    # "error":Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    :cond_0
    return-void
.end method

.method public setMaxSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 111
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Max queue size must be greater than 0."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 113
    iput p1, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->maxSize:I

    .line 114
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
