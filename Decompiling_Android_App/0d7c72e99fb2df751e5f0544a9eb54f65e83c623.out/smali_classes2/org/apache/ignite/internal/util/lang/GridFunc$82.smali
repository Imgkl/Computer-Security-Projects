.class final Lorg/apache/ignite/internal/util/lang/GridFunc$82;
.super Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Object;

.field final synthetic val$f:Lorg/apache/ignite/lang/IgniteInClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2749
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$82;->val$f:Lorg/apache/ignite/lang/IgniteInClosure;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$82;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridAbsClosure;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 2751
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$82;->val$f:Lorg/apache/ignite/lang/IgniteInClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$82;->val$e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 2752
    return-void
.end method
