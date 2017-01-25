.class public Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridEmbeddedFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener2;,
        Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;,
        Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;,
        Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<TA;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private embedded:Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TB;",
            "Ljava/lang/Exception;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TA;>;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>;"
    .local p1, "embedded":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    .local p2, "c":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TB;Ljava/lang/Exception;Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 78
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->embedded:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 83
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TB;",
            "Ljava/lang/Exception;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TA;>;>;",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TA;",
            "Ljava/lang/Exception;",
            "TA;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>;"
    .local p1, "embedded":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    .local p2, "c1":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TB;Ljava/lang/Exception;Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;>;"
    .local p3, "c2":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TA;Ljava/lang/Exception;TA;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 144
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->embedded:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 150
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    invoke-direct {v0, p0, p2, p3}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TB;",
            "Ljava/lang/Exception;",
            "TA;>;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>;"
    .local p1, "c":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TB;Ljava/lang/Exception;TA;>;"
    .local p2, "embedded":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 46
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->embedded:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    invoke-interface {p2, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 67
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->embedded:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->embedded:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
