.class Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;
.super Ljava/lang/Object;
.source "GridCacheLogger.java"

# interfaces
.implements Lorg/apache/ignite/IgniteLogger;
.implements Ljava/io/Externalizable;


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J

.field private static stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private cacheName:Ljava/lang/String;

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation
.end field

.field private ctgr:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->$assertionsDisabled:Z

    .line 38
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V
    .locals 2
    .param p2, "ctgr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 66
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->ctgr:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->cacheName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    .line 71
    return-void
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public fileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->fileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
    .locals 3
    .param p1, "ctgr"    # Ljava/lang/Object;

    .prologue
    .line 95
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isQuiet()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isQuiet()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 163
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 164
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 177
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/String;)Lorg/apache/ignite/IgniteLogger;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 179
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;>;"
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/InvalidObjectException;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->ctgr:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 157
    return-void
.end method
