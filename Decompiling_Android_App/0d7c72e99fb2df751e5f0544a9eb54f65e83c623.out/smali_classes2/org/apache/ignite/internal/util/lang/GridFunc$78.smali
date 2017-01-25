.class final Lorg/apache/ignite/internal/util/lang/GridFunc$78;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as0(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TE1;TE2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 0

    .prologue
    .line 2682
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$78;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2682
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$78;->apply(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/lang/IgniteBiTuple;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TE1;TE2;>;)Z"
        }
    .end annotation

    .prologue
    .line 2684
    .local p1, "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TE1;TE2;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$78;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
