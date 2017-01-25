.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
.super Ljava/lang/Object;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeId"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final space:Ljava/lang/String;

.field private final valType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final valTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1773
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "valTypeId"    # I

    .prologue
    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1805
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    .line 1806
    iput p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valTypeId:I

    .line 1808
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    .line 1809
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1773
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "space"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1789
    .local p2, "valType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1790
    sget-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1792
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    .line 1793
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valTypeId:I

    .line 1796
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1773
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    .prologue
    .line 1773
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1813
    if-ne p0, p1, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v1

    .line 1816
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1817
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1819
    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    .line 1821
    .local v0, "typeId":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;
    iget v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valTypeId:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valTypeId:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1828
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->space:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;->valTypeId:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1833
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeId;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
