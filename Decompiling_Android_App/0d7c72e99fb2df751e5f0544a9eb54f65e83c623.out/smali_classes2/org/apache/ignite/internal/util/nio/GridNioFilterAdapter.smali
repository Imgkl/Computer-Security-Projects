.class public abstract Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.super Ljava/lang/Object;
.source "GridNioFilterAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private name:Ljava/lang/String;

.field protected nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

.field protected prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private checkNext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/nio/GridNioException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to proceed with filter call since previous filter is not set (do you use filter outside the filter chain?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void
.end method

.method private checkPrevious()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/nio/GridNioException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to proceed with filter call since previous filter is not set (do you use filter outside the filter chain?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public nextFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    return-object v0
.end method

.method public nextFilter(Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .line 75
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
    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->proceedPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

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
    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->proceedResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public previousFilter()Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    return-object v0
.end method

.method public previousFilter(Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    .line 80
    return-void
.end method

.method public proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "e"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkPrevious()V

    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 101
    return-void
.end method

.method public proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkPrevious()V

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public proceedPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
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
    .line 140
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkNext()V

    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public proceedResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
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
    .line 147
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkNext()V

    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public proceedSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
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
    .line 119
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkNext()V

    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkPrevious()V

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 94
    return-void
.end method

.method public proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkPrevious()V

    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 129
    return-void
.end method

.method public proceedSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkPrevious()V

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 87
    return-void
.end method

.method public proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
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
    .line 112
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkNext()V

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->nextFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->checkPrevious()V

    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->prevFilter:Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilter;->onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 136
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;->name:Ljava/lang/String;

    return-object v0
.end method
