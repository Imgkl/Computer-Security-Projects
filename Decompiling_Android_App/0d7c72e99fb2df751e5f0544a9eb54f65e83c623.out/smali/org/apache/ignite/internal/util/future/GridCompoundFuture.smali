.class public Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCompoundFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final futs:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private ignoreChildFailures:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private init:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lsnrCalls:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pending:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private rdc:Lorg/apache/ignite/lang/IgniteReducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private res:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 42
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 45
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->lsnrCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteReducer;)V
    .locals 3
    .param p1    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TR;>;"
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 42
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 45
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->lsnrCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteReducer;Ljava/lang/Iterable;)V
    .locals 3
    .param p1    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TR;>;"
    .local p2, "futs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 42
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 45
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->lsnrCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 93
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->addAll(Ljava/lang/Iterable;)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->ignoreFailure(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->lsnrCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->checkComplete()V

    return-void
.end method

.method private checkComplete()V
    .locals 9

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 228
    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 230
    .local v1, "err":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->ignoreFailure(Ljava/lang/Throwable;)Z

    move-result v2

    .line 232
    .local v2, "ignore":Z
    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->lsnrCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v5

    if-eq v4, v5, :cond_0

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    if-nez v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    invoke-interface {v6}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->res:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v4

    if-eqz v2, :cond_2

    move-object v1, v3

    .end local v1    # "err":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, v4, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 255
    :cond_3
    :goto_0
    return-void

    .line 238
    .restart local v1    # "err":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute compound future reducer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 241
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/AssertionError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute compound future reducer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 250
    throw v0
.end method

.method private ignoreFailure(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    const/4 v4, 0x1

    .line 264
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v4

    .line 267
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->ignoreChildFailures:[Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 268
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->ignoreChildFailures:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 269
    .local v2, "ignoreCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "i$":I
    .end local v2    # "ignoreCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .end local v3    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 162
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;-><init>(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;)V

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "futs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 193
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 194
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public varargs addAll([Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .param p1    # [Lorg/apache/ignite/internal/IgniteInternalFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "futs":[Lorg/apache/ignite/internal/IgniteInternalFuture;, "[Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->addAll(Ljava/lang/Iterable;)V

    .line 183
    return-void
.end method

.method public cancel()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 102
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z

    goto :goto_0

    .line 104
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_0
    const/4 v2, 0x1

    .line 107
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public futures()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    return-object v0
.end method

.method public hasPending()Z
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs ignoreChildFailures([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "ignoreChildFailures":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->ignoreChildFailures:[Ljava/lang/Class;

    .line 133
    return-void
.end method

.method public initialized()Z
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public markInitialized()V
    .locals 3

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->checkComplete()V

    .line 222
    :cond_0
    return-void
.end method

.method public pending()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->pending:Ljava/util/Collection;

    return-object v0
.end method

.method public reducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    return-object v0
.end method

.method public reducer(Lorg/apache/ignite/lang/IgniteReducer;)V
    .locals 0
    .param p1    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    .local p1, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TR;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    const-string v2, "done"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "cancelled"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->isCancelled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "err"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->error()Ljava/lang/Throwable;

    move-result-object v7

    const-string v8, "futs"

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->futs:Lorg/jsr166/ConcurrentLinkedDeque8;

    new-instance v9, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;

    invoke-direct {v9, p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;-><init>(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)V

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
