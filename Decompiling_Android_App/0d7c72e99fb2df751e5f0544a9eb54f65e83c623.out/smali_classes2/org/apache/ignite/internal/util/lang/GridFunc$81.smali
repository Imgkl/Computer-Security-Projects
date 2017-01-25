.class final Lorg/apache/ignite/internal/util/lang/GridFunc$81;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Object;

.field final synthetic val$f:Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2733
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$81;->val$f:Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$81;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    .prologue
    .line 2735
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$81;->val$f:Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$81;->val$e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
