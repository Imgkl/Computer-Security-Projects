.class final Lorg/apache/ignite/internal/util/lang/GridFunc$39;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->breaker(Z)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Z

.field final synthetic val$firstVal:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .prologue
    .line 454
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;->val$firstVal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;->b:Z

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "e":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 458
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;->b:Z

    if-eqz v1, :cond_1

    .line 459
    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;->b:Z

    .line 461
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;->val$firstVal:Z

    .line 464
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;->val$firstVal:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    const-string v0, "Breaker predicate."

    return-object v0
.end method
