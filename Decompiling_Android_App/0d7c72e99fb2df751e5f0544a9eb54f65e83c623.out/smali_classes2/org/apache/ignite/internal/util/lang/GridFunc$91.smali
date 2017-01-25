.class final Lorg/apache/ignite/internal/util/lang/GridFunc$91;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->c2c()Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/util/concurrent/Callable",
        "<TT;>;",
        "Lorg/apache/ignite/lang/IgniteOutClosure",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3164
    check-cast p1, Ljava/util/concurrent/Callable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$91;->apply(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3166
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->as0(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v0

    return-object v0
.end method
