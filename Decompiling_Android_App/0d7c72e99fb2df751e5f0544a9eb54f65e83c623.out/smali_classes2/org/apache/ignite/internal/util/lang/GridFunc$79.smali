.class final Lorg/apache/ignite/internal/util/lang/GridFunc$79;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteOutClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteOutClosure",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Object;

.field final synthetic val$f:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2699
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$79;->val$f:Lorg/apache/ignite/lang/IgniteClosure;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$79;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 2701
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$79;->val$f:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$79;->val$e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
