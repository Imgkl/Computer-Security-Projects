.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
.super Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortableProperty"
.end annotation


# instance fields
.field private volatile isKeyProp:I

.field private parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

.field private propName:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;Ljava/lang/Class;)V
    .locals 1
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "parent"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1434
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 1435
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    .line 1436
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    .line 1437
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->type:Ljava/lang/Class;

    .line 1438
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;
    .param p4, "x3"    # Ljava/lang/Class;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1414
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1483
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public value(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1444
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    if-eqz v3, :cond_1

    .line 1445
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->value(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1447
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1473
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1450
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$1100(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->isPortableObject(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1451
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-portable object received as a result of property extraction [parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", propName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1455
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->isKeyProp:I

    .line 1457
    .local v0, "isKeyProp0":I
    if-nez v0, :cond_2

    .line 1458
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$1200(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->isPortableObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$1300(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->hasField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1459
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->isKeyProp:I

    .line 1470
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    move-object v1, p1

    .line 1473
    .end local v0    # "isKeyProp0":I
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$1600(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 1460
    .end local v1    # "obj":Ljava/lang/Object;
    .restart local v0    # "isKeyProp0":I
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$1400(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    invoke-interface {v3, p2, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->hasField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1461
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->isKeyProp:I

    goto :goto_1

    .line 1463
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$1500(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Neither key nor value have property [propName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$PortableProperty;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", val="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move-object v1, p2

    .line 1470
    goto :goto_2
.end method
