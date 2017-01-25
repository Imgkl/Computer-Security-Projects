.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
.super Ljava/io/ObjectOutputStream;
.source "OptimizedObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$1;,
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;
    }
.end annotation


# static fields
.field private static final CONVERTED_ERR:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field private ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

.field private curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

.field private curObj:Ljava/lang/Object;

.field private curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

.field private final handles:Lorg/apache/ignite/internal/util/GridHandleTable;

.field private mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

.field private final out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

.field private requireSer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "weblogic/management/ManagementException"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Externalizable class doesn\'t have default constructor: class org.apache.ignite.internal.processors.email.IgniteEmailProcessor$2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->CONVERTED_ERR:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/io/GridDataOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/ignite/internal/util/io/GridDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/ignite/internal/util/GridHandleTable;

    const/16 v1, 0xa

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridHandleTable;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->handles:Lorg/apache/ignite/internal/util/GridHandleTable;

    .line 77
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    .line 78
    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    return-object v0
.end method

.method private writeFields(Ljava/lang/Object;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fields"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 456
    invoke-virtual {p2, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->get(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    move-result-object v1

    .line 458
    .local v1, "t":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$1;->$SwitchMap$org$apache$ignite$marshaller$optimized$OptimizedFieldType:[I

    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->type()Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 455
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :pswitch_0
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getByte(Ljava/lang/Object;J)B

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    goto :goto_1

    .line 466
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getShort(Ljava/lang/Object;J)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeShort(I)V

    goto :goto_1

    .line 472
    :pswitch_2
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    goto :goto_1

    .line 478
    :pswitch_3
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLong(J)V

    goto :goto_1

    .line 484
    :pswitch_4
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getFloat(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFloat(F)V

    goto :goto_1

    .line 490
    :pswitch_5
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 491
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeDouble(D)V

    goto :goto_1

    .line 496
    :pswitch_6
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getChar(Ljava/lang/Object;J)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeChar(I)V

    goto :goto_1

    .line 502
    :pswitch_7
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getBoolean(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 508
    :pswitch_8
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 512
    .end local v1    # "t":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    :cond_1
    return-void

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private writeObject0(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 155
    iput-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    .line 156
    iput-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 157
    iput-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    .line 159
    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0, v9}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    .line 220
    :goto_0
    return-void

    .line 162
    :cond_0
    instance-of v5, p1, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    instance-of v5, p1, Ljava/io/Externalizable;

    if-nez v5, :cond_2

    .line 163
    const/4 v5, -0x2

    invoke-virtual {p0, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    .line 166
    :try_start_0
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->JDK_MARSH:Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-virtual {v5, p1, p0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    const-class v5, Ljava/io/IOException;

    invoke-virtual {v1, v5}, Lorg/apache/ignite/IgniteCheckedException;->getCause(Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    .line 171
    .local v3, "ioEx":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 172
    throw v3

    .line 174
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to serialize object with JDK marshaller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 178
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "ioEx":Ljava/io/IOException;
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_3

    const-class v5, [Ljava/lang/Object;

    :goto_1
    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v8, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v6, v5, v7, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v0

    .line 184
    .local v0, "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->excluded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    invoke-virtual {p0, v9}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    goto :goto_0

    .line 178
    .end local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 190
    .restart local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    :cond_4
    invoke-virtual {v0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, "obj0":Ljava/lang/Object;
    if-nez v4, :cond_5

    .line 193
    invoke-virtual {p0, v9}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    goto :goto_0

    .line 198
    :cond_5
    const/4 v2, -0x1

    .line 200
    .local v2, "handle":I
    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isEnum()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->isClass()Z

    move-result v5

    if-nez v5, :cond_6

    .line 201
    iget-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->handles:Lorg/apache/ignite/internal/util/GridHandleTable;

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/util/GridHandleTable;->lookup(Ljava/lang/Object;)I

    move-result v2

    .line 203
    :cond_6
    if-eq v4, p1, :cond_7

    .line 204
    move-object p1, v4

    .line 206
    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_8

    const-class v5, [Ljava/lang/Object;

    :goto_2
    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v8, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v6, v5, v7, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v0

    .line 212
    :cond_7
    if-ltz v2, :cond_9

    .line 213
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    .line 214
    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_2

    .line 217
    :cond_9
    invoke-virtual {v0, p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->write(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->reset()V

    .line 114
    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    .line 115
    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 116
    return-void
.end method

.method context(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;Z)V
    .locals 0
    .param p2, "ctx"    # Lorg/apache/ignite/marshaller/MarshallerContext;
    .param p3, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;
    .param p4, "requireSer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;",
            "Lorg/apache/ignite/marshaller/MarshallerContext;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "clsMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;>;"
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    iput-object p2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    .line 92
    iput-object p3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    .line 93
    iput-boolean p4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->requireSer:Z

    .line 94
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "Not in writeObject() call."

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFields(Ljava/lang/Object;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;)V

    .line 680
    return-void
.end method

.method public drain()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    return-void
.end method

.method handledObjects()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->handles:Lorg/apache/ignite/internal/util/GridHandleTable;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridHandleTable;->objects()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public out()Lorg/apache/ignite/internal/util/io/GridDataOutput;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    return-object v0
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "Not in writeObject() call or fields already written."

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    if-nez v0, :cond_1

    .line 688
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    .line 690
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    return-object v0
.end method

.method requireSerializable()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->requireSer:Z

    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->reset()V

    .line 752
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->handles:Lorg/apache/ignite/internal/util/GridHandleTable;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridHandleTable;->clear()V

    .line 754
    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    .line 755
    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 756
    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    .line 757
    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 0
    .param p1, "ver"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    .line 647
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->write([B)V

    .line 121
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->write([BII)V

    .line 126
    return-void
.end method

.method writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "arr"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    array-length v1, p1

    .line 232
    .local v1, "len":I
    invoke-virtual {p0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    aget-object v2, p1, v0

    .line 237
    .local v2, "obj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method writeArrayList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 335
    .local v1, "size":I
    invoke-virtual {p0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeBoolean(Z)V

    .line 607
    return-void
.end method

.method writeBooleanArray([Z)V
    .locals 1
    .param p1, "arr"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeBooleanArray([Z)V

    .line 592
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeByte(I)V

    .line 612
    return-void
.end method

.method writeByteArray([B)V
    .locals 1
    .param p1, "arr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeByteArray([B)V

    .line 522
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeBytes(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeChar(I)V

    .line 622
    return-void
.end method

.method writeCharArray([C)V
    .locals 1
    .param p1, "arr"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeCharArray([C)V

    .line 582
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeChars(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method writeDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLong(J)V

    .line 444
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeDouble(D)V

    .line 642
    return-void
.end method

.method writeDoubleArray([D)V
    .locals 1
    .param p1, "arr"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeDoubleArray([D)V

    .line 572
    return-void
.end method

.method writeExternalizable(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    .line 289
    .local v0, "extObj":Ljava/io/Externalizable;
    invoke-interface {v0, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 290
    return-void
.end method

.method public writeFields()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 696
    new-instance v4, Ljava/io/NotActiveException;

    const-string v5, "Not in writeObject() call."

    invoke-direct {v4, v5}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 698
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    if-nez v4, :cond_1

    .line 699
    new-instance v4, Ljava/io/NotActiveException;

    const-string v5, "putFields() was not called."

    invoke-direct {v4, v5}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 701
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curPut:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    # getter for: Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->objs:[Lorg/apache/ignite/lang/IgniteBiTuple;
    invoke-static {v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->access$100(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;)[Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgniteBiTuple;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 702
    .local v3, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;Ljava/lang/Object;>;"
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$1;->$SwitchMap$org$apache$ignite$marshaller$optimized$OptimizedFieldType:[I

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    invoke-virtual {v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 701
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :pswitch_0
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeByte(I)V

    goto :goto_1

    .line 709
    :pswitch_1
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeShort(I)V

    goto :goto_1

    .line 714
    :pswitch_2
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    goto :goto_1

    .line 719
    :pswitch_3
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLong(J)V

    goto :goto_1

    .line 724
    :pswitch_4
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFloat(F)V

    goto :goto_1

    .line 729
    :pswitch_5
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeDouble(D)V

    goto :goto_1

    .line 734
    :pswitch_6
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeChar(I)V

    goto :goto_1

    .line 739
    :pswitch_7
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    goto :goto_1

    .line 744
    :pswitch_8
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    goto :goto_1

    .line 747
    .end local v3    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;Ljava/lang/Object;>;"
    :cond_2
    return-void

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeFloat(F)V

    .line 637
    return-void
.end method

.method writeFloatArray([F)V
    .locals 1
    .param p1, "arr"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeFloatArray([F)V

    .line 562
    return-void
.end method

.method writeHashMap(Ljava/util/HashMap;JZ)V
    .locals 4
    .param p2, "loadFactorFieldOff"    # J
    .param p4, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;JZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 353
    .local v2, "size":I
    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 354
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFloat(F)V

    .line 356
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    .line 359
    if-nez p4, :cond_0

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return-void
.end method

.method writeHashSet(Ljava/util/HashSet;JJ)V
    .locals 2
    .param p2, "mapFieldOff"    # J
    .param p4, "loadFactorFieldOff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<*>;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p4, p5, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeHashMap(Ljava/util/HashMap;JZ)V

    .line 374
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeInt(I)V

    .line 627
    return-void
.end method

.method writeIntArray([I)V
    .locals 1
    .param p1, "arr"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeIntArray([I)V

    .line 542
    return-void
.end method

.method writeLinkedHashMap(Ljava/util/LinkedHashMap;JJZ)V
    .locals 6
    .param p2, "loadFactorFieldOff"    # J
    .param p4, "accessOrderFieldOff"    # J
    .param p6, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<**>;JJZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<**>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 406
    .local v2, "size":I
    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 407
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFloat(F)V

    .line 409
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-ltz v3, :cond_1

    .line 410
    invoke-static {p1, p4, p5}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    .line 414
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 415
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    .line 417
    if-nez p6, :cond_0

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    goto :goto_1

    .line 412
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    goto :goto_0

    .line 420
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method writeLinkedHashSet(Ljava/util/LinkedHashSet;JJ)V
    .locals 8
    .param p2, "mapFieldOff"    # J
    .param p4, "loadFactorFieldOff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<*>;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<*>;"
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 433
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<**>;"
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLinkedHashMap(Ljava/util/LinkedHashMap;JJZ)V

    .line 434
    return-void
.end method

.method writeLinkedList(Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<*>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 386
    .local v2, "size":I
    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 388
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 389
    .local v1, "obj":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeLong(J)V

    .line 632
    return-void
.end method

.method writeLongArray([J)V
    .locals 1
    .param p1, "arr"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeLongArray([J)V

    .line 552
    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 137
    .local v1, "t":Ljava/lang/Throwable;
    :cond_0
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->CONVERTED_ERR:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    new-instance v2, Ljava/io/IOException;

    const-string v3, "You are trying to serialize internal classes that are not supposed to be serialized. Check that all non-serializable fields are transient. Consider using static inner classes instead of non-static inner classes and anonymous classes."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 142
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    throw v0
.end method

.method writeProperties(Ljava/util/Properties;J)V
    .locals 6
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "dfltsFieldOff"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 262
    .local v0, "dflts":Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 263
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    .line 270
    :goto_0
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    .line 272
    .local v3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeInt(I)V

    .line 274
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeBoolean(Z)V

    .line 267
    invoke-direct {p0, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method writeSerializable(Ljava/lang/Object;Ljava/util/List;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p3, "fields"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "mtds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 304
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 306
    .local v2, "mtd":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 307
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curObj:Ljava/lang/Object;

    .line 308
    invoke-virtual {p3, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->fields(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 311
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 316
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 321
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    invoke-virtual {p3, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->fields(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFields(Ljava/lang/Object;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;)V

    goto :goto_1

    .line 323
    .end local v2    # "mtd":Ljava/lang/reflect/Method;
    :cond_1
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeShort(I)V

    .line 617
    return-void
.end method

.method writeShortArray([S)V
    .locals 1
    .param p1, "arr"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeShortArray([S)V

    .line 532
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->out:Lorg/apache/ignite/internal/util/io/GridDataOutput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeObject0(Ljava/lang/Object;)V

    .line 672
    return-void
.end method

.method writeUuid(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLong(J)V

    .line 249
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeLong(J)V

    .line 250
    return-void
.end method
