.class Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;
.super Ljava/lang/Object;
.source "GridConcurrentPhantomHashSet.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<TE;",
        "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;)V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;->this$0:Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet.1;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;->apply(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet.1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;->this$0:Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;->access$000(Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;)V

    return-object v0
.end method
