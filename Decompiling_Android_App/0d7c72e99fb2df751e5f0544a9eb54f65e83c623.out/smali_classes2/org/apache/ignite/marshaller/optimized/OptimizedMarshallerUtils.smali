.class Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;
.super Ljava/lang/Object;
.source "OptimizedMarshallerUtils.java"


# static fields
.field static final ARRAY_LIST:B = 0x15t

.field static final BOOLEAN:B = 0x8t

.field static final BOOLEAN_ARR:B = 0x10t

.field static final BYTE:B = 0x1t

.field static final BYTE_ARR:B = 0x9t

.field static final CHAR:B = 0x7t

.field static final CHAR_ARR:B = 0xft

.field static final CLS:B = 0x1ct

.field static final DATE:B = 0x1bt

.field static final DOUBLE:B = 0x6t

.field static final DOUBLE_ARR:B = 0xet

.field static final ENUM:B = 0x64t

.field static final EXTERNALIZABLE:B = 0x65t

.field static final FLOAT:B = 0x5t

.field static final FLOAT_ARR:B = 0xdt

.field static final HANDLE:B = -0x1t

.field static final HASH_MAP:B = 0x16t

.field static final HASH_SET:B = 0x17t

.field static final HASH_SET_MAP_OFF:J

.field static final INT:B = 0x3t

.field static final INT_ARR:B = 0xbt

.field static final JDK:B = -0x2t

.field static final JDK_MARSH:Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

.field static final LINKED_HASH_MAP:B = 0x19t

.field static final LINKED_HASH_SET:B = 0x1at

.field static final LINKED_LIST:B = 0x18t

.field static final LONG:B = 0x4t

.field static final LONG_ARR:B = 0xct

.field static final NULL:B = 0x0t

.field static final OBJ_ARR:B = 0x11t

.field static final PROPS:B = 0x14t

.field static final SERIALIZABLE:B = 0x66t

.field static final SHORT:B = 0x2t

.field static final SHORT_ARR:B = 0xat

.field static final STR:B = 0x12t

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field static final UTF_8:Ljava/nio/charset/Charset;

.field static final UUID:B = 0x13t


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 147
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UTF_8:Ljava/nio/charset/Charset;

    .line 150
    new-instance v1, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v1}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    sput-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->JDK_MARSH:Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    .line 154
    :try_start_0
    sget-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/HashSet;

    const-string v3, "map"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->HASH_SET_MAP_OFF:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Initialization failure."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method static classDescriptor(Ljava/util/concurrent/ConcurrentMap;ILjava/lang/ClassLoader;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    .locals 7
    .param p1, "id"    # I
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .param p3, "ctx"    # Lorg/apache/ignite/marshaller/MarshallerContext;
    .param p4, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;I",
            "Ljava/lang/ClassLoader;",
            "Lorg/apache/ignite/marshaller/MarshallerContext;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;",
            ")",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "clsMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;>;"
    invoke-interface {p3, p1, p2}, Lorg/apache/ignite/marshaller/MarshallerContext;->getClass(ILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 251
    .local v1, "cls":Ljava/lang/Class;
    invoke-interface {p0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    .line 253
    .local v0, "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    .end local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->resolveTypeId(Ljava/lang/String;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)I

    move-result v2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;-><init>(Ljava/lang/Class;ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)V

    .restart local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    invoke-interface {p0, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    .line 257
    .local v6, "old":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    if-eqz v6, :cond_0

    .line 258
    move-object v0, v6

    .line 261
    .end local v6    # "old":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    :cond_0
    return-object v0
.end method

.method static classDescriptor(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    .locals 10
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "ctx"    # Lorg/apache/ignite/marshaller/MarshallerContext;
    .param p3, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/MarshallerContext;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;",
            ")",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "clsMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;>;"
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    .line 186
    .local v0, "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->resolveTypeId(Ljava/lang/String;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)I

    move-result v9

    .line 192
    .local v9, "typeId":I
    :try_start_0
    invoke-interface {p2, v9, p1}, Lorg/apache/ignite/marshaller/MarshallerContext;->registerClass(ILjava/lang/Class;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 198
    .local v8, "registered":Z
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    .end local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    if-eqz v8, :cond_1

    move v2, v9

    :goto_0
    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;-><init>(Ljava/lang/Class;ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)V

    .line 200
    .restart local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    if-eqz v8, :cond_0

    .line 201
    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    .line 203
    .local v7, "old":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    if-eqz v7, :cond_0

    .line 204
    move-object v0, v7

    .line 208
    .end local v7    # "old":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    .end local v8    # "registered":Z
    .end local v9    # "typeId":I
    :cond_0
    return-object v0

    .line 194
    .restart local v9    # "typeId":I
    :catch_0
    move-exception v6

    .line 195
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 198
    .end local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v8    # "registered":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static computeSerialVersionUid(Ljava/lang/Class;Ljava/util/List;)S
    .locals 13
    .param p0, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)S"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/16 v12, 0x8

    .line 275
    const-class v7, Ljava/io/Serializable;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 276
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v8

    long-to-int v7, v8

    int-to-short v7, v7

    .line 306
    :goto_0
    return v7

    .line 281
    :cond_0
    :try_start_0
    const-string v7, "SHA"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 287
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 289
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 290
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 291
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 293
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 294
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 283
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to get digest for SHA."

    invoke-direct {v7, v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 298
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_1
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 300
    .local v4, "hashBytes":[B
    const-wide/16 v2, 0x0

    .line 303
    .local v2, "hash":J
    array-length v7, v4

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_2
    if-ltz v5, :cond_2

    .line 304
    shl-long v8, v2, v12

    aget-byte v7, v4, v5

    and-int/lit16 v7, v7, 0xff

    int-to-long v10, v7

    or-long v2, v8, v10

    .line 303
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 306
    :cond_2
    long-to-int v7, v2

    int-to-short v7, v7

    goto :goto_0
.end method

.method static getBoolean(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 471
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static getByte(Ljava/lang/Object;J)B
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 317
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getChar(Ljava/lang/Object;J)C
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 449
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    return v0
.end method

.method static getDouble(Ljava/lang/Object;J)D
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 427
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getFloat(Ljava/lang/Object;J)F
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 405
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 361
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getLong(Ljava/lang/Object;J)J
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 383
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 493
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getShort(Ljava/lang/Object;J)S
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J

    .prologue
    .line 339
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method private static resolveTypeId(Ljava/lang/String;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)I
    .locals 1
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    .prologue
    .line 219
    if-eqz p1, :cond_1

    .line 220
    invoke-interface {p1, p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;->typeId(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "typeId":I
    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 226
    .end local v0    # "typeId":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .restart local v0    # "typeId":I
    goto :goto_0
.end method

.method static setBoolean(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # Z

    .prologue
    .line 482
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 483
    return-void
.end method

.method static setByte(Ljava/lang/Object;JB)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # B

    .prologue
    .line 328
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 329
    return-void
.end method

.method static setChar(Ljava/lang/Object;JC)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # C

    .prologue
    .line 460
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 461
    return-void
.end method

.method static setDouble(Ljava/lang/Object;JD)V
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # D

    .prologue
    .line 438
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 439
    return-void
.end method

.method static setFloat(Ljava/lang/Object;JF)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # F

    .prologue
    .line 416
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 417
    return-void
.end method

.method static setInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # I

    .prologue
    .line 372
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 373
    return-void
.end method

.method static setLong(Ljava/lang/Object;JJ)V
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # J

    .prologue
    .line 394
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 395
    return-void
.end method

.method static setObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 504
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 505
    return-void
.end method

.method static setShort(Ljava/lang/Object;JS)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "off"    # J
    .param p3, "val"    # S

    .prologue
    .line 350
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 351
    return-void
.end method
