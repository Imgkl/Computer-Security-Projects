.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;
.super Ljava/lang/Object;
.source "GridQueryProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeDescriptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private fullTextIdx:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

.field private final indexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private registered:Z

.field private valCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private valTextIdx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1490
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fields:Ljava/util/Map;

    .line 1502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->props:Ljava/util/Map;

    .line 1506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->indexes:Ljava/util/Map;

    .line 1528
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 1529
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .prologue
    .line 1490
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyCls:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .prologue
    .line 1490
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valCls:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    .prologue
    .line 1490
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->props:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addFieldToIndex(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "idxName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "orderNum"    # I
    .param p4, "descending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->indexes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 1611
    .local v0, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;
    if-nez v0, :cond_0

    .line 1612
    sget-object v1, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    move-result-object v0

    .line 1614
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->addField(Ljava/lang/String;IZ)V

    .line 1615
    return-void
.end method

.method public addFieldToTextIndex(Ljava/lang/String;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1623
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fullTextIdx:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    if-nez v0, :cond_0

    .line 1624
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    sget-object v1, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->FULLTEXT:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fullTextIdx:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    .line 1626
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->indexes:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fullTextIdx:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fullTextIdx:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    invoke-virtual {v0, p1, v2, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;->addField(Ljava/lang/String;IZ)V

    .line 1630
    return-void
.end method

.method public addIndex(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;)Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;
    .locals 4
    .param p1, "idxName"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1590
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 1592
    .local v0, "idx":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$IndexDescriptor;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->indexes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1593
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1595
    :cond_0
    return-object v0
.end method

.method public addProperty(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;Z)V
    .locals 4
    .param p1, "prop"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;
    .param p2, "failOnDuplicate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1668
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;->name()Ljava/lang/String;

    move-result-object v0

    .line 1670
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->props:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1671
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1673
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    return-void
.end method

.method public fields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public indexes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->indexes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public keyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1648
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyCls:Ljava/lang/Class;

    return-object v0
.end method

.method keyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1657
    .local p1, "keyCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->keyCls:Ljava/lang/Class;

    .line 1658
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method name(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1556
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name:Ljava/lang/String;

    .line 1557
    return-void
.end method

.method registered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .prologue
    .line 1542
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered:Z

    .line 1543
    return-void
.end method

.method registered()Z
    .locals 1

    .prologue
    .line 1535
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->registered:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1692
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1566
    sget-boolean v1, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1568
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->props:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;

    .line 1570
    .local v0, "prop":Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;
    if-nez v0, :cond_1

    .line 1571
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1573
    :cond_1
    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;->value(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public valueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1634
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valCls:Ljava/lang/Class;

    return-object v0
.end method

.method valueClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1643
    .local p1, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valCls:Ljava/lang/Class;

    .line 1644
    return-void
.end method

.method public valueTextIndex(Z)V
    .locals 0
    .param p1, "valTextIdx"    # Z

    .prologue
    .line 1687
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valTextIdx:Z

    .line 1688
    return-void
.end method

.method public valueTextIndex()Z
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->valTextIdx:Z

    return v0
.end method
