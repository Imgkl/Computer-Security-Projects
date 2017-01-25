.class public Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
.source "GridCompoundIdentityFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridCompoundFuture",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture<TT;>;"
    .local p2, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TT;>;"
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>(Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
