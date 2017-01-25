.class Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;
.super Ljava/lang/Object;
.source "GridCompoundFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->toString()Ljava/lang/String;
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
        "<TT;>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)V
    .locals 0

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture.1;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
