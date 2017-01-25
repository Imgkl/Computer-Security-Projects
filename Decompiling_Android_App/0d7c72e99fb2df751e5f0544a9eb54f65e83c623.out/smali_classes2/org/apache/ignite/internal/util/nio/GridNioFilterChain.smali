.class public Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridNioFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$1;,
        Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;"
    }
.end annotation


# instance fields
.field private head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile str:Ljava/lang/String;

.field private tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;


# direct methods
.method public varargs constructor <init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioFilter;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V
    .locals 6
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p3, "head"    # Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .param p4, "filters"    # [Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<TT;>;",
            "Lorg/apache/ignite/internal/util/nio/GridNioFilter;",
            "[",
            "Lorg/apache/ignite/internal/util/nio/GridNioFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    .local p2, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<TT;>;"
    const-string v5, "FilterChain"

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->log:Lorg/apache/ignite/IgniteLogger;

    .line 56
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    .line 57
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .line 61
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$1;)V

    .local v4, "prev":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    iput-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .line 63
    move-object v0, p4

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 64
    .local v1, "filter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    invoke-interface {v4, v1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->nextFilter(Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    .line 66
    invoke-interface {v1, v4}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->previousFilter(Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    .line 68
    move-object v4, v1

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "filter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :cond_0
    invoke-interface {v4, p3}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->nextFilter(Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    .line 73
    invoke-interface {p3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->previousFilter(Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    return-object v0
.end method


# virtual methods
.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forward GridNioException to filter chain [ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 147
    return-void
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 201
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 137
    return-void
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 206
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->nextFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-result-object v0

    .line 108
    .local v0, "ref":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    if-eq v0, v1, :cond_0

    .line 109
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->start()V

    .line 111
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->nextFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->previousFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-result-object v0

    .line 122
    .local v0, "ref":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    if-eq v0, v1, :cond_0

    .line 123
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->stop()V

    .line 125
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->previousFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->str:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FilterChain[filters=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "res":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->tail:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->nextFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-result-object v0

    .line 83
    .local v0, "ref":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    if-eq v0, v2, :cond_1

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->nextFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->head:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    if-eq v0, v2, :cond_0

    .line 89
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->str:Ljava/lang/String;

    .line 98
    .end local v0    # "ref":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v1    # "res":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->str:Ljava/lang/String;

    return-object v2
.end method
