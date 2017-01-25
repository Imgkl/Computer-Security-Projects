.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;
.super Ljava/lang/Object;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeName"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final space:Ljava/lang/String;

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1840
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "space"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "typeName"    # Ljava/lang/String;

    .prologue
    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1852
    sget-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1854
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    .line 1855
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->typeName:Ljava/lang/String;

    .line 1856
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1840
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1860
    if-ne p0, p1, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return v1

    .line 1863
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1864
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1866
    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    .line 1868
    .local v0, "other":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->typeName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->space:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;->typeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1879
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeName;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
