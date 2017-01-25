.class Lorg/apache/ignite/internal/processors/port/GridPortProcessor$1;
.super Ljava/lang/Object;
.source "GridPortProcessor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/port/GridPortProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/internal/processors/port/GridPortRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/port/GridPortProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/port/GridPortProcessor;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor$1;->compare(Lorg/apache/ignite/internal/processors/port/GridPortRecord;Lorg/apache/ignite/internal/processors/port/GridPortRecord;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/internal/processors/port/GridPortRecord;Lorg/apache/ignite/internal/processors/port/GridPortRecord;)I
    .locals 3
    .param p1, "o1"    # Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    .param p2, "o2"    # Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port()I

    move-result v0

    .line 47
    .local v0, "p1":I
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port()I

    move-result v1

    .line 49
    .local v1, "p2":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
