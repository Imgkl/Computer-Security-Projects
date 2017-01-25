.class Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
.super Ljava/lang/Object;
.source "OptimizedClassDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;,
        Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;,
        Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private accessOrderFieldOff:J

.field private final checksum:S

.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private clsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private final ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

.field private dfltsFieldOff:J

.field private enumVals:[Ljava/lang/Object;

.field private excluded:Z

.field private fields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

.field private isCls:Z

.field private isEnum:Z

.field private isPrimitive:Z

.field private isSerial:Z

.field private loadFactorFieldOff:J

.field private final mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

.field private final name:Ljava/lang/String;

.field private readObjMtds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private readResolveMtd:Ljava/lang/reflect/Method;

.field private type:I

.field private final typeId:I

.field private writeObjMtds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private writeReplaceMtd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->$assertionsDisabled:Z

    .line 39
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Class;ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)V
    .locals 26
    .param p2, "typeId"    # I
    .param p4, "ctx"    # Lorg/apache/ignite/marshaller/MarshallerContext;
    .param p5, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;",
            "Lorg/apache/ignite/marshaller/MarshallerContext;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "clsMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->cls:Ljava/lang/Class;

    .line 128
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->typeId:I

    .line 129
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 130
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    .line 131
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->name:Ljava/lang/String;

    .line 135
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/marshaller/MarshallerExclusions;->isExcluded(Ljava/lang/Class;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->excluded:Z

    .line 137
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->excluded:Z

    if-nez v5, :cond_1

    .line 140
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_0

    const-class v5, Ljava/lang/Byte;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 141
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 143
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    .line 467
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

    invoke-virtual {v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->ownFields()Ljava/util/List;

    move-result-object v5

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->computeSerialVersionUid(Ljava/lang/Class;Ljava/util/List;)S

    move-result v5

    move-object/from16 v0, p0

    iput-short v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->checksum:S

    .line 468
    return-void

    .line 145
    :cond_2
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_3

    const-class v5, Ljava/lang/Short;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_4

    .line 146
    :cond_3
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 148
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto :goto_0

    .line 150
    :cond_4
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_5

    const-class v5, Ljava/lang/Integer;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_6

    .line 151
    :cond_5
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 153
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto :goto_0

    .line 155
    :cond_6
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_7

    const-class v5, Ljava/lang/Long;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_8

    .line 156
    :cond_7
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 158
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto :goto_0

    .line 160
    :cond_8
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_9

    const-class v5, Ljava/lang/Float;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_a

    .line 161
    :cond_9
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 163
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto :goto_0

    .line 165
    :cond_a
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_b

    const-class v5, Ljava/lang/Double;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_c

    .line 166
    :cond_b
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 168
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto/16 :goto_0

    .line 170
    :cond_c
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_d

    const-class v5, Ljava/lang/Character;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_e

    .line 171
    :cond_d
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 173
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto/16 :goto_0

    .line 175
    :cond_e
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_f

    const-class v5, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_10

    .line 176
    :cond_f
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    goto/16 :goto_0

    .line 180
    :cond_10
    const-class v5, [B

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_11

    .line 181
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 182
    :cond_11
    const-class v5, [S

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_12

    .line 183
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 184
    :cond_12
    const-class v5, [I

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_13

    .line 185
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 186
    :cond_13
    const-class v5, [J

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_14

    .line 187
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 188
    :cond_14
    const-class v5, [F

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_15

    .line 189
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 190
    :cond_15
    const-class v5, [D

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_16

    .line 191
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 192
    :cond_16
    const-class v5, [C

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_17

    .line 193
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 194
    :cond_17
    const-class v5, [Z

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_18

    .line 195
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 196
    :cond_18
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 197
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 198
    :cond_19
    const-class v5, Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_1a

    .line 199
    const/16 v5, 0x12

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 200
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 201
    const/16 v5, 0x64

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 203
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isEnum:Z

    .line 204
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->enumVals:[Ljava/lang/Object;

    goto/16 :goto_0

    .line 207
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v22

    .local v22, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v22, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 208
    const/16 v5, 0x64

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 210
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isEnum:Z

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->enumVals:[Ljava/lang/Object;

    goto/16 :goto_0

    .line 213
    :cond_1c
    const-class v5, Ljava/util/UUID;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_1d

    .line 214
    const/16 v5, 0x13

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 215
    :cond_1d
    const-class v5, Ljava/util/Properties;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_1e

    .line 216
    const/16 v5, 0x14

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 219
    :try_start_0
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v6, Ljava/util/Properties;

    const-string v7, "defaults"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->dfltsFieldOff:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v12

    .line 222
    .local v12, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 225
    .end local v12    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1e
    const-class v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_1f

    .line 226
    const/16 v5, 0x15

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 227
    :cond_1f
    const-class v5, Ljava/util/HashMap;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_20

    .line 228
    const/16 v5, 0x16

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 231
    :try_start_1
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v6, Ljava/util/HashMap;

    const-string v7, "loadFactor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 233
    :catch_1
    move-exception v12

    .line 234
    .restart local v12    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 237
    .end local v12    # "e":Ljava/lang/NoSuchFieldException;
    :cond_20
    const-class v5, Ljava/util/HashSet;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_21

    .line 238
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 241
    :try_start_2
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v6, Ljava/util/HashMap;

    const-string v7, "loadFactor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 243
    :catch_2
    move-exception v12

    .line 244
    .restart local v12    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 247
    .end local v12    # "e":Ljava/lang/NoSuchFieldException;
    :cond_21
    const-class v5, Ljava/util/LinkedList;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_22

    .line 248
    const/16 v5, 0x18

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 249
    :cond_22
    const-class v5, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_23

    .line 250
    const/16 v5, 0x19

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 253
    :try_start_3
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v6, Ljava/util/HashMap;

    const-string v7, "loadFactor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J

    .line 254
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v6, Ljava/util/LinkedHashMap;

    const-string v7, "accessOrder"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->accessOrderFieldOff:J
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 256
    :catch_3
    move-exception v12

    .line 257
    .restart local v12    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 260
    .end local v12    # "e":Ljava/lang/NoSuchFieldException;
    :cond_23
    const-class v5, Ljava/util/LinkedHashSet;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_24

    .line 261
    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 264
    :try_start_4
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v6, Ljava/util/HashMap;

    const-string v7, "loadFactor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 266
    :catch_4
    move-exception v12

    .line 267
    .restart local v12    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 270
    .end local v12    # "e":Ljava/lang/NoSuchFieldException;
    :cond_24
    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_25

    .line 271
    const/16 v5, 0x1b

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    goto/16 :goto_0

    .line 272
    :cond_25
    const-class v5, Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_26

    .line 273
    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 275
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isCls:Z

    goto/16 :goto_0

    .line 278
    :cond_26
    move-object/from16 v9, p1

    .line 280
    .local v9, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2e

    :cond_27
    if-eqz v9, :cond_2e

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    if-nez v5, :cond_29

    .line 283
    :try_start_5
    const-string v5, "writeReplace"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v9, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p1

    if-ne v9, v0, :cond_2c

    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    .line 298
    :cond_29
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2b

    .line 300
    :try_start_6
    const-string v5, "readResolve"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v9, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object/from16 v0, p1

    if-ne v9, v0, :cond_2d

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 305
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6

    .line 315
    :cond_2b
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto/16 :goto_2

    .line 291
    :cond_2c
    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    .line 293
    :catch_5
    move-exception v5

    goto :goto_3

    .line 308
    :cond_2d
    const/4 v5, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    .line 310
    :catch_6
    move-exception v5

    goto :goto_4

    .line 318
    :cond_2e
    const-class v5, Ljava/io/Externalizable;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 319
    const/16 v5, 0x65

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 322
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    :goto_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->constructor:Ljava/lang/reflect/Constructor;

    .line 326
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 328
    :catch_7
    move-exception v12

    .line 329
    .local v12, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Externalizable class doesn\'t have default constructor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 322
    .end local v12    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2f
    const/4 v5, 0x0

    :try_start_a
    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_7

    move-result-object v5

    goto :goto_5

    .line 333
    :cond_30
    const/16 v5, 0x66

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    .line 335
    const-class v5, Ljava/io/Serializable;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isSerial:Z

    .line 337
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeObjMtds:Ljava/util/List;

    .line 338
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readObjMtds:Ljava/util/List;

    .line 339
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v14, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;>;"
    move-object/from16 v9, p1

    :goto_6
    if-eqz v9, :cond_38

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 345
    :try_start_b
    const-string v5, "writeObject"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/ObjectOutputStream;

    aput-object v8, v6, v7

    invoke-virtual {v9, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 347
    .local v21, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v20

    .line 349
    .local v20, "mod":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_31

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_31

    .line 350
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_8

    .line 359
    .end local v20    # "mod":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeObjMtds:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :try_start_c
    const-string v5, "readObject"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/ObjectInputStream;

    aput-object v8, v6, v7

    invoke-virtual {v9, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 364
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v20

    .line 366
    .restart local v20    # "mod":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_32

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_32

    .line 367
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_9

    .line 376
    .end local v20    # "mod":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readObjMtds:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 380
    .local v11, "clsFields0":[Ljava/lang/reflect/Field;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v13, "fieldNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v2

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_33

    aget-object v4, v2, v17

    .line 383
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 353
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "clsFields0":[Ljava/lang/reflect/Field;
    .end local v13    # "fieldNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .restart local v20    # "mod":I
    :cond_31
    const/16 v21, 0x0

    goto :goto_7

    .line 355
    .end local v20    # "mod":I
    .end local v21    # "mtd":Ljava/lang/reflect/Method;
    :catch_8
    move-exception v18

    .line 356
    .local v18, "ignored":Ljava/lang/NoSuchMethodException;
    const/16 v21, 0x0

    .restart local v21    # "mtd":Ljava/lang/reflect/Method;
    goto :goto_7

    .line 370
    .end local v18    # "ignored":Ljava/lang/NoSuchMethodException;
    .restart local v20    # "mod":I
    :cond_32
    const/16 v21, 0x0

    goto :goto_8

    .line 372
    .end local v20    # "mod":I
    :catch_9
    move-exception v18

    .line 373
    .restart local v18    # "ignored":Ljava/lang/NoSuchMethodException;
    const/16 v21, 0x0

    goto :goto_8

    .line 385
    .end local v18    # "ignored":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v11    # "clsFields0":[Ljava/lang/reflect/Field;
    .restart local v13    # "fieldNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .restart local v17    # "i$":I
    .restart local v19    # "len$":I
    :cond_33
    new-instance v10, Ljava/util/ArrayList;

    array-length v5, v11

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .local v10, "clsFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;>;"
    const/4 v15, 0x0

    .line 390
    .local v15, "hasSerialPersistentFields":Z
    :try_start_d
    const-string v5, "serialPersistentFields"

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v25

    .line 392
    .local v25, "serFieldsDesc":Ljava/lang/reflect/Field;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 394
    .restart local v20    # "mod":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, [Ljava/io/ObjectStreamField;

    if-ne v5, v6, :cond_35

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 396
    const/4 v15, 0x1

    .line 398
    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 400
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/io/ObjectStreamField;

    move-object v0, v5

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object/from16 v24, v0

    .line 402
    .local v24, "serFields":[Ljava/io/ObjectStreamField;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_a
    move-object/from16 v0, v24

    array-length v5, v0

    move/from16 v0, v16

    if-ge v0, v5, :cond_35

    .line 403
    aget-object v23, v24, v16

    .line 407
    .local v23, "serField":Ljava/io/ObjectStreamField;
    invoke-virtual/range {v23 .. v23}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 408
    new-instance v3, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    const/4 v4, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-virtual/range {v23 .. v23}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fieldType(Ljava/lang/Class;)Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;JLorg/apache/ignite/marshaller/optimized/OptimizedFieldType;)V

    .line 422
    .local v3, "fieldInfo":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    :goto_b
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 414
    .end local v3    # "fieldInfo":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    :cond_34
    invoke-virtual/range {v23 .. v23}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 416
    .restart local v4    # "f":Ljava/lang/reflect/Field;
    new-instance v3, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    invoke-virtual/range {v23 .. v23}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fieldType(Ljava/lang/Class;)Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;JLorg/apache/ignite/marshaller/optimized/OptimizedFieldType;)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_a

    .restart local v3    # "fieldInfo":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    goto :goto_b

    .line 429
    .end local v3    # "fieldInfo":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v16    # "i":I
    .end local v20    # "mod":I
    .end local v23    # "serField":Ljava/io/ObjectStreamField;
    .end local v24    # "serFields":[Ljava/io/ObjectStreamField;
    .end local v25    # "serFieldsDesc":Ljava/lang/reflect/Field;
    :catch_a
    move-exception v12

    .line 430
    .local v12, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get value of \'serialPersistentFields\' field in class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 426
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    :catch_b
    move-exception v5

    .line 434
    :cond_35
    if-nez v15, :cond_37

    .line 435
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_c
    array-length v5, v11

    move/from16 v0, v16

    if-ge v0, v5, :cond_37

    .line 436
    aget-object v4, v11, v16

    .line 438
    .restart local v4    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 440
    .restart local v20    # "mod":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_36

    .line 441
    new-instance v3, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fieldType(Ljava/lang/Class;)Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;JLorg/apache/ignite/marshaller/optimized/OptimizedFieldType;)V

    .line 444
    .restart local v3    # "fieldInfo":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v3    # "fieldInfo":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    :cond_36
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 449
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v16    # "i":I
    .end local v20    # "mod":I
    :cond_37
    new-instance v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$1;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;)V

    invoke-static {v10, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 455
    new-instance v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-direct {v5, v10}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;-><init>(Ljava/util/List;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto/16 :goto_6

    .line 458
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v10    # "clsFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;>;"
    .end local v11    # "clsFields0":[Ljava/lang/reflect/Field;
    .end local v13    # "fieldNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v15    # "hasSerialPersistentFields":Z
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v21    # "mtd":Ljava/lang/reflect/Method;
    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeObjMtds:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readObjMtds:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 460
    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 462
    new-instance v5, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

    invoke-direct {v5, v14}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

    goto/16 :goto_0

    .line 467
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;>;"
    .end local v22    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_39
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private fieldType(Ljava/lang/Class;)Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 781
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->BYTE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 799
    .local v0, "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :goto_0
    return-object v0

    .line 782
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 783
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->SHORT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 784
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 785
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->INT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 786
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 787
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->LONG:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 788
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 789
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->FLOAT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 790
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 791
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->DOUBLE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 792
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_5
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 793
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->CHAR:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 794
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 795
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->BOOLEAN:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0

    .line 797
    .end local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    :cond_7
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->OTHER:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .restart local v0    # "type":Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    goto :goto_0
.end method

.method private verifyChecksum(S)V
    .locals 3
    .param p1, "checksum"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget-short v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->checksum:S

    if-eq p1, v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Optimized stream class checksum mismatch (is same version of marshalled class present on all nodes?) [expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->checksum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_0
    return-void
.end method


# virtual methods
.method describedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method excluded()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->excluded:Z

    return v0
.end method

.method isClass()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isCls:Z

    return v0
.end method

.method isEnum()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isEnum:Z

    return v0
.end method

.method isPrimitive()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive:Z

    return v0
.end method

.method read(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    packed-switch v0, :pswitch_data_0

    .line 754
    sget-boolean v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 741
    :pswitch_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->enumVals:[Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    .line 756
    :goto_0
    return-object v0

    .line 744
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readShort()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->verifyChecksum(S)V

    .line 746
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readExternalizable(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 749
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readShort()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->verifyChecksum(S)V

    .line 751
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->cls:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readObjMtds:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->readResolveMtd:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readSerializable(Ljava/lang/Class;Ljava/util/List;Ljava/lang/reflect/Method;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method replace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 515
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeReplaceMtd:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 522
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1

    .line 517
    .restart local p1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 517
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method write(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;Ljava/lang/Object;)V
    .locals 9
    .param p1, "out"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 534
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->write(I)V

    .line 536
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 715
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :sswitch_0
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    .line 717
    :goto_0
    return-void

    .line 543
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeShort(I)V

    goto :goto_0

    .line 548
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    goto :goto_0

    .line 553
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLong(J)V

    goto :goto_0

    .line 558
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 563
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeDouble(D)V

    goto :goto_0

    .line 568
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_6
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeChar(I)V

    goto :goto_0

    .line 573
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_7
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    goto :goto_0

    .line 578
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_8
    check-cast p2, [B

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByteArray([B)V

    goto :goto_0

    .line 583
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_9
    check-cast p2, [S

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeShortArray([S)V

    goto :goto_0

    .line 588
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_a
    check-cast p2, [I

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeIntArray([I)V

    goto :goto_0

    .line 593
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_b
    check-cast p2, [J

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLongArray([J)V

    goto :goto_0

    .line 598
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_c
    check-cast p2, [F

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFloatArray([F)V

    goto :goto_0

    .line 603
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_d
    check-cast p2, [D

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeDoubleArray([D)V

    goto :goto_0

    .line 608
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_e
    check-cast p2, [C

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeCharArray([C)V

    goto :goto_0

    .line 613
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_f
    check-cast p2, [Z

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 618
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_10
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v8

    .line 623
    .local v8, "compDesc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    invoke-virtual {v8, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeTypeData(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    .line 625
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 630
    .end local v8    # "compDesc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_11
    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_12
    check-cast p2, Ljava/util/UUID;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeUuid(Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 640
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_13
    check-cast p2, Ljava/util/Properties;

    .end local p2    # "obj":Ljava/lang/Object;
    iget-wide v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->dfltsFieldOff:J

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeProperties(Ljava/util/Properties;J)V

    goto/16 :goto_0

    .line 645
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_14
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeArrayList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 650
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_15
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "obj":Ljava/lang/Object;
    iget-wide v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J

    invoke-virtual {p1, p2, v0, v1, v6}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeHashMap(Ljava/util/HashMap;JZ)V

    goto/16 :goto_0

    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_16
    move-object v1, p2

    .line 655
    check-cast v1, Ljava/util/HashSet;

    sget-wide v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->HASH_SET_MAP_OFF:J

    iget-wide v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeHashSet(Ljava/util/HashSet;JJ)V

    goto/16 :goto_0

    .line 660
    :sswitch_17
    check-cast p2, Ljava/util/LinkedList;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLinkedList(Ljava/util/LinkedList;)V

    goto/16 :goto_0

    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_18
    move-object v1, p2

    .line 665
    check-cast v1, Ljava/util/LinkedHashMap;

    iget-wide v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J

    iget-wide v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->accessOrderFieldOff:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLinkedHashMap(Ljava/util/LinkedHashMap;JJZ)V

    goto/16 :goto_0

    :sswitch_19
    move-object v1, p2

    .line 670
    check-cast v1, Ljava/util/LinkedHashSet;

    sget-wide v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->HASH_SET_MAP_OFF:J

    iget-wide v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->loadFactorFieldOff:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLinkedHashSet(Ljava/util/LinkedHashSet;JJ)V

    goto/16 :goto_0

    .line 675
    :sswitch_1a
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 680
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_1b
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    check-cast p2, Ljava/lang/Class;

    .end local p2    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v0, p2, v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v7

    .line 682
    .local v7, "clsDesc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    invoke-virtual {v7, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeTypeData(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    goto/16 :goto_0

    .line 687
    .end local v7    # "clsDesc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_1c
    invoke-virtual {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeTypeData(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    .line 689
    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    goto/16 :goto_0

    .line 694
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_1d
    invoke-virtual {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeTypeData(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    .line 696
    iget-short v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->checksum:S

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeShort(I)V

    .line 697
    invoke-virtual {p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeExternalizable(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 702
    :sswitch_1e
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->requireSerializable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isSerial:Z

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/io/NotSerializableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must implement java.io.Serializable or set OptimizedMarshaller.setRequireSerializable() to false (note that performance may degrade if object is not Serializable): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeTypeData(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    .line 709
    iget-short v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->checksum:S

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeShort(I)V

    .line 710
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->writeObjMtds:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->fields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeSerializable(Ljava/lang/Object;Ljava/util/List;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;)V

    goto/16 :goto_0

    .line 536
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1d
        0x66 -> :sswitch_1e
    .end sparse-switch
.end method

.method writeTypeData(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->typeId:I

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 726
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->typeId:I

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 728
    :cond_0
    return-void
.end method
