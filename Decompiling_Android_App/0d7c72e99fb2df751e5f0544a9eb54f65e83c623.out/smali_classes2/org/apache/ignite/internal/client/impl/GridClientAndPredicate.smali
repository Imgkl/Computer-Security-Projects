.class Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;
.super Ljava/lang/Object;
.source "GridClientAndPredicate.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/GridClientPredicate",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private first:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private second:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/GridClientPredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-TT;>;",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;, "Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate<TT;>;"
    .local p1, "first":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    .local p2, "second":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->first:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->second:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 46
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;, "Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->first:Lorg/apache/ignite/internal/client/GridClientPredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/client/GridClientPredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;->second:Lorg/apache/ignite/internal/client/GridClientPredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/client/GridClientPredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
