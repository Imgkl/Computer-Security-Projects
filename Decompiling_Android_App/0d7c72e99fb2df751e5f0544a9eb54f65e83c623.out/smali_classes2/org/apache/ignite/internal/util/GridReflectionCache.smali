.class public Lorg/apache/ignite/internal/util/GridReflectionCache;
.super Ljava/lang/Object;
.source "GridReflectionCache.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CACHE_SIZE:I

.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final METHOD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private fields:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private fp:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mtds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/GridReflectionCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/util/GridReflectionCache$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridReflectionCache$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridReflectionCache;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 46
    new-instance v0, Lorg/apache/ignite/internal/util/GridReflectionCache$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridReflectionCache$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridReflectionCache;->METHOD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 53
    const-string v0, "IGNITE_REFLECTION_CACHE_SIZE"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    sget v1, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    sget v2, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fields:Ljava/util/concurrent/ConcurrentMap;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    sget v1, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    sget v2, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mtds:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 3
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "fp":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Ljava/lang/reflect/Field;>;"
    .local p2, "mp":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    sget v1, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    sget v2, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fields:Ljava/util/concurrent/ConcurrentMap;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    sget v1, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    sget v2, Lorg/apache/ignite/internal/util/GridReflectionCache;->CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mtds:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fp:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 83
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mp:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 84
    return-void
.end method


# virtual methods
.method public fields(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v7, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 171
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fields:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 173
    .local v3, "fieldsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-nez v3, :cond_6

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .restart local v3    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v1, p1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_5

    const-class v7, Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v5, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v0, v4

    .line 180
    .local v2, "f":Ljava/lang/reflect/Field;
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fp:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fp:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v7, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 183
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 188
    sget-object v7, Lorg/apache/ignite/internal/util/GridReflectionCache;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 194
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v6    # "len$":I
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fields:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    return-object v3
.end method

.method public firstField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridReflectionCache;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public firstFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 94
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/GridReflectionCache;->firstField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 98
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 100
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to access field for object [field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public firstMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 155
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridReflectionCache;->methods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public firstMethodValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 118
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/GridReflectionCache;->firstMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 124
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 131
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke method for object [mtd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 131
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public methods(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v7, Lorg/apache/ignite/internal/util/GridReflectionCache;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 210
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mtds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 212
    .local v6, "mtdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-nez v6, :cond_6

    .line 213
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "mtdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .restart local v6    # "mtdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v1, p1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_5

    const-class v7, Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 219
    .local v5, "m":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mp:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mp:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v7, v5}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 220
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 222
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 227
    sget-object v7, Lorg/apache/ignite/internal/util/GridReflectionCache;->METHOD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 233
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v4    # "len$":I
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mtds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, p1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    return-object v6
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fp:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 248
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mp:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 249
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->fp:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridReflectionCache;->mp:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
