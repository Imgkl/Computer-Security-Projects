.class public abstract Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;
.super Ljava/lang/Object;
.source "GridNioServerListenerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioServerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter<TT;>;"
    return-void
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 27
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter<TT;>;"
    return-void
.end method
