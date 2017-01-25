.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;
.super Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassProperty"
.end annotation


# instance fields
.field private field:Z

.field private key:Z

.field private final member:Ljava/lang/reflect/Member;

.field private name:Ljava/lang/String;

.field private parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Member;Z)V
    .locals 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "key"    # Z

    .prologue
    const/4 v2, 0x3

    .line 1334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;-><init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V

    .line 1335
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    .line 1336
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->key:Z

    .line 1338
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name:Ljava/lang/String;

    move-object v0, p1

    .line 1341
    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1343
    instance-of v0, p1, Ljava/lang/reflect/Field;

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->field:Z

    .line 1344
    return-void

    .line 1338
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public knowsClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1407
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->knowsClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1377
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->name:Ljava/lang/String;

    .line 1378
    return-void
.end method

.method public parent(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    .prologue
    .line 1394
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    .line 1395
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 1387
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public value(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1348
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->key:Z

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 1350
    .local v3, "x":Ljava/lang/Object;
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    if-eqz v4, :cond_0

    .line 1351
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->parent:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;

    invoke-virtual {v4, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->value(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1353
    :cond_0
    if-nez v3, :cond_2

    .line 1354
    const/4 v4, 0x0

    .line 1365
    :goto_1
    return-object v4

    .end local v3    # "x":Ljava/lang/Object;
    :cond_1
    move-object v3, p2

    .line 1348
    goto :goto_0

    .line 1357
    .restart local v3    # "x":Ljava/lang/Object;
    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->field:Z

    if-eqz v4, :cond_3

    .line 1358
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1360
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 1363
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClassProperty;->member:Ljava/lang/reflect/Member;

    check-cast v2, Ljava/lang/reflect/Method;

    .line 1365
    .local v2, "mtd":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1368
    .end local v2    # "mtd":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
