.class final Lorg/apache/ignite/internal/util/lang/GridFunc$80;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteBiClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<TT2;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Object;

.field final synthetic val$f:Lorg/apache/ignite/lang/IgniteBiClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteBiClosure;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2717
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$80;->val$f:Lorg/apache/ignite/lang/IgniteBiClosure;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$80;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)TR;"
        }
    .end annotation

    .prologue
    .line 2719
    .local p1, "t":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$80;->val$f:Lorg/apache/ignite/lang/IgniteBiClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$80;->val$e:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
