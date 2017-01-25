.class final Lorg/apache/ignite/internal/util/lang/GridFunc$68;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$iters:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1949
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 1949
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->val$iters:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1950
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->val$iters:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->it:Ljava/util/Iterator;

    .line 1957
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->advance()V

    .line 1958
    return-void
.end method

.method private advance()V
    .locals 1

    .prologue
    .line 1962
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->next:Ljava/lang/Object;

    .line 1965
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->next:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1970
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->val$iters:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1971
    :cond_1
    return-void

    .line 1973
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->val$iters:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->it:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1982
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->next:Ljava/lang/Object;

    .line 1984
    .local v0, "res":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 1985
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1987
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->next:Ljava/lang/Object;

    .line 1989
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->it:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->last:Ljava/util/Iterator;

    .line 1991
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->advance()V

    .line 1993
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->last:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 1998
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2000
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;->last:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2001
    return-void
.end method
