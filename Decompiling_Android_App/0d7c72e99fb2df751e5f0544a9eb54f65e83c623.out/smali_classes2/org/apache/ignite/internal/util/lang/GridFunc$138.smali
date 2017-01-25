.class final Lorg/apache/ignite/internal/util/lang/GridFunc$138;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
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
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<-TT;TR;>;",
        "Lorg/apache/ignite/lang/IgniteOutClosure",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$arg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7540
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$138;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7540
    check-cast p1, Lorg/apache/ignite/lang/IgniteClosure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$138;->apply(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7542
    .local p1, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$138;->val$arg:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v0

    return-object v0
.end method
