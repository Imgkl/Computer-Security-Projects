.class public Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;
.super Ljava/lang/Object;
.source "VisorSpisConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private colSpi:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private commSpi:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private cpSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private deploySpi:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private discoSpi:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private evtSpi:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private failSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private indexingSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadBalancingSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private swapSpaceSpis:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 23
    .param p0, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/IgniteSpi;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 79
    .local v19, "spiCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/spi/IgniteSpi;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v18, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "Class Name"

    invoke-static/range {p0 .. p0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Method;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v3    # "arr$":[Ljava/lang/reflect/Method;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v13, :cond_1

    aget-object v15, v3, v10

    .line 84
    .local v15, "mtd":Ljava/lang/reflect/Method;
    const-class v20, Lorg/apache/ignite/spi/IgniteSpiConfiguration;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-class v20, Ljava/lang/Deprecated;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 85
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    .line 87
    .local v16, "mtdName":Ljava/lang/String;
    const-string v20, "set"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 88
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 90
    .local v17, "propName":Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "is"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Formatted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    .line 97
    .local v8, "getterNames":[Ljava/lang/String;
    move-object v4, v8

    .local v4, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v14, v4

    .local v14, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v14, :cond_0

    aget-object v7, v4, v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    .local v7, "getterName":Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 101
    .local v6, "getter":Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 103
    .local v5, "getRes":Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "getRes":Ljava/lang/Object;
    .end local v6    # "getter":Ljava/lang/reflect/Method;
    .end local v7    # "getterName":Ljava/lang/String;
    .end local v8    # "getterNames":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "mtdName":Ljava/lang/String;
    .end local v17    # "propName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 107
    .end local v10    # "i$":I
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "getterName":Ljava/lang/String;
    .restart local v8    # "getterNames":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "mtdName":Ljava/lang/String;
    .restart local v17    # "propName":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 97
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 112
    .end local v7    # "getterName":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    :catch_1
    move-exception v11

    .line 113
    .local v11, "ignored":Ljava/lang/IllegalAccessException;
    const-string v20, "Error: Method Cannot Be Accessed"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 115
    .end local v11    # "ignored":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v12

    .line 116
    .local v12, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: Method Threw An Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 122
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "getterNames":[Ljava/lang/String;
    .end local v12    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v15    # "mtd":Ljava/lang/reflect/Method;
    .end local v16    # "mtdName":Ljava/lang/String;
    .end local v17    # "propName":Ljava/lang/String;
    .restart local v10    # "i$":I
    :cond_1
    new-instance v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-interface/range {p0 .. p0}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v20
.end method

.method private static collectSpiInfo([Lorg/apache/ignite/spi/IgniteSpi;)[Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .param p0, "spis"    # [Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/spi/IgniteSpi;",
            ")[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    array-length v2, p0

    new-array v1, v2, [Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 132
    .local v1, "res":[Lorg/apache/ignite/lang/IgniteBiTuple;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 133
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    aput-object v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    check-cast v1, [Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local v1    # "res":[Lorg/apache/ignite/lang/IgniteBiTuple;
    return-object v1
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;
    .locals 4
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 143
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;-><init>()V

    .line 145
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->discoSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 146
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->commSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 147
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->evtSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 148
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->colSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 149
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->deploySpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 150
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo([Lorg/apache/ignite/spi/IgniteSpi;)[Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->cpSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 151
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo([Lorg/apache/ignite/spi/IgniteSpi;)[Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->failSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 152
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo([Lorg/apache/ignite/spi/IgniteSpi;)[Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->loadBalancingSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 153
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->swapSpaceSpis:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 154
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIndexingSpi()Lorg/apache/ignite/spi/indexing/IndexingSpi;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->collectSpiInfo(Lorg/apache/ignite/spi/IgniteSpi;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->asArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/lang/IgniteBiTuple;

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->indexingSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 156
    return-object v0
.end method


# virtual methods
.method public checkpointSpis()[Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->cpSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public collisionSpi()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->colSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public communicationSpi()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->commSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public deploymentSpi()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->deploySpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public discoverySpi()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->discoSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public eventStorageSpi()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->evtSpi:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public failoverSpis()[Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->failSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public indexingSpis()[Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->indexingSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public loadBalancingSpis()[Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->loadBalancingSpis:[Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public swapSpaceSpi()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->swapSpaceSpis:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
