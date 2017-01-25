.class public Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
.super Ljava/lang/Object;
.source "CacheInvokeResult.java"

# interfaces
.implements Ljavax/cache/processor/EntryProcessorResult;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/lang/Exception;

.field private res:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    .local p1, "res":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->res:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/cache/processor/EntryProcessorException;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    check-cast v0, Ljavax/cache/processor/EntryProcessorException;

    throw v0

    .line 67
    :cond_0
    new-instance v0, Ljavax/cache/processor/EntryProcessorException;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljavax/cache/processor/EntryProcessorException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->res:Ljava/lang/Object;

    .line 85
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->res:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;->err:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
