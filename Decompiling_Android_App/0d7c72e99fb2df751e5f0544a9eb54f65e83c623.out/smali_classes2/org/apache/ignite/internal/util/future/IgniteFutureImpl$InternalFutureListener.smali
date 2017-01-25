.class Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;
.super Ljava/lang/Object;
.source "IgniteFutureImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalFutureListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final lsnr:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    .local p2, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/lang/IgniteFuture<TV;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteInClosure;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$1;

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;-><init>(Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;Lorg/apache/ignite/lang/IgniteInClosure;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->this$0:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 172
    check-cast v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;

    .line 174
    .local v0, "lsnr0":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    iget-object v2, v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;, "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl<TV;>.InternalFutureListener;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl$InternalFutureListener;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
