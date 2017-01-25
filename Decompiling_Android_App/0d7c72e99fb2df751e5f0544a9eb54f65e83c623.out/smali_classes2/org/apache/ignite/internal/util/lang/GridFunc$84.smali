.class final Lorg/apache/ignite/internal/util/lang/GridFunc$84;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->yield(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<TT;",
        "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/ignite/lang/IgniteInClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 0

    .prologue
    .line 2790
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$84;->val$f:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2790
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$84;->apply(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;"
        }
    .end annotation

    .prologue
    .line 2792
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$84;->val$f:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v0

    return-object v0
.end method
