.class public final Lorg/apache/ignite/internal/util/gridify/GridifyUtils;
.super Ljava/lang/Object;
.source "GridifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;,
        Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOWED_MTD_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ALLOWED_MTD_RETURN_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_SIZE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->$assertionsDisabled:Z

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Iterable;

    aput-object v3, v0, v2

    const-class v3, Ljava/util/Iterator;

    aput-object v3, v0, v1

    const-class v3, Ljava/util/Enumeration;

    aput-object v3, v0, v5

    const-class v3, Ljava/util/Collection;

    aput-object v3, v0, v6

    const-class v3, Ljava/util/Set;

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-class v4, Ljava/util/List;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-class v4, Ljava/util/Queue;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v3

    sput-object v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_RETURN_TYPES:[Ljava/lang/Class;

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Iterable;

    aput-object v3, v0, v2

    const-class v2, Ljava/util/Iterator;

    aput-object v2, v0, v1

    const-class v1, Ljava/util/Enumeration;

    aput-object v1, v0, v5

    const-class v1, Ljava/util/Collection;

    aput-object v1, v0, v6

    const-class v1, Ljava/util/Set;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/util/Queue;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_PARAM_TYPES:[Ljava/lang/Class;

    return-void

    :cond_0
    move v0, v2

    .line 32
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static collectionToParameter(Ljava/lang/Class;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 10
    .param p1, "data"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "paramCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 345
    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 401
    .end local p1    # "data":Ljava/util/Collection;
    :cond_0
    :goto_0
    return-object p1

    .line 347
    .restart local p1    # "data":Ljava/util/Collection;
    :cond_1
    const-class v9, Ljava/lang/Iterable;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 349
    const-class v9, Ljava/util/Iterator;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 350
    new-instance v8, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;

    invoke-direct {v8, p1}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;-><init>(Ljava/util/Collection;)V

    move-object p1, v8

    goto :goto_0

    .line 351
    :cond_2
    const-class v9, Ljava/util/Enumeration;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 352
    new-instance v8, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;

    invoke-direct {v8, p1, v0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;)V

    move-object p1, v8

    goto :goto_0

    .line 353
    :cond_3
    const-class v9, Ljava/util/Set;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 354
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v8

    goto :goto_0

    .line 355
    :cond_4
    const-class v9, Ljava/util/List;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 356
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object p1, v8

    goto :goto_0

    .line 357
    :cond_5
    const-class v9, Ljava/util/Queue;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 358
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object p1, v8

    goto :goto_0

    .line 359
    :cond_6
    const-class v9, Ljava/lang/CharSequence;

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 360
    new-instance v8, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v8}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 362
    .local v8, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 363
    .local v7, "obj":Ljava/lang/Object;
    sget-boolean v9, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->$assertionsDisabled:Z

    if-nez v9, :cond_7

    instance-of v9, v7, Ljava/lang/Character;

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 365
    :cond_7
    invoke-virtual {v8, v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_1

    .end local v7    # "obj":Ljava/lang/Object;
    :cond_8
    move-object p1, v8

    .line 368
    goto/16 :goto_0

    .line 370
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 371
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 373
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "arr":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 377
    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 378
    .local v4, "element":Ljava/lang/Object;
    invoke-static {v0, v5, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 380
    add-int/lit8 v5, v5, 0x1

    .line 381
    goto :goto_2

    .end local v4    # "element":Ljava/lang/Object;
    :cond_a
    move-object p1, v0

    .line 383
    goto/16 :goto_0

    .line 386
    .end local v0    # "arr":Ljava/lang/Object;
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_b
    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 388
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 390
    .local v1, "col":Ljava/util/Collection;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 391
    .local v3, "dataObj":Ljava/lang/Object;
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 396
    .end local v1    # "col":Ljava/util/Collection;
    .end local v3    # "dataObj":Ljava/lang/Object;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    :cond_c
    :goto_4
    move-object p1, v0

    .line 401
    goto/16 :goto_0

    .restart local v1    # "col":Ljava/util/Collection;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_d
    move-object p1, v1

    .line 394
    goto/16 :goto_0

    .line 396
    .end local v1    # "col":Ljava/util/Collection;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v9

    goto :goto_4
.end method

.method public static getAllowedMethodParameterTypes()Ljava/util/Collection;
    .locals 6
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
    .line 264
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_PARAM_TYPES:[Ljava/lang/Class;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v4, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_PARAM_TYPES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 267
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "Java Array"

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    return-object v5
.end method

.method public static getAllowedMethodReturnTypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_RETURN_TYPES:[Ljava/lang/Class;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v4, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_RETURN_TYPES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 250
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "Java Array"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-object v4
.end method

.method public static getIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    sget-boolean v2, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 97
    :cond_0
    instance-of v2, p0, Ljava/lang/Iterable;

    if-eqz v2, :cond_1

    .line 98
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 146
    :goto_0
    return-object p0

    .line 99
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Ljava/util/Enumeration;

    if-eqz v2, :cond_2

    move-object v1, p0

    .line 100
    check-cast v1, Ljava/util/Enumeration;

    .line 102
    .local v1, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    new-instance p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;-><init>(Ljava/util/Enumeration;)V

    goto :goto_0

    .line 119
    .end local v1    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/util/Iterator;

    if-eqz v2, :cond_3

    .line 120
    check-cast p0, Ljava/util/Iterator;

    goto :goto_0

    .line 121
    :cond_3
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 122
    check-cast v0, Ljava/lang/CharSequence;

    .line 124
    .local v0, "cSeq":Ljava/lang/CharSequence;
    new-instance p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$2;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$2;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    .end local v0    # "cSeq":Ljava/lang/CharSequence;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    new-instance v2, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 168
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown parameter type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 78
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    .line 80
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 81
    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    .line 82
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isMethodParameterTypeAllowed(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 196
    sget-object v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_PARAM_TYPES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 197
    .local v6, "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 221
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v6    # "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v7

    .line 196
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v6    # "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v6    # "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    .line 206
    .local v5, "mod":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v9

    if-nez v9, :cond_4

    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 207
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 209
    .local v2, "ctors":[Ljava/lang/reflect/Constructor;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 211
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    if-nez v9, :cond_0

    .line 209
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v2    # "ctors":[Ljava/lang/reflect/Constructor;
    :cond_4
    move v7, v8

    .line 221
    goto :goto_1

    .line 214
    .restart local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .restart local v2    # "ctors":[Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v9

    goto :goto_3

    :catch_1
    move-exception v9

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_3
.end method

.method public static isMethodParameterTypeAnnotated([Ljava/lang/annotation/Annotation;)Z
    .locals 6
    .param p0, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 231
    if-eqz p0, :cond_1

    array-length v4, p0

    if-lez v4, :cond_1

    .line 232
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 233
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/apache/ignite/compute/gridify/GridifyInput;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const/4 v4, 0x1

    .line 238
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 232
    .restart local v0    # "ann":Ljava/lang/annotation/Annotation;
    .restart local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isMethodReturnTypeValid(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->ALLOWED_MTD_RETURN_TYPES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 180
    .local v3, "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const/4 v4, 0x1

    .line 184
    .end local v3    # "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v4

    .line 179
    .restart local v3    # "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    goto :goto_1
.end method

.method public static parameterToCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 8
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 284
    instance-of v7, p0, Ljava/util/Collection;

    if-eqz v7, :cond_1

    .line 285
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "arg":Ljava/lang/Object;
    move-object v5, p0

    .line 332
    .local v0, "elements":Ljava/lang/CharSequence;
    .local v1, "i":I
    .local v6, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 286
    .end local v0    # "elements":Ljava/lang/CharSequence;
    .end local v1    # "i":I
    .end local v6    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    :cond_1
    instance-of v7, p0, Ljava/util/Iterator;

    if-eqz v7, :cond_2

    .line 287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "res":Ljava/util/Collection;
    move-object v3, p0

    .line 289
    check-cast v3, Ljava/util/Iterator;

    .local v3, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v5    # "res":Ljava/util/Collection;
    :cond_2
    instance-of v7, p0, Ljava/lang/Iterable;

    if-eqz v7, :cond_3

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .restart local v5    # "res":Ljava/util/Collection;
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 298
    .local v4, "o":Ljava/lang/Object;
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "res":Ljava/util/Collection;
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v7, p0, Ljava/util/Enumeration;

    if-eqz v7, :cond_4

    .line 304
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "res":Ljava/util/Collection;
    move-object v0, p0

    .line 306
    check-cast v0, Ljava/util/Enumeration;

    .line 308
    .local v0, "elements":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 309
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 313
    .end local v0    # "elements":Ljava/util/Enumeration;
    .end local v5    # "res":Ljava/util/Collection;
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .restart local v5    # "res":Ljava/util/Collection;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 317
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 321
    .end local v1    # "i":I
    .end local v5    # "res":Ljava/util/Collection;
    :cond_5
    instance-of v7, p0, Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    move-object v0, p0

    .line 322
    check-cast v0, Ljava/lang/CharSequence;

    .line 324
    .local v0, "elements":Ljava/lang/CharSequence;
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .restart local v6    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 327
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move-object v5, v6

    .line 329
    goto/16 :goto_0

    .line 332
    .end local v0    # "elements":Ljava/lang/CharSequence;
    .end local v1    # "i":I
    .end local v6    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
