.class public Lorg/apache/ignite/internal/util/future/GridFinishedFuture;
.super Ljava/lang/Object;
.source "GridFinishedFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteInternalFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ERR:B = 0x1t

.field private static final RES:B = 0x2t


# instance fields
.field private final res:Ljava/lang/Object;

.field private final resFlag:B

.field private final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->startTime:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->resFlag:B

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->startTime:J

    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->resFlag:B

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->startTime:J

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->resFlag:B

    .line 71
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;TR;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    .local p1, "doneCb":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;TR;>;"
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-interface {p1, p0}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->resFlag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->resFlag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public result()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->resFlag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->res:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->startTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFinishedFuture;, "Lorg/apache/ignite/internal/util/future/GridFinishedFuture<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
