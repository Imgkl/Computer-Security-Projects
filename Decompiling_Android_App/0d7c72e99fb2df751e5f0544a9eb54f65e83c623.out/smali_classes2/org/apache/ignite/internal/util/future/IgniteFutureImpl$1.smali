.class Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;
.super Ljava/lang/Object;
.source "IgniteFutureImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgniteFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TV;>;TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

.field final synthetic val$doneCb:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->val$doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;)TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl.1;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    if-eq v1, p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->val$doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;->this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-interface {v1, v2}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
