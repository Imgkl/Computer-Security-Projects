.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;
.super Ljava/lang/Object;
.source "GridCacheAnnotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_CLASS_CACHE_SIZE:I = 0x3e8


# instance fields
.field private final annCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final fieldCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mtdCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mux:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    .local p1, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;-><init>(Ljava/lang/Class;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    .local p1, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->mux:Ljava/lang/Object;

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Annotated class mustn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 67
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Capacity must be more then zero."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->fieldCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    .line 73
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->mtdCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    .line 74
    return-void
.end method

.method private annotatedValue(Ljava/lang/Object;Ljava/util/Set;Z)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 12
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "annFound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    .local p2, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    const/16 v11, 0x5d

    .line 102
    sget-boolean v8, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 105
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    .line 170
    :goto_0
    return-object v8

    .line 108
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v7, 0x0

    .line 112
    .local v7, "val":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .end local v7    # "val":Ljava/lang/Object;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 114
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->fieldsWithAnnotation(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 115
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 127
    .local v3, "fieldVal":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->needsRecursion(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 128
    if-eqz v3, :cond_2

    .line 130
    invoke-direct {p0, v3, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annotatedValue(Ljava/lang/Object;Ljava/util/Set;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v6

    .line 132
    .local v6, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    if-nez p3, :cond_3

    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 134
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v7

    .line 136
    :cond_3
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 137
    goto :goto_2

    .line 122
    .end local v3    # "fieldVal":Ljava/lang/Object;
    .end local v6    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get annotated field value [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 140
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "fieldVal":Ljava/lang/Object;
    :cond_4
    if-eqz p3, :cond_5

    .line 141
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple annotations has been found [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    :cond_5
    move-object v7, v3

    .line 146
    .restart local v7    # "val":Ljava/lang/Object;
    const/4 p3, 0x1

    goto/16 :goto_2

    .line 151
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "fieldVal":Ljava/lang/Object;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_6
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->methodsWithAnnotation(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 152
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz p3, :cond_7

    .line 153
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple annotations has been found [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 156
    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 159
    const/4 v8, 0x0

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 166
    .restart local v7    # "val":Ljava/lang/Object;
    const/4 p3, 0x1

    .line 167
    goto :goto_3

    .line 161
    .end local v7    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get annotated method value [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_1

    .line 170
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private fieldsWithAnnotation(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 194
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->fieldCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-virtual {v6, p1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 195
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-nez v3, :cond_3

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .restart local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v1, v4

    .line 199
    .local v2, "field":Ljava/lang/reflect/Field;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 201
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->needsRecursion(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 206
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->fieldCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-virtual {v6, p1, v3}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    monitor-exit v7

    return-object v3

    .line 210
    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private methodsWithAnnotation(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 221
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->mtdCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-virtual {v6, p1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 223
    .local v5, "mtds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-nez v5, :cond_2

    .line 224
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "mtds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .restart local v5    # "mtds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 227
    .local v4, "mtd":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annCls:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 229
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v4    # "mtd":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 234
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->mtdCache:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-virtual {v6, p1, v5}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    monitor-exit v7

    return-object v5

    .line 238
    .end local v5    # "mtds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private needsRecursion(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "val$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/concurrent/Callable;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public annotatedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper<TA;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->annotatedValue(Ljava/lang/Object;Ljava/util/Set;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 86
    .local v0, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAnnotationHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
