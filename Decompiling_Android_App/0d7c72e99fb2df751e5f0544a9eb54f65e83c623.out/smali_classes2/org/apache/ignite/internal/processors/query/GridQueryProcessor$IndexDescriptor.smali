.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;
.super Ljava/lang/Object;
.source "GridQueryProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexDescriptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private descendings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final type:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1699
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    .prologue
    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1701
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor$1;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->fields:Ljava/util/Collection;

    .line 1721
    sget-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1723
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->type:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    .line 1724
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1699
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)V

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "orderNum"    # I
    .param p3, "descending"    # Z

    .prologue
    .line 1749
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->fields:Ljava/util/Collection;

    new-instance v1, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1751
    if-eqz p3, :cond_1

    .line 1752
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->descendings:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1753
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->descendings:Ljava/util/Collection;

    .line 1755
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->descendings:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1757
    :cond_1
    return-void
.end method

.method public descending(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 1738
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->descendings:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->descendings:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fields()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1728
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->fields:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1730
    .local v1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->fields:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 1731
    .local v2, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1733
    .end local v2    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1766
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->type:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    return-object v0
.end method
