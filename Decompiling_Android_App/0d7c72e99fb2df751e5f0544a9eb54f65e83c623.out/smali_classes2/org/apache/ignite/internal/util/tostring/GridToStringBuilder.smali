.class public Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;
.super Ljava/lang/Object;
.source "GridToStringBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_COL_SIZE:I = 0x64

.field private static final classCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static threadCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->classCache:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 76
    new-instance v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassDescriptor(Ljava/lang/Class;)Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 506
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 510
    .local v2, "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    sget-object v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 513
    :try_start_0
    sget-object v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->classCache:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    check-cast v2, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .restart local v2    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    sget-object v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 519
    if-nez v2, :cond_7

    .line 520
    new-instance v2, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;

    .end local v2    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;-><init>(Ljava/lang/Class;)V

    .line 522
    .restart local v2    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_6

    aget-object v3, v1, v5

    .line 523
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 525
    .local v0, "add":Z
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 527
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    const-class v9, Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 529
    :cond_1
    const/4 v0, 0x1

    .line 559
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 560
    new-instance v4, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;-><init>(Ljava/lang/String;)V

    .line 563
    .local v4, "fd":Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;
    const-class v9, Lorg/apache/ignite/internal/util/tostring/GridToStringOrder;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 564
    const-class v9, Lorg/apache/ignite/internal/util/tostring/GridToStringOrder;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/util/tostring/GridToStringOrder;

    invoke-interface {v9}, Lorg/apache/ignite/internal/util/tostring/GridToStringOrder;->value()I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->setOrder(I)V

    .line 566
    :cond_3
    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->addField(Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;)V

    .line 522
    .end local v4    # "fd":Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 516
    .end local v0    # "add":Z
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v9

    sget-object v10, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 530
    .restart local v0    # "add":Z
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-class v9, Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 532
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/lang/Object;

    if-eq v9, v8, :cond_2

    const-class v9, Ljava/io/Serializable;

    if-eq v9, v8, :cond_2

    const-class v9, Ljava/io/Externalizable;

    if-eq v9, v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/util/EventListener;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/io/InputStream;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/io/OutputStream;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/lang/Thread;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/lang/Runnable;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 556
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 570
    .end local v0    # "add":Z
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->sortFields()V

    .line 576
    sget-object v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 579
    :try_start_1
    sget-object v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->classCache:Ljava/util/Map;

    invoke-interface {v9, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 582
    sget-object v9, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 586
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_7
    return-object v2

    .line 582
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :catchall_1
    move-exception v9

    sget-object v10, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 339
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 341
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 343
    .local v6, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_2
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    .line 351
    .local v7, "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalNames()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalValues()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 355
    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object v0

    .line 348
    .end local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :cond_3
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    move-object v7, v0

    goto :goto_0

    .line 355
    .restart local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :catchall_0
    move-exception v0

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    const-string v0, "super"

    invoke-static {p0, p1, v0, p2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 302
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 304
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_2
    sget-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 308
    .local v6, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 313
    :cond_3
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v7, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    .line 315
    .local v7, "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :goto_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalNames()[Ljava/lang/Object;

    move-result-object v3

    .line 316
    .local v3, "addNames":[Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalValues()[Ljava/lang/Object;

    move-result-object v4

    .line 318
    .local v4, "addVals":[Ljava/lang/Object;
    aput-object p2, v3, v1

    .line 319
    aput-object p3, v4, v1

    .line 322
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 325
    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object v0

    .line 313
    .end local v3    # "addNames":[Ljava/lang/Object;
    .end local v4    # "addVals":[Ljava/lang/Object;
    .end local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :cond_4
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    move-object v7, v0

    goto :goto_0

    .line 325
    .restart local v3    # "addNames":[Ljava/lang/Object;
    .restart local v4    # "addVals":[Ljava/lang/Object;
    .restart local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :catchall_0
    move-exception v0

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p2, "name0"    # Ljava/lang/String;
    .param p3, "val0"    # Ljava/lang/Object;
    .param p4, "name1"    # Ljava/lang/String;
    .param p5, "val1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 261
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 262
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_3
    sget-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 268
    .local v6, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :cond_4
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v7, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    .line 275
    .local v7, "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :goto_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalNames()[Ljava/lang/Object;

    move-result-object v3

    .line 276
    .local v3, "addNames":[Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalValues()[Ljava/lang/Object;

    move-result-object v4

    .line 278
    .local v4, "addVals":[Ljava/lang/Object;
    aput-object p2, v3, v1

    .line 279
    aput-object p3, v4, v1

    .line 280
    aput-object p4, v3, v2

    .line 281
    aput-object p5, v4, v2

    .line 284
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v1

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 287
    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object v0

    .line 273
    .end local v3    # "addNames":[Ljava/lang/Object;
    .end local v4    # "addVals":[Ljava/lang/Object;
    .end local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :cond_5
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    move-object v7, v0

    goto :goto_0

    .line 287
    .restart local v3    # "addNames":[Ljava/lang/Object;
    .restart local v4    # "addVals":[Ljava/lang/Object;
    .restart local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :catchall_0
    move-exception v0

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p2, "name0"    # Ljava/lang/String;
    .param p3, "val0"    # Ljava/lang/Object;
    .param p4, "name1"    # Ljava/lang/String;
    .param p5, "val1"    # Ljava/lang/Object;
    .param p6, "name2"    # Ljava/lang/String;
    .param p7, "val2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_4
    sget-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 223
    .local v6, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez v6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 228
    :cond_5
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v7, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    .line 230
    .local v7, "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :goto_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalNames()[Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "addNames":[Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalValues()[Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "addVals":[Ljava/lang/Object;
    aput-object p2, v3, v1

    .line 234
    aput-object p3, v4, v1

    .line 235
    aput-object p4, v3, v2

    .line 236
    aput-object p5, v4, v2

    .line 237
    aput-object p6, v3, v5

    .line 238
    aput-object p7, v4, v5

    .line 241
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 244
    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object v0

    .line 228
    .end local v3    # "addNames":[Ljava/lang/Object;
    .end local v4    # "addVals":[Ljava/lang/Object;
    .end local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :cond_6
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    move-object v7, v0

    goto :goto_0

    .line 244
    .restart local v3    # "addNames":[Ljava/lang/Object;
    .restart local v4    # "addVals":[Ljava/lang/Object;
    .restart local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :catchall_0
    move-exception v0

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p2, "name0"    # Ljava/lang/String;
    .param p3, "val0"    # Ljava/lang/Object;
    .param p4, "name1"    # Ljava/lang/String;
    .param p5, "val1"    # Ljava/lang/Object;
    .param p6, "name2"    # Ljava/lang/String;
    .param p7, "val2"    # Ljava/lang/Object;
    .param p8, "name3"    # Ljava/lang/String;
    .param p9, "val3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_4
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p8, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_5
    sget-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 172
    .local v6, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_6
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v7, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    .line 179
    .local v7, "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :goto_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalNames()[Ljava/lang/Object;

    move-result-object v3

    .line 180
    .local v3, "addNames":[Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalValues()[Ljava/lang/Object;

    move-result-object v4

    .line 182
    .local v4, "addVals":[Ljava/lang/Object;
    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 183
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 184
    const/4 v0, 0x1

    aput-object p4, v3, v0

    .line 185
    const/4 v0, 0x1

    aput-object p5, v4, v0

    .line 186
    const/4 v0, 0x2

    aput-object p6, v3, v0

    .line 187
    const/4 v0, 0x2

    aput-object p7, v4, v0

    .line 188
    const/4 v0, 0x3

    aput-object p8, v3, v0

    .line 189
    const/4 v0, 0x3

    aput-object p9, v4, v0

    .line 192
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v1

    const/4 v5, 0x4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 195
    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object v0

    .line 177
    .end local v3    # "addNames":[Ljava/lang/Object;
    .end local v4    # "addVals":[Ljava/lang/Object;
    .end local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :cond_7
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    move-object v7, v0

    goto :goto_0

    .line 195
    .restart local v3    # "addNames":[Ljava/lang/Object;
    .restart local v4    # "addVals":[Ljava/lang/Object;
    .restart local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :catchall_0
    move-exception v0

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

.method public static toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p2, "name0"    # Ljava/lang/String;
    .param p3, "val0"    # Ljava/lang/Object;
    .param p4, "name1"    # Ljava/lang/String;
    .param p5, "val1"    # Ljava/lang/Object;
    .param p6, "name2"    # Ljava/lang/String;
    .param p7, "val2"    # Ljava/lang/Object;
    .param p8, "name3"    # Ljava/lang/String;
    .param p9, "val3"    # Ljava/lang/Object;
    .param p10, "name4"    # Ljava/lang/String;
    .param p11, "val4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_4
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p8, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_5
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p10, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_6
    sget-object v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->threadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 116
    .local v6, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-nez v6, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_7
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v7, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    .line 123
    .local v7, "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :goto_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalNames()[Ljava/lang/Object;

    move-result-object v3

    .line 124
    .local v3, "addNames":[Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getAdditionalValues()[Ljava/lang/Object;

    move-result-object v4

    .line 126
    .local v4, "addVals":[Ljava/lang/Object;
    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 127
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 128
    const/4 v0, 0x1

    aput-object p4, v3, v0

    .line 129
    const/4 v0, 0x1

    aput-object p5, v4, v0

    .line 130
    const/4 v0, 0x2

    aput-object p6, v3, v0

    .line 131
    const/4 v0, 0x2

    aput-object p7, v4, v0

    .line 132
    const/4 v0, 0x3

    aput-object p8, v3, v0

    .line 133
    const/4 v0, 0x3

    aput-object p9, v4, v0

    .line 134
    const/4 v0, 0x4

    aput-object p10, v3, v0

    .line 135
    const/4 v0, 0x4

    aput-object p11, v4, v0

    .line 138
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v1

    const/4 v5, 0x5

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object v0

    .line 121
    .end local v3    # "addNames":[Ljava/lang/Object;
    .end local v4    # "addVals":[Ljava/lang/Object;
    .end local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :cond_8
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    move-object v7, v0

    goto :goto_0

    .line 141
    .restart local v3    # "addNames":[Ljava/lang/Object;
    .restart local v4    # "addVals":[Ljava/lang/Object;
    .restart local v7    # "tmp":Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
    :catchall_0
    move-exception v0

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

.method private static toStringImpl(Ljava/lang/Class;Lorg/apache/ignite/internal/util/typedef/internal/SB;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 17
    .param p1, "buf"    # Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .param p3, "addNames"    # [Ljava/lang/Object;
    .param p4, "addVals"    # [Ljava/lang/Object;
    .param p5, "addLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/ignite/internal/util/typedef/internal/SB;",
            "TT;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    if-nez p0, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 388
    :cond_0
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_1

    if-nez p1, :cond_1

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 389
    :cond_1
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_2

    if-nez p2, :cond_2

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 390
    :cond_2
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_3

    if-nez p3, :cond_3

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 391
    :cond_3
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_4

    if-nez p4, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 392
    :cond_4
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p3

    array-length v14, v0

    move-object/from16 v0, p4

    array-length v15, v0

    if-eq v14, v15, :cond_5

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 393
    :cond_5
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p3

    array-length v14, v0

    move/from16 v0, p5

    if-le v0, v14, :cond_6

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 396
    :cond_6
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->getClassDescriptor(Ljava/lang/Class;)Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;

    move-result-object v1

    .line 398
    .local v1, "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    sget-boolean v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->$assertionsDisabled:Z

    if-nez v14, :cond_7

    if-nez v1, :cond_7

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v1    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    :catch_0
    move-exception v3

    .line 481
    .local v3, "e":Ljava/lang/Exception;
    sget-object v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 486
    :try_start_1
    sget-object v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->classCache:Ljava/util/Map;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    sget-object v14, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 493
    new-instance v14, Lorg/apache/ignite/IgniteException;

    invoke-direct {v14, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 400
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    :cond_7
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->setLength(I)V

    .line 402
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->getSimpleClassName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v14

    const-string v15, " ["

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 404
    const/4 v6, 0x1

    .line 406
    .local v6, "first":Z
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->getFields()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    .line 407
    .local v4, "fd":Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;
    if-nez v6, :cond_8

    .line 408
    const-string v14, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 412
    :goto_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 416
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 418
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 420
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 421
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [B

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 422
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0

    .line 410
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "name":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 423
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [Z

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 424
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Z

    check-cast v14, [Z

    invoke-static {v14}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0

    .line 425
    :cond_a
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [S

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 426
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [S

    check-cast v14, [S

    invoke-static {v14}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 427
    :cond_b
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [I

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 428
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    check-cast v14, [I

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 429
    :cond_c
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [J

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 430
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    check-cast v14, [J

    invoke-static {v14}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 431
    :cond_d
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [F

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 432
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    check-cast v14, [F

    invoke-static {v14}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 433
    :cond_e
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [D

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 434
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    check-cast v14, [D

    invoke-static {v14}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 435
    :cond_f
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, [C

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 436
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [C

    check-cast v14, [C

    invoke-static {v14}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 438
    :cond_10
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 441
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 443
    .local v13, "val":Ljava/lang/Object;
    instance-of v14, v13, Ljava/util/Collection;

    if-eqz v14, :cond_13

    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    const/16 v15, 0x64

    if-le v14, v15, :cond_13

    .line 444
    check-cast v13, Ljava/util/Collection;

    .end local v13    # "val":Ljava/lang/Object;
    const/4 v14, 0x1

    const/16 v15, 0x64

    invoke-static {v13, v14, v15}, Lorg/apache/ignite/internal/util/typedef/F;->retain(Ljava/util/Collection;ZI)Ljava/util/Collection;

    move-result-object v13

    .line 461
    :cond_12
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_0

    .line 445
    .restart local v13    # "val":Ljava/lang/Object;
    :cond_13
    instance-of v14, v13, Ljava/util/Map;

    if-eqz v14, :cond_12

    move-object v0, v13

    check-cast v0, Ljava/util/Map;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    const/16 v15, 0x64

    if-le v14, v15, :cond_12

    .line 446
    const/16 v14, 0x64

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v12

    .line 447
    .local v12, "tmp":Ljava/util/Map;
    const/4 v2, 0x0

    .line 449
    .local v2, "cntr":I
    check-cast v13, Ljava/util/Map;

    .end local v13    # "val":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 450
    .local v11, "o":Ljava/lang/Object;
    move-object v0, v11

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 452
    .local v3, "e":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    add-int/lit8 v2, v2, 0x1

    const/16 v14, 0x64

    if-lt v2, v14, :cond_14

    .line 458
    .end local v3    # "e":Ljava/util/Map$Entry;
    .end local v11    # "o":Ljava/lang/Object;
    :cond_15
    move-object v13, v12

    .local v13, "val":Ljava/util/Map;
    goto :goto_2

    .line 465
    .end local v2    # "cntr":I
    .end local v4    # "fd":Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "tmp":Ljava/util/Map;
    .end local v13    # "val":Ljava/util/Map;
    :cond_16
    if-lez p5, :cond_18

    .line 466
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    move/from16 v0, p5

    if-ge v7, v0, :cond_18

    .line 467
    if-nez v6, :cond_17

    .line 468
    const-string v14, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 472
    :goto_4
    aget-object v14, p3, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v14

    aget-object v15, p4, v7

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 466
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 470
    :cond_17
    const/4 v6, 0x0

    goto :goto_4

    .line 475
    .end local v7    # "i":I
    :cond_18
    const/16 v14, 0x5d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 477
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    return-object v14

    .line 489
    .end local v1    # "cd":Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
    .end local v6    # "first":Z
    .local v3, "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    sget-object v15, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v14
.end method
