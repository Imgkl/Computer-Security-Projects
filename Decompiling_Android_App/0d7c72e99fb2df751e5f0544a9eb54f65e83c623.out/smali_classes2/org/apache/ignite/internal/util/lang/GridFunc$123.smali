.class final Lorg/apache/ignite/internal/util/lang/GridFunc$123;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;)Lorg/apache/ignite/lang/IgniteOutClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CO",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;)V
    .locals 0

    .prologue
    .line 5247
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$123;->val$p:Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5249
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$123;->val$p:Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;->apply()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5247
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$123;->apply()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
