.class public Lorg/apache/ignite/internal/util/GridLeanMap;
.super Lorg/apache/ignite/internal/util/GridSerializableMap;
.source "GridLeanMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridLeanMap$1;,
        Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;,
        Lorg/apache/ignite/internal/util/GridLeanMap$Map5;,
        Lorg/apache/ignite/internal/util/GridLeanMap$Map4;,
        Lorg/apache/ignite/internal/util/GridLeanMap$Map3;,
        Lorg/apache/ignite/internal/util/GridLeanMap$Map2;,
        Lorg/apache/ignite/internal/util/GridLeanMap$Map1;,
        Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;,
        Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridLeanMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableMap;-><init>()V

    .line 61
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLeanMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    if-nez p1, :cond_1

    .line 64
    iput-object v3, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 70
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 73
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 74
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 76
    :cond_6
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->capacity(I)I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;-><init>(IFLorg/apache/ignite/internal/util/GridLeanMap$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableMap;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->buildFrom(Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridLeanMap;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    return-object v0
.end method

.method private buildFrom(Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 94
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 135
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 97
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 99
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 101
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 102
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 103
    .local v13, "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 105
    .local v14, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_0

    .line 107
    .end local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 108
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 109
    .restart local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 110
    .restart local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 112
    .local v15, "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto/16 :goto_0

    .line 114
    .end local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v15    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 115
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 116
    .restart local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 117
    .restart local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 118
    .restart local v15    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 120
    .local v16, "e4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto/16 :goto_0

    .line 123
    .end local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v15    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v16    # "e4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 124
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 125
    .restart local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 126
    .restart local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 127
    .restart local v15    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 128
    .restart local v16    # "e4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 130
    .local v17, "e5":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto/16 :goto_0

    .line 134
    .end local v13    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v14    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v15    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v16    # "e4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v17    # "e5":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_5
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;-><init>(Ljava/util/Map;Lorg/apache/ignite/internal/util/GridLeanMap$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 247
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 258
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridSerializableMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 260
    .local v0, "clone":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap;->buildFrom(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-object v0

    .line 264
    .end local v0    # "clone":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 265
    .local v1, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/util/GridLeanMap$1;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v2, "key"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 168
    const/4 v2, 0x0

    .line 209
    :goto_0
    return-object v2

    .line 171
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 174
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->size()I

    move-result v18

    .line 177
    .local v18, "size":I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    check-cast v14, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    .line 180
    .local v14, "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v3, v14, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    iget-object v4, v14, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 209
    .end local v14    # "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 182
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    check-cast v15, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    .line 185
    .local v15, "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map2;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2<TK;TV;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;

    iget-object v3, v15, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k1:Ljava/lang/Object;

    iget-object v4, v15, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->v1:Ljava/lang/Object;

    iget-object v5, v15, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k2:Ljava/lang/Object;

    iget-object v6, v15, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->v2:Ljava/lang/Object;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_1

    .line 187
    .end local v15    # "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map2;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2<TK;TV;>;"
    :cond_4
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-object/from16 v16, v0

    check-cast v16, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;

    .line 190
    .local v16, "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map3;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map3<TK;TV;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->k1:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->v1:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->k2:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->v2:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->k3:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v8, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->v3:Ljava/lang/Object;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto :goto_1

    .line 192
    .end local v16    # "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map3;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map3<TK;TV;>;"
    :cond_5
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-object/from16 v17, v0

    check-cast v17, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;

    .line 195
    .local v17, "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k1:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v1:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k2:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v2:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v7, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k3:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v3:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v9, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v10, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v12}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    goto/16 :goto_1

    .line 197
    .end local v17    # "m":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    :cond_6
    const/4 v2, 0x5

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 200
    .local v13, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;

    const/4 v3, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;-><init>(IFLorg/apache/ignite/internal/util/GridLeanMap$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2, v13}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->putAll(Ljava/util/Map;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 207
    .end local v13    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    const-string v2, "key"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    instance-of v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 240
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object v0

    .line 224
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/GridLeanMap;->buildFrom(Ljava/util/Map;)V

    goto :goto_0

    .line 230
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    if-nez v2, :cond_3

    .line 231
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->size()I

    move-result v1

    .line 235
    .local v1, "size":I
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 238
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/GridLeanMap;->buildFrom(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
