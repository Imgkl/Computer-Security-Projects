.class public Lorg/apache/ignite/internal/GridLoggerProxy;
.super Ljava/lang/Object;
.source "GridLoggerProxy.java"

# interfaces
.implements Lorg/apache/ignite/IgniteLogger;
.implements Lorg/apache/ignite/lifecycle/LifecycleAware;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logGridName:Z

.field private static final serialVersionUID:J

.field private static stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private ctgr:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private gridName:Ljava/lang/String;

.field private id8:Ljava/lang/String;

.field private impl:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    const-class v0, Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridLoggerProxy;->$assertionsDisabled:Z

    .line 41
    new-instance v0, Lorg/apache/ignite/internal/GridLoggerProxy$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/GridLoggerProxy$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/GridLoggerProxy;->stash:Ljava/lang/ThreadLocal;

    .line 61
    const-string v0, "IGNITE_LOG_GRID_NAME"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lorg/apache/ignite/internal/GridLoggerProxy;->logGridName:Z

    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    :cond_1
    move v1, v2

    .line 61
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "impl"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "ctgr"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "id8"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-boolean v0, Lorg/apache/ignite/internal/GridLoggerProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    .line 82
    iput-object p2, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->ctgr:Ljava/lang/Object;

    .line 83
    iput-object p3, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->gridName:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->id8:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private enrich(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "m"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    sget-boolean v0, Lorg/apache/ignite/internal/GridLoggerProxy;->logGridName:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->gridName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->id8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "m":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public fileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->fileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
    .locals 4
    .param p1, "ctgr"    # Ljava/lang/Object;

    .prologue
    .line 100
    sget-boolean v0, Lorg/apache/ignite/internal/GridLoggerProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/GridLoggerProxy;

    iget-object v1, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1, p1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->gridName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->id8:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;-><init>(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isQuiet()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isQuiet()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

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
    .line 185
    sget-object v1, Lorg/apache/ignite/internal/GridLoggerProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 187
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/GridLoggerProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 201
    .local v3, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, "gridNameR":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "ctgrR":Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/IgniteKernal;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 210
    sget-object v5, Lorg/apache/ignite/internal/GridLoggerProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    return-object v4

    .line 206
    .end local v0    # "ctgrR":Ljava/lang/Object;
    .end local v2    # "gridNameR":Ljava/lang/String;
    .end local v3    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v4, Ljava/io/InvalidObjectException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/InvalidObjectException;

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/apache/ignite/internal/GridLoggerProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    throw v4
.end method

.method public start()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    instance-of v0, v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v0}, Lorg/apache/ignite/lifecycle/LifecycleAware;->start()V

    .line 91
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->stopLifecycleAware(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Iterable;)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-class v0, Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->impl:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->enrich(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
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
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->gridName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/GridLoggerProxy;->ctgr:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 180
    return-void
.end method
