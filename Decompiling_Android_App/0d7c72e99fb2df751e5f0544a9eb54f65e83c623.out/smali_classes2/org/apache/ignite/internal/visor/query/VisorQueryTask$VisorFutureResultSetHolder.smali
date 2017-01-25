.class public Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;
.super Ljava/lang/Object;
.source "VisorQueryTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/query/VisorQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisorFutureResultSetHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private accessed:Ljava/lang/Boolean;

.field private final fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .param p3, "accessed"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;TR;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<TR;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<TR;>;"
    .local p2, "next":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    .line 138
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->next:Ljava/lang/Object;

    .line 139
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->accessed:Ljava/lang/Boolean;

    .line 140
    return-void
.end method


# virtual methods
.method public accessed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->accessed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public accessed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "accessed"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<TR;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->accessed:Ljava/lang/Boolean;

    .line 168
    return-void
.end method

.method public future()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->next:Ljava/lang/Object;

    return-object v0
.end method
